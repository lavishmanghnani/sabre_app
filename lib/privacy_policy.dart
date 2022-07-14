import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sabre_app/Create_password.dart';
import 'package:sabre_app/change_password.dart';
import 'package:sabre_app/email_verify.dart';
import 'package:sabre_app/forgetpassword.dart';
import 'package:sabre_app/main.dart';
import 'package:sabre_app/second_page.dart';

const primaryColor = Color(0xFF4169dd);

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreen();
}

class _PrivacyPolicyScreen extends State<PrivacyPolicyScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  bool showvalue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
              // Status bar color
              statusBarColor: Color(0xFF4169dd),

              // Status bar brightness (optional)
              statusBarIconBrightness: Brightness.dark,
              // For Android (dark icons)
              statusBarBrightness: Brightness.light, // For iOS (dark icons)
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            )),
            backgroundColor: primaryColor,
            leading: Icon(Icons.arrow_back_outlined),
            title: Text(
              widget.title,
            ),
            centerTitle: true,
            actions: <Widget>[],
          )),
      body: SingleChildScrollView(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Privacy Policy",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),
                  textAlign: TextAlign.left),
              SizedBox(
                height: 15,
              ),
              Text(
                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form."),
              SizedBox(
                height: 15,
              ),
              Text("Lorem ipsum",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize:20),
                  textAlign: TextAlign.left),
              SizedBox(
                height: 15,
              ),
              Text(
                  "If you are going to use a passage of Lorem Ipsum, you need to be "
                  "sure there isn't anything embarrassing hidden in the middle of text."),
              SizedBox(
                height: 25,
              ),
              Text(
                  "All the Lorem Ipsum generators on the Internet tend to repeat "
                  "predefined chunks as necessary, making this the first true generator on the Internet."
                  "It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures,"
                  " to generate Lorem Ipsum which looks reasonable.The generated Lorem Ipsum is therefore always free from repetition, injected humour,"),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 15,
              ),
              Text("Lorem ipsum",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),
                  textAlign: TextAlign.left),
              SizedBox(
                height: 15,
              ),
              Text(
                  "If you are going to use a passage of Lorem Ipsum, you need to be "
                      "sure there isn't anything embarrassing hidden in the middle of text."),
              SizedBox(
                height: 25,
              ),
              Text(
                  "All the Lorem Ipsum generators on the Internet tend to repeat "
                      "predefined chunks as necessary, making this the first true generator on the Internet."
                      "It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures,"
                      " to generate Lorem Ipsum which looks reasonable.The generated Lorem Ipsum is therefore always free from repetition, injected humour,"),


            ],
          ),
        ),
      )),
    );
  }
}
