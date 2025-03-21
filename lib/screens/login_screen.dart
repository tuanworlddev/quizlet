import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quizlet/components/custom_button.dart';
import 'package:quizlet/components/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ super.key });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                'Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30,),
            CustomTextField(controller: _emailController, label: 'Email address', icon: Icons.email,),
            const SizedBox(height: 30.0,),
            CustomTextField(controller: _passwordController, label: 'Password', icon: Icons.lock, isPassword: true,),
            const SizedBox(height: 10.0,),
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {}, child: Text('Forgot Password?', style: TextStyle(color: Colors.white),)),
            ),
            const SizedBox(height: 20.0,),
            CustomButtonLight(text: 'LOGIN', onPressed: () {}),
            const SizedBox(height: 20.0,),
            Container(
              alignment: Alignment.center,
              child: Text('Or', style: TextStyle(color: Colors.grey.shade400, fontSize: 18.0),),
            ),
            const SizedBox(height: 20.0,),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/google.svg',
                      width: 24.0,
                      height: 24.0,
                    ),
                    const SizedBox(width: 10.0,),
                    Text('Sign In with Google', style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30.0,),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ", style: TextStyle(color: Colors.grey.shade300, fontSize: 16.0),),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    }, 
                    child: Text('Sign up', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}