import 'package:flutter/material.dart';
import 'package:quick_grocery/presentation/screen/cart/cart_screen.dart';
import 'package:quick_grocery/presentation/screen/create_password/create_password_screen.dart';
import 'package:quick_grocery/presentation/screen/otp/otp_screen.dart';
import 'package:quick_grocery/presentation/screen/password/password_screen.dart';
import 'package:quick_grocery/presentation/screen/profile/profile_screen.dart';
import 'package:quick_grocery/presentation/screen/sign_in/sign_in_screen.dart';

import '../screen/detail_product/detail_product_screen.dart';
import '../screen/profile/screens/edit_address/edit_address_screen.dart';
import '../screen/search/search_screen.dart';

class RouteName {
  static const String home = '/';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String password = '/password';
  static const String createPassword = '/createPassword';
  static const String otp = '/otp';
  static const String search = '/search';
  static const String order = '/order';
  static const String cart = '/cart';
  static const String editAddress = '/editAddress';
  static const String profile = '/profile';
  static const String chatUs  = '/chatUs';
  static const String productDetails = '/productDetails';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    debugPrint('RouteGenerator: 1 ${settings.name}');
    switch (settings.name) {
      // case RouteName.home:
      //   return MaterialPageRoute<void>(
      //     settings: settings,
      //     builder: (BuildContext context) => const MyHomePage(),
      //   );

      case RouteName.editAddress:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const EditAddressScreen(),
        );
      case RouteName.cart:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => CartScreen(),
        );
      case RouteName.productDetails:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const DetailProductScreen(),
        );
      case RouteName.search:
        return MaterialPageRoute(
          builder: (_) => const SearchScreen(),
        );
      case RouteName.profile:
        return MaterialPageRoute(
          builder: (_) => ProfileScreen(),
        );
      case RouteName.signIn:
        return MaterialPageRoute(
          builder: (_) => SignInScreen(),
        );
      case RouteName.password:
        return MaterialPageRoute(
          builder: (_) => const PasswordScreen(),
        );
      case RouteName.otp:
        return MaterialPageRoute(
          builder: (_) => const OtpScreen(),
        );
      case RouteName.createPassword:
        return MaterialPageRoute(
          builder: (_) => const CreatePasswordScreen(),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Not Found'),
        ),
        body: const Center(child: Text('Not Found')),
      ),
    );
  }
}
