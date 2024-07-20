// GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:network_example/details/details_screen.dart';
import 'package:network_example/splash/splash_screen.dart';

import '../core/users/users_screen.dart';
import '../home/home_screen.dart';

final class MyRouteManager {
  MyRouteManager._();

  ///[ _router] degiskenini elde etmek icin getter yazdim
  static get router => _router;

  /// [GoRouter] tipinde bir degisken tanimladim ve  routes listesini olusturdum.Simdilik bir tane yaptim
  /// Birden fazla da yapabilirim
  /// [GoRoute] tipinde bir degisken tanimladim ve path ve builder fonksiyonunu belirttim.Bunu static yaptim
  /// main icinden cagircam bunu
  static final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        //path: '/',   /// Bu path baslangici temsil eder. Pathleri de enumda tutmakta fayda var.Asagidaki gibi
        path: RoutePaths.initial.path,
        builder: (context, state) => HomeScreen(),
      ),

      /// Ikinci route'u ekleddigimizdde buraya bir satir daha eklememiz yeterli olacaktir
      GoRoute(
        // path: '/details',
        path: RoutePaths.deatils.path,
        builder: (context, state) => const DetailsScreen(),
        // pageBuilder: (context, state) =>const DetailsScreen()
      ),

      GoRoute(
          path: '/users/:userId',
          builder: (context, state) {
            final userId = state.pathParameters['userId'];
            return UserScreen(userId: state.pathParameters['userId']!);

            /// Peki buraya nasil parametre gonderirim? Bu sekilde gonderirim
            /// Diyelim ki butonun icindeyim nasil gitccem bu ekrana?
            /// PUSH YAPARAK GITME. Bu sekilde olunca stack gibi calisiyor
            /// Eskinin ustune koyuyor.Yani geri butonuna basildiginda bir onceki sayfaya donuyor
            /// context.push("${RoutePaths.users.path}/123rrrr}");
            /// GO YAPARAK GITME. Bu sekilde olunca stack gibi calismiyor
            /// Stackden onu alip bunu koyuyor yerine. Geri tusuna basinca geri gelmiyor
          },

          /// Burasi child routes olarak bilinir. Bu sayede bir sayfa icinde birden fazla sayfa acabilirim
          routes: []),
    ],
  );

  /// Simdi bunu Main.dart dosyamda kullanabilirim
}

/// Routing yaparken parametre nasil gonderilir?
/// Parametre gondermek icin path'ten sonra { : } bu karakter
/// kullanilir ve parametre icin bir unique name yazilir
/// Ornek: path: '/users/:userId', Noramlde path: '/users' olurdu
/// Komple ornek boyle olacak
/// GoRoute(
//   path: '/users/:userId',
//   builder: (context, state) => const UserScreen(id: state.pathParameters['userId']),
// ),

/// ENUMS FOR PATH
enum RoutePaths {
  initial('/'),

  /// Bu isaret initial route'u belirtir.
  deatils('/details'),
  users('/users'),
  userDetail('/user-detail'),
  login('/login'),
  register('/register'),
  ;

  const RoutePaths(this.path);

  final String path;
}
