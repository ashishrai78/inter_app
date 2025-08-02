
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intern_app/common/elevatedButton/elevated_button.dart';
import 'package:intern_app/common/textFormField/textFormField.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //-----[SignUp Title Text]-----
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),

              //------[TextFormFields]----
              SizedBox(
                height: 30,
              ),
              //-----[TextField for UserName]----
              Row(
                children: [
                  Expanded(
                      child: UTextFormFieldWidget(
                          prefixIcon: Icon(Icons.person),
                          labelText: 'First Name')),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: UTextFormFieldWidget(
                          prefixIcon: Icon(Icons.person),
                          labelText: 'Last Name')),
                ],
              ),
              //-----[Other textFields]-----
              SizedBox(
                height: 20,
              ),
              UTextFormFieldWidget(
                  prefixIcon: Icon(Icons.mail_outline), labelText: 'Email'),
              SizedBox(
                height: 15,
              ),
              UTextFormFieldWidget(
                  prefixIcon: Icon(Icons.password), labelText: 'Password'),
              SizedBox(
                height: 15,
              ),
              UTextFormFieldWidget(
                  prefixIcon: Icon(Icons.phone),
                  labelText: 'Enter Phone Number'),

              //-----[CheckBox or Texts]-----
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                        TextSpan(text: 'I agree'),
                        TextSpan(
                            text: ' privacyPolicy',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.blue)),
                        TextSpan(text: ' and'),
                        TextSpan(
                            text: ' termsOfUse',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.blue))
                      ]))
                ],
              ),
              //-----[Create Account Button]----
              SizedBox(height: 60),
              UElevatedButton(onPressed: (){
                Get.offAllNamed('/loginScreen');
              }, child: Text('Create Account',style: TextStyle(color: Colors.white,fontSize: 20),)),

            ],
          ),
        ),
      ),
    );
  }
}
