import 'package:flutter/material.dart';
import 'package:sabre_app/widget/common_text_field.dart';

const primaryColor = Color(0xFFFFFFFF);

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreen();
}

class _ForgetPasswordScreen extends State<ForgetPasswordScreen> {
  TextEditingController emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 20),
                child: Icon(Icons.arrow_back),
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/forgetpassword.png'),
                        fit: BoxFit.cover)),
                // child: Icon(Icons.mail),
                height: 400,
                width: 400,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Forget Password",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Dont worry, it happens.Please enter the address associated with your account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Text(
                        "Email Address",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CommonTextFieldWidget(
                    controller: emailController,
                    suffixIcon: Icon(Icons.email),
                    hint: "Enter your email",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          child: Text('Submit'),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                            }
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              )),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFF4169dd)),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.only(
                                      left: 60,
                                      right: 60,
                                      bottom: 20,
                                      top: 20)),
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(fontSize: 25)),
                              alignment: Alignment.topRight),
                        ),
                      ])
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
