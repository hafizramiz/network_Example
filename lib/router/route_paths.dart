import 'package:go_router/go_router.dart';

import '../home/home_screen.dart';

/// [RoutePaths] enum sınıfı, GoRouter paketi içerisinde kullanılacak olan sayfa yollarını içerir.
/// Her bir sayfa yolu, bir string değerine sahiptir.
/// Bu sayede sayfa yolları, uygulama içerisinde kullanılacak olan sayfa builder'larına verilebilir.
/// Bu değerler burada verildiği için yazım hatalarının önüne geçilir.
enum RoutePaths {
  initial('/'),   /// Bu isaret initial route'u belirtir. Bun
  userDetail('/user-detail'),
  login('/login'),
  register('/register'),
  ;

  const RoutePaths(this.path);
  final String path;
}


// Kullanimi boyle oluyor
// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),   /// Burda baslangicta hangi ekrani basatmasini istersek onu veriyoruz
    ),     /// Builder fonksiyonu ile hangi sayfaya gideceginiz belirtiyoruz
  ],
);
