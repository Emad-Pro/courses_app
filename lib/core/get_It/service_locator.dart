import 'package:get_it/get_it.dart';

import '../../app/main/layouts/home_layout/presentation/controller/home_cubit.dart';

final getIt = GetIt.instance;

class ServiceLacator {
  void init() {
    getIt.registerLazySingleton(() => HomeCubit());

    /*  getIt.registerFactory(() => LanguageCacheHelper());

    
    getIt.registerSingleton<LoginRepository>(LoginRepositoryImp());
    getIt.registerSingleton<SignUpRepository>(SignUpRepositoryImp());
    getIt.registerSingleton<MainBooksRepo>(MainBooksRepoImp());
    getIt.registerSingleton<AuthorRepo>(AuthorRepoImp());
    getIt.registerSingleton<BooksRepo>(BooksRepoImp());*/
  }
}
