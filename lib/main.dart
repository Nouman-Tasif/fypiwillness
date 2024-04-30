import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myproject/screen/splash_screen.dart';
import 'package:myproject/viewmodel/calories_viewmodel.dart';
import 'package:myproject/viewmodel/doctor_viewmodel.dart';
import 'package:myproject/viewmodel/forgot_viewModel.dart';
import 'package:myproject/viewmodel/homescreen_viewmodel.dart';
import 'package:myproject/viewmodel/tab_viewmodel.dart';
import 'package:myproject/viewmodel/login_model.dart';
import 'package:myproject/viewmodel/patient_viewmodel.dart';
import 'package:myproject/viewmodel/signup_viewmodel.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginViewModel()),
        ChangeNotifierProvider(create: (context) => SignUPViewModel()),
        ChangeNotifierProvider(create: (context) => ForgotPasswordViewModel()),
        ChangeNotifierProvider(create: (context) => PatientViewModel()),
        ChangeNotifierProvider(create: (context) => DoctorProfileViewModel()),
        ChangeNotifierProvider(create: (context) => TabScreenViewModel()),
        ChangeNotifierProvider(create: (context) => CaloriesViewModel()),
        ChangeNotifierProvider(create: (context) => HomeScreenViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}