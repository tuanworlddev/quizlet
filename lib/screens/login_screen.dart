import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ super.key });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.grey.shade200,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade200, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1.5)
                        ),
                        prefixIcon: Icon(Icons.email, color: Colors.white,),
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0,),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    cursorColor: Colors.grey.shade200,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade200, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.5)
                        ),
                        prefixIcon: Icon(Icons.lock, color: Colors.white,),
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0,),
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {}, child: Text('Forgot Password?', style: TextStyle(color: Colors.white),)),
            ),
            const SizedBox(height: 20.0,),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              width: double.infinity,
              child: FilledButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 16)),
                  ),
                  child: Text('LOGIN', style: TextStyle(color: HexColor('#0077b6'), fontSize: 18, fontWeight: FontWeight.bold),)
              ),
            ),
            const SizedBox(height: 20.0,),
            Container(
              alignment: Alignment.center,
              child: Text('Or', style: TextStyle(color: Colors.grey.shade400, fontSize: 18),),
            ),
            const SizedBox(height: 20.0,),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                ),
                child: Text('Sign In with Google'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}