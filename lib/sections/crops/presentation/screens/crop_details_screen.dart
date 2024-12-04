import 'dart:math';

import 'package:advice/core/components/custom_app_back_dart.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/sections/crops/bloc/crops_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              "https://np-moald-api.rimes.int/v1/agro/media/" +
                                  cropDetail!.image!,
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(cropDetail.remarks != null
                                    ? cropDetail.remarks
                                    : "")
                              ],
                            ),
                          ),
                        ],
                      ),
                      Card(
                        color: Colors.white,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(13.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Stages :',
                                style: TextStyle(
                                  color: Color(0xFF3F3D3D),
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Wrap(
                                spacing:
                                    18.0, // Space between chips horizontally
                                runSpacing:
                                    20.0, // Space between chips vertically
                                children: cropDetail.stages!.map<Widget>((tag) {
                                  return Container(
                                      height: 34,
                                      child: Text(tag.name!),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 8),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFE3E3E3),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                      ));
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        color: Colors.white,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(13.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Varities :',
                                style: TextStyle(
                                  color: Color(0xFF3F3D3D),
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Wrap(
                                spacing:
                                    18.0, // Space between chips horizontally
                                runSpacing:
                                    20.0, // Space between chips vertically
                                children:
                                    cropDetail.varieties!.map<Widget>((tag) {
                                  return Container(
                                      height: 34,
                                      child: Text(tag.name!),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 8),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFE3E3E3),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                      ));
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        color: Colors.white,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(13.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Management Practices :',
                                style: TextStyle(
                                  color: Color(0xFF3F3D3D),
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Wrap(
                                spacing:
                                    18.0, // Space between chips horizontally
                                runSpacing:
                                    20.0, // Space between chips vertically
                                children: cropDetail.managementPractices!
                                    .map<Widget>((tag) {
                                  return Container(
                                      height: 34,
                                      child: Text(tag.name!),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 8),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFE3E3E3),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                      ));
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ));
      }),
    );
  }
}
