// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_login/modules/login_screen/login_screen.dart';
import 'package:flutter_login/shared/components/components.dart';
import 'package:flutter_login/shared/styles/colors.dart';
import 'package:page_transition/page_transition.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10.0
            ),

            width: double.infinity,
            height: 1760,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/register_body.png'),
                  fit: BoxFit.fill,
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children:
              [
                SizedBox(width: double.infinity, height: 50.0,),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width:10.0),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      onPressed: ()
                      {
                        goToLogin(context);
                      },
                      child: Image(
                        image: AssetImage('assets/images/register_arrow_to_signup.png'),
                      ),
                    ),
                    SizedBox(width: 90.0,),
                    FloatingActionButton(
                      onPressed: (){},
                      child: Image(
                        image: AssetImage('assets/images/facebook.png'),
                      ),
                    ),
                    SizedBox(width: 90.0,),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      onPressed: ()
                      {
                        goToLogin(context);
                      },
                      child: Image(
                        image: AssetImage('assets/images/register_arrow_to_signin.png'),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      onPressed: (){},
                      child: Image(
                        image: AssetImage('assets/images/twitter.png'),
                      ),
                    ),
                    SizedBox(width: 90.0,),
                  ],
                ),
                SizedBox(width: double.infinity, height: 200.0,),
                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColors.PRIMARYCOLOR,
                  ),
                ),
                SizedBox(width: double.infinity, height: 5.0,),
                defaultTextFormField(
                  isPassword: false,
                  inputType: TextInputType.name,
                  labelText: 'Full Name',
                  pathString: 'assets/images/icons_user.png',
                ),
                SizedBox(width: double.infinity, height: 5.0,),
                defaultTextFormField(
                  isPassword: false,

                  inputType: TextInputType.emailAddress,
                  labelText: 'Email',
                  pathString: 'assets/images/icons_email.png',
                ),
                SizedBox(width: double.infinity, height: 5.0,),
                defaultTextFormField(
                  isPassword: false,

                  inputType: TextInputType.phone,
                  labelText: 'Phone Number',
                  pathString: 'assets/images/icons_phone.png',
                ),
                SizedBox(width: double.infinity, height: 5.0,),
                defaultTextFormField(
                  isPassword: false,

                  inputType: TextInputType.datetime,
                  labelText: 'Birthdate',
                  pathString: 'assets/images/icons_birthdate.png',
                ),
                SizedBox(width: double.infinity, height: 5.0,),
                defaultTextFormField(
                  isPassword: true,

                  inputType: TextInputType.visiblePassword,
                  labelText: 'Password',
                  pathString: 'assets/images/icons_password.png',
                ),
                SizedBox(width: double.infinity, height: 5.0,),
                defaultTextFormField(
                  isPassword: true,

                  inputType: TextInputType.visiblePassword,
                  labelText: 'Confirm Password',
                  pathString: 'assets/images/icons_confirm.png',
                ),
                SizedBox(width: double.infinity, height: 5.0,),
                defaultTextFormField(
                  isPassword: false,

                  labelText: 'Current Address',
                  inputType: TextInputType.streetAddress,
                  pathString: 'assets/images/icons_address.png',
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    SizedBox(width: 50.0,),
                    Checkbox(

                      activeColor: AppColors.PRIMARYCOLOR,
                      value: true,
                      onChanged: (isChecked){},
                    ),
                    Container(
                        child: Text('Register as a Doctor'),
                    )

                  ],
                ),
                //terms and conditions

                defaultTextFormField(
                  isPassword: false,

                  labelText: 'Doctor ID',
                  inputType: TextInputType.number,
                  pathString: 'assets/images/icons_id.png',
                ),
                SizedBox(width: double.infinity, height: 5.0,),
                defaultTextFormField(
                  isPassword: false,

                  inputType: TextInputType.text,
                  labelText: 'Doctor Speciality',
                  pathString: 'assets/images/icons_speciality.png',
                ),
                SizedBox(width: double.infinity, height: 5.0,),
                defaultTextFormField(
                  isPassword: false,

                  inputType: TextInputType.text,
                  labelText: 'Doctor Experience',
                  pathString: 'assets/images/icons_experience.png',
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    SizedBox(width: 50.0,),
                    Checkbox(

                      activeColor: AppColors.PRIMARYCOLOR,
                      value: true,
                      onChanged: (isChecked){},
                    ),
                    Container(
                      child: Expanded(
                        child: Text(
                            'I agree to Sehetak terms & Conditions.',
                          maxLines: 2,


                        ),
                      ),
                    ),


                  ],
                ),
                SizedBox(height: 40.0,),
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
          ),
        ),
      ),
    );
  }
  void goToLogin(context)
  {
    Navigator.push(context, PageTransition(
        type: PageTransitionType.topToBottom,
        duration: Duration(milliseconds: 1500),
        child: LoginScreen()));
  }
}
