import 'dart:math';

import 'package:advice/core/components/custom_app_back_dart.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/core/route/route_router.gr.dart';
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

  const CropDetailsScreen({Key? key, required this.cropId}) : super(key: key);

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
    return BlocProvider(
      create: (context) =>
          getIt<CropsBloc>()..add(CropsEvent.detail(widget.cropId)),
      child: Scaffold(
        appBar: CustomAppBackDart(
          showBack: true,
          title: "Crop Details",
        ),
        body: BlocBuilder<CropsBloc, CropsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.cropsDetail == null) {
              return const Center(child: Text("No data available."));
            }

            final cropDetail = state.cropsDetail!;
            final majorStages = state.majorSubStage ?? {};

            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Crop Image
                  Center(
                    child: Image.network(
                      "https://np-moald-api.rimes.int/v1/agro/media/${cropDetail.image!}",
                      fit: BoxFit.fitWidth,
                      width: MediaQuery.of(context).size.width - 50,
                      height: 200,
                      errorBuilder: (_, __, ___) => Image.asset(
                        "assets/images/crop_placeholder.png",
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width - 50,
                        height: 200,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Crop Remarks
                  if (cropDetail.remarks != null)
                    Text(
                      cropDetail.remarks!,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  const SizedBox(height: 16),

                  // Growth Process Section
                  SectionHeader(title: "Growth Process"),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 10,
                    runSpacing: 10,
                    children: majorStages.entries.map((e) {
                      return GrowthProcessTile(
                        stageId: e.key.id!.toString(),
                        stageName: e.key.name!,
                        onTap: () {
                          context.navigateTo(
                            StageDetailRoute(
                                majorStage: e.key,
                                stages: e.value,
                                cropThreats: state.cropsThreats),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 20),

                  // Suggestions Section
                  SectionHeader(title: "Suggestions"),
                  SuggestionTile(
                    title: "Pest and Diseases",
                    description:
                        "Lorem Ipsum has been the industry's standard dummy text since the 1500s.",
                    onTap: () => _showPestDetails(context, state),
                  ),
                  SuggestionTile(
                    title: "Management Practices",
                    description:
                        "Lorem Ipsum has been the industry's standard dummy text since the 1500s.",
                    onTap: () => _showManagementPractices(context, state),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _showPestDetails(BuildContext context, CropsState state) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return PestDetailsSheet(cropPestMap: state.cropPestMap);
      },
    );
  }

  void _showManagementPractices(BuildContext context, CropsState state) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return ManagementPracticesSheet(
          practices: state.cropsDetail?.managementPractices ?? [],
        );
      },
    );
  }
}

// Widgets for better reusability
class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF3F3D3D),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class GrowthProcessTile extends StatelessWidget {
  final String stageId;
  final String stageName;
  final VoidCallback onTap;

  const GrowthProcessTile({
    Key? key,
    required this.stageId,
    required this.stageName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(11),
        width: MediaQuery.of(context).size.width / 2 - 30,
        height: 70,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xFFE2E2E2), width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Stage $stageId",
              style: const TextStyle(
                color: Color(0xFF363636),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              stageName,
              style: const TextStyle(
                color: Color(0xFF3E3E3E),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuggestionTile extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onTap;

  const SuggestionTile({
    Key? key,
    required this.title,
    required this.description,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(13),
        margin: const EdgeInsets.only(bottom: 10),
        height: 85,
        decoration: ShapeDecoration(
          color: const Color(0x595DB69A),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xFF71B29D), width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset("assets/svg/drop.svg", color: Colors.red),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Color(0xFF524D4D),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PestDetailsSheet extends StatelessWidget {
  final Map<CropThreat, List<PotentialPest>> cropPestMap;

  const PestDetailsSheet({Key? key, required this.cropPestMap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.8,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Pest and Diseases",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Expandable List of Pests
            ...cropPestMap.entries.map((entry) {
              final majorCategory = entry.key;
              final subcategories = entry.value;

              return ExpansionTile(
                title: Text(
                  majorCategory.name!,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                children: subcategories.map((pest) {
                  return ListTile(
                    leading: pest.imageUrl != null
                        ? Image.network(
                            pest.imageUrl!.toFullImageUrl(),
                            width: 50,
                            height: 50,
                            errorBuilder: (context, error, stackTrace) {
                              return Image.asset(
                                "assets/images/crop_1.png",
                                width: 50,
                                height: 50,
                              );
                            },
                          )
                        : Image.asset(
                            "assets/images/crop_1.png",
                            width: 50,
                            height: 50,
                          ),
                    title: Text(pest.name!),
                    subtitle: Text(
                      pest.scientificName ?? "No Scientific Name",
                      style: const TextStyle(fontSize: 12),
                    ),
                    onTap: () {
                      _showPestDetailsDialog(context, pest);
                    },
                  );
                }).toList(),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  void _showPestDetailsDialog(BuildContext context, PotentialPest pest) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(pest.name!),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              pest.imageUrl != null
                  ? Image.network(
                      pest.imageUrl!.toFullImageUrl(),
                      width: 100,
                      height: 100,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          "assets/images/crop_1.png",
                          width: 100,
                          height: 100,
                        );
                      },
                    )
                  : Image.asset(
                      "assets/images/crop_1.png",
                      width: 100,
                      height: 100,
                    ),
              const SizedBox(height: 10),
              Text("Scientific Name: ${pest.scientificName ?? "N/A"}"),
              const SizedBox(height: 8),
              Text("Chemical Treatment: ${pest.chemicalTreatment}"),
              const SizedBox(height: 8),
              Text("Control Method: ${pest.controlMethod}"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }
}

class ManagementPracticesSheet extends StatelessWidget {
  final List<ManagementPractice> practices;

  const ManagementPracticesSheet({Key? key, required this.practices})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.8,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Management Practices",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Management Practices List
            ...practices.map((practice) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name: ${practice.name}",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Description: ${practice.description}",
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
