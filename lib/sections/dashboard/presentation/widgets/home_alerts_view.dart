import 'package:advice/core/constants/app_constants.dart';
import 'package:advice/core/utils/localization_utils.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HomeAlertsView extends StatefulWidget {
  const HomeAlertsView({
    super.key,
    required this.outerScrollController,
    required this.onViewAllPress,
  });

  final ScrollController outerScrollController;

  final VoidCallback onViewAllPress;

  @override
  State<HomeAlertsView> createState() => _HomeAlertsViewState();
}

class _HomeAlertsViewState extends State<HomeAlertsView>
    with SingleTickerProviderStateMixin {
  final ScrollController _innerScrollController = ScrollController();
  bool _innerScrollEnabled = false;

  late TabController tabController;
  var _activeTabIndex = 0;

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    tabController.addListener(() {
      setState(() {
        _activeTabIndex = tabController.index;
      });
    });

    widget.outerScrollController.addListener(() {
      if (widget.outerScrollController.position.atEdge &&
          widget.outerScrollController.position.pixels != 0) {
        setState(() {
          _innerScrollEnabled = true;
        });
      } else {
        setState(() {
          _innerScrollEnabled = false;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _innerScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 16.0,
            left: 16.0,
            right: 4,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                context.loc.alerts,
                style: theme.titleMedium,
              ),
              TextButton(
                  onPressed: widget.onViewAllPress,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0, right: 4),
                        child: Text(
                          "View All",
                          style: theme.titleMedium?.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      Icon(
                        FeatherIcons.chevronRight,
                        color: AppColors.primary,
                      )
                    ],
                  ))
            ],
          ),
        ),
        Container(
          height: 652,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: AppColors.contentColorWhite,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [kDefaultCardShadow],
          ),
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider();
            },
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: _buildAlertCard(
                  title: 'Landslide Alert',
                  description:
                      'There is a high risk of landslide in your area. Please take necessary precautions.',
                  riskLevel: 'High Risk',
                  riskColor: Colors.red,
                ),
              );
            },
            itemCount: 10,
          ),
        ),
        SizedBox(
          height: 120,
        )
      ],
    );
  }

  Widget _buildAlertCard({
    required String title,
    required String description,
    required String riskLevel,
    required Color riskColor,
  }) {
    final theme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: theme.titleMedium,
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: riskColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          riskLevel,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(description,  style: theme.bodyMedium,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
