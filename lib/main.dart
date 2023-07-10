import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';
import 'package:quick_grocery/presentation/screen/cart/cart_screen.dart';
import 'package:quick_grocery/presentation/screen/chat/chat_screen.dart';
import 'package:quick_grocery/presentation/screen/create_password/create_password_screen.dart';
import 'package:quick_grocery/presentation/screen/detail_product/detail_product_screen.dart';
import 'package:quick_grocery/presentation/screen/main/main_screen.dart';
import 'package:quick_grocery/presentation/screen/otp/otp_screen.dart';
import 'package:quick_grocery/presentation/screen/password/password_screen.dart';
import 'package:quick_grocery/presentation/screen/profile/screens/edit_address/edit_address_screen.dart';
import 'package:quick_grocery/presentation/screen/profile/screens/edit_profile/profile_screen.dart';
import 'package:quick_grocery/presentation/theme/route_manager.dart';
import 'package:quick_grocery/presentation/theme/theme_manager.dart';

import 'presentation/screen/order/order_screen.dart';
import 'presentation/screen/profile/profile_screen.dart';
import 'presentation/screen/search/search_screen.dart';
import 'presentation/screen/sign_in/sign_in_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
      );
  runApp(
    DevicePreview(
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    state.changeLanguage(newLocale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Locale _locale;

  void changeLanguage(Locale locale) {
    debugPrint('changeLanguage ${locale.languageCode}');
    setState(() {
      _locale = locale;
    });
  }

  @override
  void initState() {
    super.initState();
    _locale = const Locale('en', 'US'); // Set the initial locale
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('ar', 'AR'),
          ],
          locale: _locale,
          onGenerateRoute: RouteGenerator.getRoute,
          localeResolutionCallback: (locale, supportedLocales) {
            for (final supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale?.languageCode &&
                  supportedLocale.countryCode == locale?.countryCode) {
                return supportedLocale;
              }
            }
            return supportedLocales.first;
          },
          title: 'Easy Grocery',
          theme: ThemeManager.getThemeData(),
          home: const ChatScreen(),
        );
      },
    );
  }
}