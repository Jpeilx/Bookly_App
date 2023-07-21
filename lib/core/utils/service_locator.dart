import 'package:bookly/features/home/data/repository/home_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpServiceLocator(){
  getIt.registerSingleton<HomeRebo>(HomeRebo());
}