// import 'package:go_router/go_router.dart';
//
//
// /// [RouterManager] sınıfı, uygulama içerisinde kullanılacak olan sayfa yollarını içerir.
// /// Bu sınıf, GoRouter paketi içerisinde kullanılacak olan sayfa builder'ları içerir.
// /// Bu sayede uygulama içerisinde kullanılacak olan sayfa builder'ları tek bir yerde toplanmış olur.
// final class RouterManager {
//   RouterManager._();
//
//   /// [routes] getter metodu, uygulama içerisinde kullanılacak olan sayfa builder'ları döndürür.
//   static GoRouter get routes => _routes;
//
//   /// [_routes] değişkeni, uygulama içerisinde kullanılacak olan sayfa builder'ları içerir.
//   /// Bu değişken, [GoRouter] tipinde bir nesnedir.
//   /// private olarak tanımlandığı için, bu değişken sadece bu sınıf içerisinde kullanılabilir.
//   static final _routes = GoRouter(
//     routes: [
//       GoRoute(
//         /// [path] parametresi, sayfa yolu içerir.
//         /// enum olarak kullanılmasının sebebi, yazım hatalarının önüne geçilmesidir.
//         /// Bu sayede sayfa yolları, uygulama içerisinde aynı şekilde kullanılabilir.
//         path: RoutePaths.initial.path,
//         pageBuilder: (context, state) => AdaptivePageBuilder.builder<void>(
//           child: const SplashView(),
//         ),
//       ),
//       GoRoute(
//         path: RoutePaths.userDetail.path,
//         pageBuilder: (context, state) => AdaptivePageBuilder.builder<void>(
//           child: UserDetailView(user: state.extra as UserModel),
//         ),
//       ),
//       GoRoute(
//         path: RoutePaths.login.path,
//         pageBuilder: (context, state) => AdaptivePageBuilder.builder<void>(
//           child: const LoginView(),
//         ),
//       ),
//       GoRoute(
//         path: RoutePaths.register.path,
//         pageBuilder: (context, state) => AdaptivePageBuilder.builder<void>(
//           child: const RegisterView(),
//         ),
//       ),
//     ],
//   );
// }
