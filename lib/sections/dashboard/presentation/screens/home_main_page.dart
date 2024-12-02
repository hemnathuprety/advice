import 'package:advice/core/components/floating_menu_button.dart';
import 'package:advice/core/components/location_selection.dart';
import 'package:advice/sections/dashboard/presentation/blocs/dashboard_stats_bloc.dart';
import 'package:advice/sections/dashboard/presentation/widgets/crop_guide_widget.dart';
import 'package:advice/sections/dashboard/presentation/widgets/home_alerts_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeStatsView extends StatefulWidget {
  const HomeStatsView({
    super.key,
    required this.onMenuPress,
    required this.onMapPress,
    required this.onViewAllPress,
  });

  final VoidCallback onMenuPress;
  final VoidCallback onMapPress;
  final VoidCallback onViewAllPress;

  @override
  State<HomeStatsView> createState() => _HomeStatsViewState();
}

class _HomeStatsViewState extends State<HomeStatsView> {
  final GlobalKey<State<StatefulWidget>> _sheet = GlobalKey();
  final DraggableScrollableController _controller =
      DraggableScrollableController();

  final ScrollController _outerScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onChanged);
  }

  void _onChanged() {
    final currentSize = _controller.size;
    if (currentSize <= 0.5) _collapse();
  }

  void _collapse() => _animateSheet(sheet.snapSizes?.first ?? 0);

  void _animateSheet(double size) {
    _controller.animateTo(
      size,
      duration: const Duration(milliseconds: 50),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _outerScrollController.dispose();
    _controller.dispose();
  }

  DraggableScrollableSheet get sheet =>
      (_sheet.currentWidget as DraggableScrollableSheet);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DashboardStatsBloc, DashboardStatsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
          ),
          body: CustomScrollView(
            controller: _outerScrollController,
            slivers: [
              SliverAppBar(
                primary: true,
                pinned: false,
                centerTitle: true,
                toolbarHeight: 80,
                backgroundColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                automaticallyImplyLeading: false,
                flexibleSpace: Column(
                  children: [
                    HomeTopMenuButton(
                      onMenuClick: widget.onMenuPress,
                      selectedIndex: 1,
                      menuShowingStatus: false,
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: LocationSelection(),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CropGuideWidget(),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              SliverList.list(
                children: [
                  HomeAlertsView(
                    outerScrollController: _outerScrollController,
                    onViewAllPress: widget.onViewAllPress,
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
