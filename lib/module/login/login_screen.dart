import 'package:flutter/material.dart';
import 'package:tryagain/shared/component/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailConroller = TextEditingController();

  var passwordConroller = TextEditingController();

  var formKey = GlobalKey<FormState>();
  bool pass = false;
  IconData suffix =  Icons.remove_red_eye;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: Text(
          'Login',
          style: TextStyle(color: Colors.brown.shade900),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.green.shade500,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      // padding: EdgeInsetsDirectional.all(10.0),
                      child:
                      defaultFormFeild(
                        controller: emailConroller,
                        text: 'E-mail',
                        icon: Icons.email,
                        textInputType: TextInputType.emailAddress,
                        validate:(value){
                          if(value?.isEmpty ?? true){
                            return " email is null";
                          }
                          return null;
                        } ,

                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    defaultFormFeild(
                      function: (){
                        setState(() {
                          pass = !pass;
                          suffix = pass? Icons.remove_red_eye :Icons.visibility_off;
                        });
                      },
                      controller: passwordConroller,
                      isPassword: pass,
                      text: 'Passwod',
                      icon: Icons.lock,
                      textInputType: TextInputType.visiblePassword,
                      validate:(value){
                        if(value?.isEmpty ?? true){
                          return " password is null";
                        }
                        return null;
                      } ,
                      suffics: suffix

                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    defultButton(
                        function: () {
                          if(formKey.currentState?.validate() ?? true){
                            print(emailConroller.text);
                            print(passwordConroller.text);
                          };
                        },
                        text: 'Login'),

                     SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t hane an accont?'),
                        TextButton(
                            onPressed: () {}, child: Text("Register here")),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
