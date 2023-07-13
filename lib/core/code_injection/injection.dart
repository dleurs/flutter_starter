import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_starter/core/code_injection/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();
