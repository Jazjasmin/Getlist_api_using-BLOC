// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../bloc/activeblocstatus/activeblocstatus_bloc.dart' as _i5;
import '../bloc/news_list/news_list_bloc.dart' as _i8;
import '../repository/activeRepository.dart' as _i4;
import '../repository/newsRepository.dart' as _i7;
import '../service/activeService.dart' as _i3;
import '../service/newsService.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ActiveStatusService>(() => _i4.ActiveStatusRepository());
  gh.factory<_i5.ActiveblocstatusBloc>(
      () => _i5.ActiveblocstatusBloc(get<_i3.ActiveStatusService>()));
  gh.lazySingleton<_i6.NewsService>(() => _i7.NewsRepository());
  gh.factory<_i8.NewsListBloc>(() => _i8.NewsListBloc(get<_i6.NewsService>()));
  return get;
}
