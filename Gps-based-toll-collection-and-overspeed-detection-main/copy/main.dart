import 'package:flutter/material.dart';
import 'package:sukhad_yathra/Screens/login_screen.dart';
import 'package:sukhad_yathra/Screens/registration_screen.dart';
import 'package:sukhad_yathra/Screens/welcome_screen.dart';



void main() => runApp(Sukhadyathra());

class Sukhadyathra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id ,
      routes: {
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        RegistrationScreen.id:(context)=>RegistrationScreen(),

      },
    );
  }
}