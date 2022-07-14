import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sabre_app/Create_password.dart';
import 'package:sabre_app/change_password.dart';
import 'package:sabre_app/email_verify.dart';
import 'package:sabre_app/forgetpassword.dart';
import 'package:sabre_app/main.dart';
import 'package:sabre_app/second_page.dart';

const primaryColor = Color(0xFF4169dd);

class SubcriptioScreen extends StatefulWidget {
  const SubcriptioScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SubcriptioScreen> createState() => _SubcriptioScreen();
}

class _SubcriptioScreen extends State<SubcriptioScreen> {
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
            actions: <Widget>[
              // IconButton(
              //   icon: const Icon(Icons.edit),
              //   tooltip: 'Edit Profile',
              //   onPressed: () {
              //     // ScaffoldMessenger.of(context).showSnackBar(
              //     //     const SnackBar(content: Text('This is a snackbar')));
              //   },
              // ),
            ],
          )),
      body: SingleChildScrollView(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('CCW',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4169dd))),
                      Checkbox(
                        activeColor: Color(0xFFffffff),
                        checkColor: Color(0xff000000),
                        // controlAffinity: ListTileControlAffinity.leading,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) =>
                              BorderSide(width: 1.0, color: Color(0xFF4169dd)),
                        ),
                        value: this.showvalue,
                        onChanged: (value) {
                          setState(() {
                            this.showvalue = value!;
                          });
                        },
                      ),
                    ],
                  )),
              SizedBox(height: 16),
              Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Armed'),
                      Checkbox(
                        activeColor: Color(0xFFffffff),
                        checkColor: Color(0xff000000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) =>
                              BorderSide(width: 1.0, color: Color(0xFF4169dd)),
                        ),
                        value: this.showvalue,
                        onChanged: (value) {
                          setState(() {
                            this.showvalue = value!;
                          });
                        },
                      ),
                    ],
                  )),
              SizedBox(height: 16),
              Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Unarmed'),
                      Checkbox(
                        activeColor: Color(0xFFffffff),
                        checkColor: Color(0xff000000),
                        // controlAffinity: ListTileControlAffinity.leading,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) =>
                              BorderSide(width: 1.0, color: Color(0xFF4169dd)),
                        ),
                        value: this.showvalue,
                        onChanged: (value) {
                          setState(() {
                            this.showvalue = value!;
                          });
                        },
                      ),
                    ],
                  )),
              SizedBox(height: 16),
              Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Residential'),
                      Checkbox(
                        activeColor: Color(0xFFffffff),
                        checkColor: Color(0xff000000),
                        // controlAffinity: ListTileControlAffinity.leading,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) =>
                              BorderSide(width: 1.0, color: Color(0xFF4169dd)),
                        ),
                        value: this.showvalue,
                        onChanged: (value) {
                          setState(() {
                            this.showvalue = value!;
                          });
                        },
                      ),
                    ],
                  )),
              SizedBox(height: 300),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      child: Text('Subscribe'),
                      onPressed: () {
                        // if (_formKey.currentState!.validate()) {
                        //   // If the form is valid, display a snackbar. In the real world,
                        //   // you'd often call a server or save the information in a database.
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     const SnackBar(
                        //         content: Text('Processing Data')),
                        //   );
                        // }if (_formKey.currentState!.validate()) {
                        //   // If the form is valid, display a snackbar. In the real world,
                        //   // you'd often call a server or save the information in a database.
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     const SnackBar(
                        //         content: Text('Processing Data')),
                        //   );
                        // }
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          )),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF4169dd)),
                          padding: MaterialStateProperty.all(EdgeInsets.only(
                              left: 60, right: 60, bottom: 20, top: 20)),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 25)),
                          alignment: Alignment.topRight),
                    ),
                  ])
            ],
          ),
        ),
      )),
    );
  }
}
