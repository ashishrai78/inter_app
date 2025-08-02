import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intern_app/common/elevatedButton/elevated_button.dart';
import 'package:intern_app/common/textFormField/textFormField.dart';
import 'package:intern_app/screens/auth/signUpScreen/signUp_Screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                    child: Text('Login', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35,),)
                ),
                SizedBox(height: 30,),
                //----[Text FormFields]------
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      UTextFormFieldWidget(prefixIcon: Icon(Icons.mail_outline), labelText: 'Email',),
                      SizedBox(height: 28),
                      UTextFormFieldWidget(prefixIcon: Icon(Icons.password), labelText: 'Password'),
                      //-----[CheckBox, Remember me, Forget Password]-----
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value){}),
                              Text('Remember me')
                            ],
                          ),
                          TextButton(onPressed: (){
                          }, child: Text('forget Password'))
                        ],
                      ),

                    ],
                  ),
                ),

                //-----[Sigh In, Create Account Button]-----
                SizedBox(height: 40),
                Column(
                  children: [
                    UElevatedButton(onPressed: (){
                      Get.offAllNamed('/navigationmenu');
                    }, child: Text('Sign In', style: TextStyle(fontSize: 20, color: Colors.white),)),
                    SizedBox(height: 20),
                    UElevatedButton(onPressed: (){
                      Get.to(SignupScreen());
                    }, child: Text('Create Account', style: TextStyle(fontSize: 20, color: Colors.white)))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}