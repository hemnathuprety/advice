// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../sections/advisory/data/datasources/advisory_data_source.dart'
    as _i896;
import '../../sections/advisory/data/repositories/advisory_repo_impl.dart'
    as _i612;
import '../../sections/advisory/domain/repositories/advisory_repo.dart'
    as _i841;
import '../../sections/advisory/domain/usecases/districts_usecase.dart'
    as _i146;
import '../../sections/advisory/domain/usecases/divisions_usecase.dart' as _i15;
import '../../sections/advisory/domain/usecases/post_advisory_usecase.dart'
    as _i973;
import '../../sections/advisory/domain/usecases/roads_division_usecase.dart'
    as _i312;
import '../../sections/advisory/domain/usecases/upload_advisory_images_usecase.dart'
    as _i362;
import '../../sections/advisory/presentation/blocs/add_advisories_bloc.dart'
    as _i1026;
import '../../sections/alerts/data/datasources/alert_data_source.dart' as _i799;
import '../../sections/alerts/data/repositories/alerts_repo_impl.dart' as _i174;
import '../../sections/alerts/domain/repositories/alerts_repo.dart' as _i926;
import '../../sections/alerts/domain/usecases/alerts_usecase.dart' as _i125;
import '../../sections/auth/data/datasources/login_data_source.dart' as _i667;
import '../../sections/auth/data/datasources/user_profile_data_source.dart'
    as _i750;
import '../../sections/auth/data/repositories/login_repo_impl.dart' as _i483;
import '../../sections/auth/data/repositories/user_profile_repo_impl.dart'
    as _i1038;
import '../../sections/auth/domain/repositories/login_repo.dart' as _i1042;
import '../../sections/auth/domain/repositories/user_profile_repo.dart'
    as _i715;
import '../../sections/auth/domain/usecases/login_usecase.dart' as _i1064;
import '../../sections/auth/domain/usecases/logout_usecase.dart' as _i883;
import '../../sections/auth/domain/usecases/user_profile_usecase.dart'
    as _i1030;
import '../../sections/auth/presentation/blocs/login_bloc.dart' as _i228;
import '../../sections/bridge-closure/data/datasources/bridge_closer_data_source.dart'
    as _i709;
import '../../sections/bridge-closure/data/repositories/bridge_closer_repo_impl.dart'
    as _i331;
import '../../sections/bridge-closure/domain/repositories/bridge_closer_repo.dart'
    as _i1062;
import '../../sections/bridge-closure/domain/usecases/bridge_closer_history_paginated_usecase.dart'
    as _i174;
import '../../sections/bridge-closure/domain/usecases/bridge_closer_history_usecase.dart'
    as _i1062;
import '../../sections/bridge-closure/domain/usecases/bridge_closer_usecase.dart'
    as _i1061;
import '../../sections/bridge-closure/presentation/blocs/bridge_closer_history_bloc.dart'
    as _i323;
import '../../sections/bridge-closure/presentation/blocs/bridge_closer_stats_bloc.dart'
    as _i627;
import '../../sections/dashboard/data/datasources/dashboard_data_source.dart'
    as _i214;
import '../../sections/dashboard/data/repositories/dashboard_repo_impl.dart'
    as _i695;
import '../../sections/dashboard/domain/repositories/dashboard_repo.dart'
    as _i463;
import '../../sections/dashboard/domain/usecases/dashboard_usecase.dart'
    as _i146;
import '../../sections/dashboard/presentation/blocs/dashboard_stats_bloc.dart'
    as _i64;
import '../../sections/dashboard/presentation/blocs/profile_bloc.dart' as _i380;
import '../../sections/road-closure/data/datasources/road_closer_data_source.dart'
    as _i453;
import '../../sections/road-closure/data/repositories/road_closer_repo_impl.dart'
    as _i232;
import '../../sections/road-closure/domain/repositories/road_closer_repo.dart'
    as _i3;
import '../../sections/road-closure/domain/usecases/road_closer_history_paginated_usecase.dart'
    as _i528;
import '../../sections/road-closure/domain/usecases/road_closer_history_usecase.dart'
    as _i404;
import '../../sections/road-closure/domain/usecases/road_closer_usecase.dart'
    as _i98;
import '../../sections/road-closure/presentation/blocs/road_closer_history_bloc.dart'
    as _i918;
import '../../sections/road-closure/presentation/blocs/road_closer_stats_bloc.dart'
    as _i24;
import '../dio/dio_client.dart' as _i191;
import '../dio/dio_interceptors.dart' as _i604;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i604.CustomDioInterceptor>(() => _i604.CustomDioInterceptor());
    gh.factory<_i191.DioClient>(() => _i191.DioClient());
    gh.lazySingleton<_i667.LoginDataSource>(() => _i667.LoginDataSourceImpl());
    gh.lazySingleton<_i214.DashboardDataSource>(
        () => _i214.DashboardDataSourceImpl());
    gh.lazySingleton<_i453.RoadCloserDataSource>(
        () => _i453.RoadCloserDataSourceImpl());
    gh.lazySingleton<_i750.UserProfileDataSource>(
        () => _i750.UserProfileDataSourceImpl());
    gh.lazySingleton<_i896.AdvisoryDataSource>(
        () => _i896.AdvisoryDataSourceImpl());
    gh.lazySingleton<_i799.AlertDataSource>(() => _i799.AlertDataSourceImpl());
    gh.lazySingleton<_i709.BridgeCloserDataSource>(
        () => _i709.BridgeCloserDataSourceImpl());
    gh.lazySingleton<_i715.UserProfileRepo>(() => _i1038.UserProfileRepoImpl(
        userDataSource: gh<_i750.UserProfileDataSource>()));
    gh.lazySingleton<_i1062.BridgeCloserRepo>(() => _i331.BridgeCloserRepoImpl(
        bridgeCloserDataSource: gh<_i709.BridgeCloserDataSource>()));
    gh.lazySingleton<_i1042.LoginRepo>(() =>
        _i483.LoginRepoImpl(loginDataSource: gh<_i667.LoginDataSource>()));
    gh.lazySingleton<_i841.AdvisoryRepo>(() => _i612.AdvisoryRepoImpl(
        advisoryDataSource: gh<_i896.AdvisoryDataSource>()));
    gh.lazySingleton<_i1064.LoginUseCase>(
        () => _i1064.LoginUseCase(loginRepo: gh<_i1042.LoginRepo>()));
    gh.factory<_i228.LoginBloc>(
        () => _i228.LoginBloc(loginUseCase: gh<_i1064.LoginUseCase>()));
    gh.lazySingleton<_i3.RoadCloserRepo>(() => _i232.RoadCloserRepoImpl(
        roadCloserDataSource: gh<_i453.RoadCloserDataSource>()));
    gh.lazySingleton<_i463.DashboardRepo>(() => _i695.DashboardRepoImpl(
          dashboardDataSource: gh<_i214.DashboardDataSource>(),
          roadCloserDataSource: gh<_i453.RoadCloserDataSource>(),
          bridgeCloserDataSource: gh<_i709.BridgeCloserDataSource>(),
        ));
    gh.lazySingleton<_i146.DashboardUsecase>(
        () => _i146.DashboardUsecase(dashboardRepo: gh<_i463.DashboardRepo>()));
    gh.lazySingleton<_i98.RoadCloserUsecase>(
        () => _i98.RoadCloserUsecase(roadCloserRepo: gh<_i3.RoadCloserRepo>()));
    gh.lazySingleton<_i528.RoadCloserHistoryPaginatedUsecase>(() =>
        _i528.RoadCloserHistoryPaginatedUsecase(
            roadCloserRepo: gh<_i3.RoadCloserRepo>()));
    gh.lazySingleton<_i404.RoadCloserHistoryUsecase>(() =>
        _i404.RoadCloserHistoryUsecase(
            roadCloserRepo: gh<_i3.RoadCloserRepo>()));
    gh.factory<_i918.RoadCloserHistoryBloc>(() => _i918.RoadCloserHistoryBloc(
          roadCloserUsecase: gh<_i528.RoadCloserHistoryPaginatedUsecase>(),
          roadCloserHistoryUsecase: gh<_i404.RoadCloserHistoryUsecase>(),
        ));
    gh.lazySingleton<_i312.RoadsDivisionUsecase>(() =>
        _i312.RoadsDivisionUsecase(roadCloserRepo: gh<_i841.AdvisoryRepo>()));
    gh.lazySingleton<_i362.UploadAdvisoryImagesUsecase>(() =>
        _i362.UploadAdvisoryImagesUsecase(
            roadCloserRepo: gh<_i841.AdvisoryRepo>()));
    gh.lazySingleton<_i973.PostAdvisoryUsecase>(() =>
        _i973.PostAdvisoryUsecase(roadCloserRepo: gh<_i841.AdvisoryRepo>()));
    gh.lazySingleton<_i15.DivisionsUsecase>(
        () => _i15.DivisionsUsecase(roadCloserRepo: gh<_i841.AdvisoryRepo>()));
    gh.lazySingleton<_i146.DistrictsUsecase>(
        () => _i146.DistrictsUsecase(roadCloserRepo: gh<_i841.AdvisoryRepo>()));
    gh.factory<_i64.DashboardStatsBloc>(() => _i64.DashboardStatsBloc(
        dashboardUsecase: gh<_i146.DashboardUsecase>()));
    gh.lazySingleton<_i926.AlertsRepo>(() => _i174.AlertsRepoImpl(
          alertDataSource: gh<_i799.AlertDataSource>(),
          dashboardDataSource: gh<_i214.DashboardDataSource>(),
          roadCloserDataSource: gh<_i453.RoadCloserDataSource>(),
          bridgeCloserDataSource: gh<_i709.BridgeCloserDataSource>(),
        ));
    gh.lazySingleton<_i883.LogoutUseCase>(() =>
        _i883.LogoutUseCase(userProfileRepo: gh<_i715.UserProfileRepo>()));
    gh.lazySingleton<_i1030.UserProfileUseCase>(() => _i1030.UserProfileUseCase(
        userProfileRepo: gh<_i715.UserProfileRepo>()));
    gh.lazySingleton<_i1061.BridgeCloserUsecase>(() =>
        _i1061.BridgeCloserUsecase(
            bridgeCloserRepo: gh<_i1062.BridgeCloserRepo>()));
    gh.lazySingleton<_i1062.BridgeCloserHistoryUsecase>(() =>
        _i1062.BridgeCloserHistoryUsecase(
            bridgeCloserRepo: gh<_i1062.BridgeCloserRepo>()));
    gh.lazySingleton<_i174.BridgeCloserHistoryPaginatedUsecase>(() =>
        _i174.BridgeCloserHistoryPaginatedUsecase(
            bridgeCloserRepo: gh<_i1062.BridgeCloserRepo>()));
    gh.factory<_i24.RoadCloserStatsBloc>(() => _i24.RoadCloserStatsBloc(
        roadCloserUsecase: gh<_i98.RoadCloserUsecase>()));
    gh.factory<_i380.ProfileBloc>(() => _i380.ProfileBloc(
          profileUseCase: gh<_i1030.UserProfileUseCase>(),
          logoutUseCase: gh<_i883.LogoutUseCase>(),
        ));
    gh.lazySingleton<_i125.AlertsUsecase>(
        () => _i125.AlertsUsecase(alertsRepo: gh<_i926.AlertsRepo>()));
    gh.factory<_i1026.AddAdvisoriesBloc>(() => _i1026.AddAdvisoriesBloc(
          districtsUsecase: gh<_i146.DistrictsUsecase>(),
          divisionsUsecase: gh<_i15.DivisionsUsecase>(),
          roadsDivisionUsecase: gh<_i312.RoadsDivisionUsecase>(),
          postAdvisoryUsecase: gh<_i973.PostAdvisoryUsecase>(),
          uploadAdvisoryImagesUsecase: gh<_i362.UploadAdvisoryImagesUsecase>(),
        ));
    gh.factory<_i323.BridgeCloserHistoryBloc>(() =>
        _i323.BridgeCloserHistoryBloc(
          bridgeCloserHistoryPaginatedUsecase:
              gh<_i174.BridgeCloserHistoryPaginatedUsecase>(),
          bridgeCloserHistoryUsecase: gh<_i1062.BridgeCloserHistoryUsecase>(),
        ));
    gh.factory<_i627.BridgeCloserStatsBloc>(() => _i627.BridgeCloserStatsBloc(
        bridgeCloserUsecase: gh<_i1061.BridgeCloserUsecase>()));
    return this;
  }
}
