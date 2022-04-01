// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_login/modules/register_screen/register_screen.dart';
import 'package:flutter_login/shared/components/components.dart';
import 'package:flutter_login/shared/styles/colors.dart';
import 'package:page_transition/page_transition.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),

      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20.0,

            ),
            child: Container(
              width: double.infinity,
              height: 915,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/login_body.png'),
                    fit: BoxFit.fill,
                  )
              ),
              margin: EdgeInsets.symmetric(
                  horizontal: 10.0
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  const SizedBox(width: double.infinity, height: 350.0,),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.PRIMARYCOLOR,
                    ),
                  ),
                  SizedBox(width: double.infinity, height: 5.0,),
                  defaultTextFormField(
                    isPassword: false,
                    inputType: TextInputType.emailAddress,
                    labelText: 'Email or Phone number',
                    pathString: 'assets/images/icons_user.png',
                  ),
                  SizedBox(width: double.infinity, height: 5.0,),
                  defaultTextFormField(
                    isPassword: true,
                    inputType: TextInputType.visiblePassword,
                    labelText: 'Password',
                    pathString: 'assets/images/icons_password.png',
                  ),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      SizedBox(width: 100.0,),
                      Checkbox(

                        activeColor: AppColors.PRIMARYCOLOR,
                        value: true,
                        onChanged: (isChecked){},
                      ),
                      Container(
                        child: Text('Remember me'),
                      )

                    ],
                  ),
                  Row(
                    children:
                    [
                      const SizedBox(width: 100.0,),
                      Text('Forgot Password? ',
                      style: TextStyle(
                        color: AppColors.PRIMARYCOLOR,
                        fontSize: 10.0
                      ),),
                      Expanded(
                        child: Text('Reset Password!',
                          maxLines: 2,
                          style: TextStyle(
                              color: AppColors.PRIMARYCOLOR,
                              fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),),
                      ),
                    ],
                  ),
                  SizedBox(width: double.infinity, height: 10.0,),
                   // SizedBox(width: double.infinity, height: 30.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 25.0,),
                      FloatingActionButton(

                        onPressed: (){},
                        child: Image(
                          image: AssetImage('assets/images/facebook.png'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: double.infinity, height: 10.0,),
                  SizedBox(width: 40.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 90.0,),
                      FloatingActionButton(
                        onPressed: (){},
                        child: Image(
                          image: AssetImage('assets/images/google_plus.png'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: double.infinity, height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 17.5,),
                      FloatingActionButton(
                        backgroundColor: Colors.transparent,
                        elevation: 0.0,

                        onPressed: (){
                          Navigator.push(context, PageTransition(
                            duration: Duration(milliseconds: 1500),
                              type: PageTransitionType.bottomToTop,
                              child: RegisterScreen()
                          )
                          );

                        },
                        child: Image(
                          image: AssetImage('assets/images/login_arrow_to_signup.png'),
                        ),
                      ),
                      const SizedBox(width: 90.0,),
                      FloatingActionButton(
                        onPressed: (){},
                        child: Image(
                          image: AssetImage('assets/images/twitter.png'),
                        ),
                      ),
                      const SizedBox(width: 80.0,),
                      FloatingActionButton(
                        backgroundColor: Colors.transparent,
                        elevation: 0.0,
                        onPressed: (){},
                        child: Image(
                          image: AssetImage('assets/images/register_arrow_to_verify.png'),
                        ),
                      ),
                    ],
                  ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
