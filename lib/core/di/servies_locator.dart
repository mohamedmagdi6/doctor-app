import 'package:doctor_app/core/networking/api_manager.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiesLocator() {
  getIt.registerSingleton<ApiManager>(ApiManager());
}
