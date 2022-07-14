import 'package:flutter/material.dart';
import 'package:sabre_app/widget/common_text_field.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

const primaryColor = Color(0xFFFFFFFF);

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreen();
}

class _CreatePasswordScreen extends State<CreatePasswordScreen> {
  TextEditingController emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        height: screenSize.height,
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
                  height: 300,
                  width: 300,
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Create New Password",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
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
                    // Text(
                    //   "Old Password",
                    //   textAlign: TextAlign.left,
                    //   style: TextStyle(fontWeight: FontWeight.bold),
                    // ),
                    // SizedBox(
                    //   height: 4,
                    // ),
                    // CommonTextFieldWidget(
                    //   suffixIcon: Icon(Icons.lock),
                    //   hint: "Enter your password",
                    //   validator: (value){
                    //     if (value!.isEmpty){
                    //       return 'Filed is required';
                    //     }
                    //     return null;
                    //   },
                    // ),
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
                      validator: (value) {
                        if (value!.isEmpty) {
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Filed is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),

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
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFF4169dd)),
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
        ),
      )),
    );
  }
}
