import 'dart:async';
import 'dart:io';

import 'package:advice/core/components/custom_app_back_dart.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';

@RoutePage()
class PdfViewScreen extends StatefulWidget {
  final String path;

  const PdfViewScreen({
    super.key,
    required this.path,
  });

  @override
  State<PdfViewScreen> createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PdfViewScreen> with WidgetsBindingObserver {
  final Completer<PDFViewController> _controller =
      Completer<PDFViewController>();
  int? pages = 0;
  int? currentPage = 0;
  bool isReady = false;
  bool isLoading = false;
  String errorMessage = '';

  String pathPDF = "";
  String landscapePathPdf = "";
  String remotePDFpath = "";
  String corruptedPathPDF = "";

  @override
  void initState() {
    super.initState();
    setState(() {
      isLoading = true;
    });
    createFileOfPdfUrl().then((f) {
      setState(() {
        isLoading = false;
        remotePDFpath = f.path;
      });
    });
  }

  Future<File> createFileOfPdfUrl() async {
    Completer<File> completer = Completer();
    if (kDebugMode) {
      print("Start download file from internet!");
    }
    try {
      final url = "http://www.pdf995.com/samples/pdf.pdf";
      final filename = url.substring(url.lastIndexOf("/") + 1);
      var request = await HttpClient().getUrl(Uri.parse(url));
      var response = await request.close();
      var bytes = await consolidateHttpClientResponseBytes(response);
      var dir = await getApplicationDocumentsDirectory();

      if (kDebugMode) {
        print("Download files");
      }
      if (kDebugMode) {
        print("${dir.path}/$filename");
      }

      File file = File("${dir.path}/$filename");

      await file.writeAsBytes(bytes, flush: true);
      completer.complete(file);
    } catch (e) {
      throw Exception('Error parsing asset file!');
    }

    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBackDart(
        title: "PDF",
        showBack: true,
      ),
      body: Stack(
        children: <Widget>[
          isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : PDFView(
                  filePath: remotePDFpath,
                  enableSwipe: true,
                  swipeHorizontal: false,
                  autoSpacing: false,
                  pageFling: true,
                  pageSnap: true,
                  defaultPage: currentPage!,
                  fitPolicy: FitPolicy.BOTH,
                  preventLinkNavigation: false,
                  // if set to true the link is handled in flutter
                  backgroundColor: Colors.black,
                  onRender: (_pages) {
                    setState(() {
                      pages = _pages;
                      isReady = true;
                    });
                  },
                  onError: (error) {
                    setState(() {
                      errorMessage = error.toString();
                    });
                    print(error.toString());
                  },
                  onPageError: (page, error) {
                    setState(() {
                      errorMessage = '$page: ${error.toString()}';
                    });
                    print('$page: ${error.toString()}');
                  },
                  onViewCreated: (PDFViewController pdfViewController) {
                    _controller.complete(pdfViewController);
                  },
                  onLinkHandler: (String? uri) {
                    print('goto uri: $uri');
                  },
                  onPageChanged: (int? page, int? total) {
                    print('page change: $page/$total');
                    setState(() {
                      currentPage = page;
                    });
                  },
                ),
          errorMessage.isEmpty
              ? !isReady
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Container()
              : Center(
                  child: Text(errorMessage),
                )
        ],
      ),
      /*floatingActionButton: FutureBuilder<PDFViewController>(
        future: _controller.future,
        builder: (context, AsyncSnapshot<PDFViewController> snapshot) {
          if (snapshot.hasData) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton.extended(
                      label: Text(
                        "Previous",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: AppColors.primary,
                      onPressed: () async {
                        snapshot.data!.getCurrentPage().then((value) async {
                          await snapshot.data!.setPage(value! - 1);
                        });
                      },
                    ),
                    FloatingActionButton.extended(
                      label: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: AppColors.primary,
                      onPressed: () async {
                        snapshot.data!.getCurrentPage().then((value) async {
                          await snapshot.data!.setPage(value! + 1);
                        });
                      },
                    ),
                  ],
                ),
              ),
            );
          }

          return Container();
        },
      ),*/
    );
  }
}
