import 'package:flutter/material.dart';
import 'HomeScreen.dart';

void main(){runApp(LoginApp());
}

class LoginApp extends StatelessWidget{
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
return MaterialApp(home:HomeActivity(),debugShowCheckedModeBanner:false,);
  }
}

