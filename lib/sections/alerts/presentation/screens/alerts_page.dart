import 'package:auto_route/auto_route.dart';
import 'package:advice/core/components/sliver_app_bar_delegate.dart';
import 'package:advice/core/utils/localization_utils.dart';
import 'package:advice/sections/dashboard/presentation/widgets/tab_item_widget.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class AlertsPage extends StatefulWidget {
  const AlertsPage({super.key});

  @override
  State<AlertsPage> createState() => _AlertsPageState();
}

class _AlertsPageState extends State<AlertsPage> {
  int _activeTabIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      backgroundColor: AppColors.contentColorWhite,
      body: DefaultTabController(
        length: 5,
        child: CustomScrollView(
          controller: ScrollController(),
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: SliverAppBarDelegate(
                minHeight: 64.0,
                maxHeight: 64.0,
                child: Container(
                  color: Theme.of(context).canvasColor,
                  child: TabBar(
                    onTap: (index) {
                      setState(() {
                        _activeTabIndex = index; // Track the active tab index
                      });
                    },
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    indicatorColor: AppColors.primary,
                    tabs: [
                      TabItemWidget(
                          title: context.loc.roadClosure,
                          selected: _activeTabIndex == 0,
                          svgPath: "assets/svg/alarm.svg"),
                      TabItemWidget(
                          title: context.loc.bridgeClosure,
                          selected: _activeTabIndex == 1,
                          svgPath: "assets/svg/sun.svg"),
                      TabItemWidget(
                          title: context.loc.flashFlood,
                          selected: _activeTabIndex == 2,
                          svgPath: "assets/svg/cloud-sunny.svg"),
                      TabItemWidget(
                          title: context.loc.rainfall,
                          selected: _activeTabIndex == 3,
                          svgPath: "assets/svg/cloud-drizzle.svg"),
                      TabItemWidget(
                          title: context.loc.recentlyOpenedRoads,
                          selected: _activeTabIndex == 4,
                          svgPath: "assets/svg/notification.svg"),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(4),
                    border: Border(
                        left: BorderSide(width: 3, color: Color(0xFFCC2626))),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeader(),
                      const SizedBox(height: 10),
                      _buildDescription(),
                      const SizedBox(height: 10),
                      _buildActions(),
                    ],
                  ),
                ),
                childCount: 11, // Adjust to the number of items you want
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverAppBarDelegate(
                minHeight: 120.0,
                maxHeight: 120.0,
                child: SizedBox(height: 120,)
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Flood On Kathmandu',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        Row(
          children: [
            SvgPicture.asset("assets/svg/calendar.svg"),
            const SizedBox(width: 5),
            Text(
              '2021-07-30',
              style: TextStyle(
                  color: Color(0xFF6C6A6A),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDescription() {
    return Text(
      "kasdlkasj dasd asdsadklajskl djaskljddsadas  sadas das sad ask asdaksljdkl asjdkla",
      style: TextStyle(
        color: Color(0xFF594F4F),
        fontSize: 12,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _buildActions() {
    return Row(
      children: [
        _buildActionButton(
          label: 'Go To Response',
          color: Color(0xFFC40C0C),
          borderColor: Color(0xFFEF6060),
        ),
        const SizedBox(width: 10),
        _buildActionButton(
          label: 'Send Feedback',
          color: Color(0xFF252323),
          borderColor: Color(0xFFA7A7A7),
          icon: SvgPicture.asset("assets/svg/sms.svg"),
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required String label,
    required Color color,
    required Color borderColor,
    Widget? icon,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: borderColor),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            icon,
            const SizedBox(width: 5),
          ],
          Text(
            label,
            style: TextStyle(
                color: color, fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
