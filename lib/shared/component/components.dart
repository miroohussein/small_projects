import 'package:flutter/material.dart';

Widget defultButton(
        {double width = double.infinity,
        Color color = Colors.brown,
        required Function()? function,
        required String text}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: color,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(fontSize: 17.0, color: Colors.white),
        ),
      ),
    );

Widget defaultFormFeild({
  required TextEditingController controller,
  required TextInputType textInputType,
  required String? validate(String? value),
  required String text,
  required IconData icon,
  bool isPassword = false,
  IconData? suffics,
 // IconData visibleOass = Icons.videocam_off_outlined,
 Function()? function,
}) =>
    TextFormField(
      controller: controller,
      obscureText: isPassword,
      keyboardType: textInputType,
      onFieldSubmitted: (String value) {
        print(value);
      },
// onChanged: (value) {
//   print(value);
// },
      validator: validate,
      decoration: InputDecoration(
        labelText: text,
        prefixIcon: Icon(icon),
        suffixIcon: IconButton(icon: Icon(suffics != null ? suffics : null), onPressed: function,),
        border: OutlineInputBorder(),
      ),
    );
