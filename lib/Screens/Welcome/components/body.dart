import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constans.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Background(

      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
      
            const Text(
              'Welcome to cyberCafé',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
      
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.4,
            ),
            SizedBox(height: size.height * 0.05),
      
            RoundedButton(
              text: "LogIn",
              press: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.02),
      
            RoundedButton(
              text: 'SignUp',
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press:() {
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  )
                );
              },
            ),
      
      
            
          ],
        ),
      ),
    );
  }
}