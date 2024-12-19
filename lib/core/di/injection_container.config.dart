// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../sections/advisory/presentation/blocs/advisory_list_bloc.dart'
    as _i259;
import '../../sections/advisory/repo/advisory_list_repo.dart' as _i123;
import '../../sections/auth/presentation/blocs/login_bloc.dart' as _i228;
import '../../sections/auth/repo/auth_repo.dart' as _i591;
import '../../sections/crops/bloc/crops_bloc.dart' as _i351;
import '../../sections/crops/repo/crops_list_repo.dart' as _i993;
import '../../sections/dashboard/presentation/blocs/dashboard_stats_bloc.dart'
    as _i64;
import '../../sections/dashboard/presentation/blocs/profile_bloc.dart' as _i380;
import '../../sections/dashboard/presentation/blocs/select_location_bloc.dart'
    as _i977;
import '../../sections/forecasts/bloc/weather_bloc.dart' as _i107;
import '../../sections/forecasts/repo/forecasts_repo.dart' as _i739;
import '../../sections/observations/blocs/observation_bloc.dart' as _i960;
import '../../sections/observations/blocs/observation_image_bloc.dart' as _i207;
import '../../sections/observations/repo/observation_repo.dart' as _i668;
import '../dio/dio_helper.dart' as _i676;
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
    gh.factory<_i380.ProfileBloc>(() => _i380.ProfileBloc());
    gh.factory<_i604.CustomDioInterceptor>(() => _i604.CustomDioInterceptor());
    gh.lazySingleton<_i676.DioHelper>(() => _i676.DioHelper());
    gh.factory<_i591.AuthRepo>(
        () => _i591.AuthRepo(dio: gh<_i676.DioHelper>()));
    gh.factory<_i993.CropslistRepo>(
        () => _i993.CropslistRepo(dio: gh<_i676.DioHelper>()));
    gh.factory<_i668.ObservationRepo>(
        () => _i668.ObservationRepo(dio: gh<_i676.DioHelper>()));
    gh.factory<_i739.ForecastsRepo>(
        () => _i739.ForecastsRepo(dio: gh<_i676.DioHelper>()));
    gh.factory<_i123.AdvisoryListRepo>(
        () => _i123.AdvisoryListRepo(dio: gh<_i676.DioHelper>()));
    gh.factory<_i351.CropsBloc>(
        () => _i351.CropsBloc(cropslistRepo: gh<_i993.CropslistRepo>()));
    gh.factory<_i64.DashboardStatsBloc>(() => _i64.DashboardStatsBloc(
          forecastsRepo: gh<_i739.ForecastsRepo>(),
          observationRepo: gh<_i668.ObservationRepo>(),
        ));
    gh.factory<_i207.ObservationImageBloc>(() => _i207.ObservationImageBloc(
        observationRepo: gh<_i668.ObservationRepo>()));
    gh.factory<_i977.SelectLocationBloc>(() =>
        _i977.SelectLocationBloc(observationRepo: gh<_i668.ObservationRepo>()));
    gh.factory<_i228.LoginBloc>(
        () => _i228.LoginBloc(authRepo: gh<_i591.AuthRepo>()));
    gh.factory<_i259.AdvisoryListBloc>(() =>
        _i259.AdvisoryListBloc(advisoryListRepo: gh<_i123.AdvisoryListRepo>()));
    gh.factory<_i107.WeatherBloc>(
        () => _i107.WeatherBloc(forecastsRepo: gh<_i739.ForecastsRepo>()));
    gh.factory<_i960.ObservationBloc>(() => _i960.ObservationBloc(
          observationRepo: gh<_i668.ObservationRepo>(),
          cropslistRepo: gh<_i993.CropslistRepo>(),
        ));
    return this;
  }
}
