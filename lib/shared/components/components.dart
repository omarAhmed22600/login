import 'package:flutter/material.dart';

Widget defaultFormField({
  required String labelText,
  required String pathString,
})
{
  return Container(
    height: 90.0,
    margin: EdgeInsets.only(
      left: 20.0,
      right: 20.0,

    ),

  decoration: BoxDecoration(
   // color: Colors.red,
  image: DecorationImage(
  image: AssetImage(pathString),
    fit: BoxFit.fill,
  ),
  ),
  // width: double.infinity,
  child: Container(
    margin: EdgeInsets.only(
      top: 18.0,
      left:87.0,
      right:13.0,
    ),
    child: TextFormField(
    decoration: InputDecoration(
    alignLabelWithHint: true,
    labelText: labelText,
    contentPadding: EdgeInsets.zero,
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),
),
focusedBorder: OutlineInputBorder(
borderSide: BorderSide(color: Colors.transparent),
),
focusedErrorBorder: OutlineInputBorder(
borderSide: BorderSide(color: Colors.transparent),
),
),
),
  ),
);
}

Widget defaultTextFormField({
required String labelText,
required String pathString,
  required TextInputType inputType,
  required bool isPassword,
}) => Container(
  margin: EdgeInsets.only(
      left: 5.0,
      right: 15.0
  ),
  width: double.infinity,
  height: 100,
  decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/textfield.png'),
        fit: BoxFit.cover,
      )
  ),
  child: Padding(
    padding: const EdgeInsets.only(
        bottom: 9.0
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:
      [
        SizedBox(width: 24.0,),
        Image(
          height: 50.0,
          width: 50.0,
          image:AssetImage(pathString),
        ),
        SizedBox(width: 20.0,),
        SizedBox(
          width: 250.0,
          child: TextFormField(
            keyboardType: inputType,
            obscureText: isPassword,
            decoration: InputDecoration(
              alignLabelWithHint: true,
              labelText: labelText,
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
          ),
        ),
      ],
    ),
),
);
