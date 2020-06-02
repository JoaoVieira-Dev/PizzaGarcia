import 'package:flutter/material.dart';
import 'package:pizzagarcia/app/pages/home/home_page.dart';
import 'package:pizzagarcia/app/pages/login/login_page.dart';
import 'package:pizzagarcia/app/pages/register/register_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: <String, WidgetBuilder> {
    '/': (context) => HomePage(),
    '/login' : (context) => LoginPage(),
    '/register' : (context) => Register(),
  },
  ));
}

