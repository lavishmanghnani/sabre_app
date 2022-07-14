import 'package:flutter/material.dart';
import 'package:sabre_app/widget/common_text_field.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

const primaryColor = Color(0xFFFFFFFF);

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreen();
}

class _ChangePasswordScreen extends State<ChangePasswordScreen> {
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
                        image: AssetImage('assets/images/newpass.png'),
                        fit: BoxFit.cover)),
                // child: Icon(Icons.mail),
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Change Your Password",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Please enter the 4 Digital code sent to your email@example.com",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Old Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  CommonTextFieldWidget(
                    suffixIcon: Icon(Icons.lock),
                    hint: "Enter your password",
                    validator: (value){
                      if (value!.isEmpty){
                        return 'Filed is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "New Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  CommonTextFieldWidget(
                    suffixIcon: Icon(Icons.lock),
                    hint: "Enter new password",
                    validator: (value){
                      if (value!.isEmpty){
                        return 'Filed is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Confirm New Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  CommonTextFieldWidget(
                    suffixIcon: Icon(Icons.lock),
                    hint: "Enter Confirm password",
                    validator: (value){
                      if (value!.isEmpty){
                        return 'Filed is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  // SizedBox(
                  //   height: 25,
                  // ),
                  // Row(
                  //   children: [
                  //     Text(
                  //       "Email Address",
                  //       textAlign: TextAlign.left,
                  //       style: TextStyle(
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  // CommonTextFieldWidget(
                  //   controller: emailController,
                  //   suffixIcon: Icon(Icons.email),
                  //   hint: "Enter your email",
                  //   validator: (value) {
                  //     if (value!.isEmpty) {
                  //       return 'Please enter some text';
                  //     }
                  //     return null;
                  //   },
                  // ),

                  // OtpTextField(
                  //   numberOfFields: 4,
                  //   borderColor: Color(0xFFFFFFFF),
                  //   //set to true to show as box or false to show as dash
                  //   showFieldAsBox: true,
                  //   //runs when a code is typed in
                  //   onCodeChanged: (String code) {
                  //     //handle validation or checks here
                  //   },
                  //   //runs when every textfield is filled
                  //   onSubmit: (String verificationCode) {
                  //     showDialog(
                  //         context: context,
                  //         builder: (context) {
                  //           return AlertDialog(
                  //             title: Text("Verification Code"),
                  //             content:
                  //             Text('Code entered is $verificationCode'),
                  //           );
                  //         });
                  //   }, // end onSubmit
                  // ),
                  //
                  // SizedBox(
                  //   height: 50,
                  // ),
                  //
                  // Text(
                  //   "Resend Code",
                  //   style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF4169dd),decoration: TextDecoration.underline,),
                  // ),
                  // SizedBox(
                  //   height: 34,
                  // ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          child: Text('Update Password'),
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
                                  TextStyle(fontSize: 15)),
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
