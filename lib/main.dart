import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelmeniy_czech/blocs/cart/cart_bloc.dart';
import 'package:pelmeniy_czech/routes/app_router.dart';
import 'package:rive_splash_screen/rive_splash_screen.dart';

import 'pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => CartBloc()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pelmen Demo',
      onGenerateRoute: AppRouter.onGenerateRoute,
      home: SplashScreen.navigate(
        name: 'assets/animations/splash.riv',
       next: (context)=>HomePage(),
        startAnimation: 'Animation',
      ),
    );
  }
}
