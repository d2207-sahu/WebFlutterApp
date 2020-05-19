import 'package:divyanshucompany/Screens/JoinUsPage.dart';
import 'package:divyanshucompany/Service/NavigationService.dart';
import 'package:get_it/get_it.dart';
import 'Screens/HomePage.dart';

GetIt locator = GetIt.instance;

void SetupLocator() {
  locator.registerLazySingleton(() => HomePage());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => JoinUsPage());
}
