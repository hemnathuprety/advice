import 'dart:math';

import 'package:advice/core/components/custom_app_back_dart.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/sections/crops/bloc/crops_bloc.dart';
import 'package:advice/sections/crops/model/crop_detail.dart';
import 'package:advice/sections/crops/model/crop_threat.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class CropDetailsScreen extends StatefulWidget {
  final String cropId;
  const CropDetailsScreen({super.key, required this.cropId});

  @override
  State<CropDetailsScreen> createState() => _CropDetailsScreenState();
}

class _CropDetailsScreenState extends State<CropDetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  List<double> randomArray = List.generate(10, (_) => Random().nextDouble());

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) =>
          getIt<CropsBloc>()..add(CropsEvent.detail(widget.cropId)),
      child: Builder(builder: (context) {
        return Scaffold(
            appBar: CustomAppBackDart(
              showBack: true,
              title: "crop Detail",
            ),
            body: BlocBuilder<CropsBloc, CropsState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state.cropsDetail == null) {
                  return SizedBox();
                }
                var cropDetail = state.cropsDetail;
                var majorStages = state.majorSubStage;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              "https://np-moald-api.rimes.int/v1/agro/media/" +
                                  cropDetail!.image!,
                              width: 200,
                              height: 200,
                            ),
                          ),
                        ],
                      ),
                      Text(
                          cropDetail.remarks != null ? cropDetail.remarks : ""),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Growth Process',
                        style: TextStyle(
                          color: Color(0xFF3F3D3D),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 10,
                        runSpacing: 10,
                        children: majorStages!.entries!
                            .map((e) => Container(
                                  padding: const EdgeInsets.all(11),
                                  width: 180,
                                  height: 60,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        color: Color(0xFFE2E2E2),
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Stage ${e.key.id}',
                                            style: TextStyle(
                                              color: Color(0xFF363636),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            e.key.name!,
                                            style: TextStyle(
                                              color: Color(0xFF3E3E3E),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          )
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.green,
                                      ),
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Suggestions"),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(13),
                        margin: const EdgeInsets.all(13),
                        height: 85,
                        decoration: ShapeDecoration(
                          color: Color(0x595DB69A),
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFF71B29D)),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (BuildContext context) {
                                  return FractionallySizedBox(
                                    heightFactor: 0.8,
                                    child: SingleChildScrollView(
                                      child: Container(
                                        padding: EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SvgPicture.asset(
                                                      "assets/svg/drop.svg",
                                                      color: Colors.red,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      'Pest and Diseases',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF1C1C1C),
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                IconButton(
                                                  onPressed: () =>
                                                      Navigator.pop(context),
                                                  icon: Icon(Icons.close),
                                                )
                                              ],
                                            ),
                                            ...state.cropPestMap.entries
                                                .map((entry) {
                                              CropThreat majorCategory =
                                                  entry.key;
                                              List<PotentialPest>
                                                  subcategories = entry.value;
                                              return ExpansionTile(
                                                title: Text(majorCategory.name!,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                children:
                                                    subcategories.map((pest) {
                                                  return ListTile(
                                                    leading: pest.imageUrl !=
                                                            null
                                                        ? Image.network(
                                                            errorBuilder:
                                                                (context, error,
                                                                    stackTrace) {
                                                            return Image.asset(
                                                                "assets/images/crop_1.png");
                                                          },
                                                            width: 70,
                                                            pest.imageUrl ?? "")
                                                        : Image.asset(
                                                            "assets/images/crop_1.png"),
                                                    title: Text(pest.name!),
                                                    subtitle: Text(pest
                                                            .scientificName ??
                                                        'No Scientific Name'),
                                                    onTap: () {
                                                      // Show pest details
                                                      showDialog(
                                                        context: context,
                                                        builder: (context) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                pest.name!),
                                                            content: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Image.network(
                                                                    width: 50,
                                                                    height: 50,
                                                                    errorBuilder:
                                                                        (context,
                                                                            error,
                                                                            stackTrace) {
                                                                  return Image.asset(
                                                                      width:
                                                                          100,
                                                                      height:
                                                                          100,
                                                                      "assets/images/crop_1.png");
                                                                },
                                                                    pest.imageUrl ??
                                                                        ""),
                                                                Text(
                                                                    'Scientific Name: ${pest.scientificName ?? "N/A"}'),
                                                                SizedBox(
                                                                    height: 8),
                                                                Text(
                                                                    'Chemical Treatment: ${pest.chemicalTreatment}'),
                                                                SizedBox(
                                                                    height: 8),
                                                                Text(
                                                                    'Control Method: ${pest.controlMethod}'),
                                                              ],
                                                            ),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        context),
                                                                child: Text(
                                                                    'Close'),
                                                              )
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    },
                                                  );
                                                }).toList(),
                                              );
                                            }).toList(),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/drop.svg",
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Pest and Diseases',
                                              style: TextStyle(
                                                color: Color(0xFF1C1C1C),
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'See more',
                                              style: TextStyle(
                                                color: Color(0xFF09593F),
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                height: 0.12,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Lorem Ipsum has been the industry's standard dumm since the 1500s, when an unkn book.",
                                          style: TextStyle(
                                            color: Color(0xFF524D4D),
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(13),
                        margin: const EdgeInsets.all(13),
                        height: 85,
                        decoration: ShapeDecoration(
                          color: Color(0x595DB69A),
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFF71B29D)),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (BuildContext context) {
                                  return FractionallySizedBox(
                                    heightFactor: 0.8,
                                    child: SingleChildScrollView(
                                      child: Container(
                                        padding: EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SvgPicture.asset(
                                                      "assets/svg/drop.svg",
                                                      color: Colors.red,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      'management Practices',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF1C1C1C),
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            ...state.cropsDetail!
                                                .managementPractices!
                                                .map(
                                              (e) {
                                                return Card(
                                                  child: Container(
                                                    width: double.infinity,
                                                    padding:
                                                        EdgeInsets.all(16.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text('Name: ${e.name}'),
                                                        Text(
                                                            "Description: ${e.description}"),
                                                        Text(
                                                            "startDate: ${e.startDate}"),
                                                        Text(
                                                            "endDate: ${e.endDate}"),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).toList(),
                                            ElevatedButton(
                                              onPressed: () => Navigator.pop(
                                                  context), // Close the bottom sheet
                                              child: Text('Close'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/drop.svg",
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Management Practices',
                                              style: TextStyle(
                                                color: Color(0xFF1C1C1C),
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'See more',
                                              style: TextStyle(
                                                color: Color(0xFF09593F),
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                height: 0.12,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Lorem Ipsum has been the industry's standard dumm since the 1500s, when an unkn book.",
                                          style: TextStyle(
                                            color: Color(0xFF524D4D),
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                );
              },
            ));
      }),
    );
  }
}
