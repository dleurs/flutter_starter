// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_starter/core/injection/module/network_module.dart' as _i9;
import 'package:flutter_starter/features/fruit/data/data_sources/fruit_api.dart' as _i4;
import 'package:flutter_starter/features/fruit/data/repository/fruit_repository_impl.dart' as _i6;
import 'package:flutter_starter/features/fruit/domain/repository_abstract/fruit_repository.dart' as _i5;
import 'package:flutter_starter/features/fruit/domain/usecases/get_fruit_usecase.dart' as _i7;
import 'package:flutter_starter/features/fruit/presentation/cubit/fruit_cubit.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final netWorkModule = _$NetWorkModule();
    gh.lazySingleton<_i3.Dio>(
      () => netWorkModule.getPrivateHttpClient(),
      instanceName: 'private-http-client',
    );
    gh.lazySingleton<_i3.Dio>(
      () => netWorkModule.getPublicHttpClient(),
      instanceName: 'public-http-client',
    );
    gh.lazySingleton<_i4.FruitApi>(() => _i4.FruitApi.create(gh<_i3.Dio>(instanceName: 'public-http-client')));
    gh.factory<_i5.FruitRepository>(() => _i6.FruitRepositoryImpl(gh<_i4.FruitApi>()));
    gh.factory<_i7.GetFruitUseCase>(() => _i7.GetFruitUseCase(gh<_i5.FruitRepository>()));
    gh.factory<_i8.FruitCubit>(() => _i8.FruitCubit(getFruitUseCase: gh<_i7.GetFruitUseCase>()));
    return this;
  }
}

class _$NetWorkModule extends _i9.NetWorkModule {}
