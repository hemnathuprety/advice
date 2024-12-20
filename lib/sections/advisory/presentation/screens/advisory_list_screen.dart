import 'package:advice/core/components/custom_app_back_dart.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/core/utils/localization_utils.dart';
import 'package:advice/sections/advisory/models/advisory_model.dart';
import 'package:advice/sections/advisory/presentation/blocs/advisory_list_bloc.dart';
import 'package:advice/sections/dashboard/presentation/widgets/active_crop_advisory.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AdvisoryListScreen extends StatefulWidget {
  const AdvisoryListScreen({super.key});

  @override
  State<AdvisoryListScreen> createState() => _AdvisoryListScreenState();
}

class _AdvisoryListScreenState extends State<AdvisoryListScreen> {
  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener); //the listener for up and down.
    super.initState();
  }

  void _scrollListener() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      print('reach the bottom');
    }
    if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      print('reach the top');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) =>
          getIt<AdvisoryListBloc>()..add(AdvisoryListEvent.load( false)),
      child: Scaffold(
        appBar: CustomAppBackDart(
          title: context.loc.advisoryHistory,
          showBack: true,
        ),
        backgroundColor: AppColors.contentColorWhite,
        body: BlocBuilder<AdvisoryListBloc, AdvisoryListState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.separated(
              shrinkWrap: true,
              controller: _controller,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 16,
                ); // Adjust height for spacing between items
              },
              padding: EdgeInsets.only(
                right: 16.0,
                left: 16.0,
                top: 16.0,
                bottom: 48.0,
              ),
              itemBuilder: (context, index) {
                AdvisoryModel item = state.advisoryList[index];
                return AdvisoryItemBuilder(
                  data: item,
                  height: 180.0,
                  width: null,
                );
              },
              itemCount: state.advisoryList.length,
            );
          },
        ),
      ),
    );
  }
}
