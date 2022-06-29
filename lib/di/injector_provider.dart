import 'package:get_it/get_it.dart';
import 'package:poomsae_scoring/data/api/judges_api.dart';

/// To organize common access to file you need to
/// register the file in the "injector" by an appropriate method.

final GetIt injector = GetIt.I;

Future<void> setupInjection() async {
  //api
  injector.registerLazySingleton(() => JudgesApi());

  await injector.allReady();
}

/// Returns a registered injection with a type T.
/// If injector not found a such injection then a null returned.
dynamic getInjectionByType<T extends Object>() {
  try {
    return injector<T>();
  } catch (_) {
    // injector can not find a injection with type T

    return null;
  }
}
