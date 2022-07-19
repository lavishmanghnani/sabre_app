import 'package:flutter/material.dart';
import 'package:sabre_app/change_password.dart';
import 'package:sabre_app/checklist.dart';
import 'package:sabre_app/demo.dart';
import 'package:sabre_app/email_verify.dart';
import 'package:sabre_app/forgetpassword.dart';
import 'package:sabre_app/job%20_detail_page.dart';
import 'package:sabre_app/main.dart';
import 'package:sabre_app/notification.dart';
import 'package:sabre_app/privacy_policy.dart';
import 'package:sabre_app/second_page.dart';
import 'package:sabre_app/subscription.dart';
import 'package:sabre_app/terms_and_conditions.dart';
import 'package:sabre_app/upload_expense.dart';

void main() {
  runApp(const MyApp());
}

const primaryColor = Color(0xFF4169dd);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Notification panel ',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  const UploadExpenseScreen(

    ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
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
              IconButton(
                icon: const Icon(Icons.edit),
                tooltip: 'Edit Profile',
                onPressed: () {
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(content: Text('This is a snackbar')));
                },
              ),
            ],
          )),
      body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/image.jpg'),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Icon(Icons.mail),
                    height: 200,
                    width: 200,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'John smith',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Security guard',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Icon(Icons.email_sharp),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Email'),
                              SizedBox(height: 16),
                              Text(
                                'johnsmith123@gmail.com',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      )),
                  SizedBox(height: 16),
                  Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Phone Number'),
                              SizedBox(height: 16),
                              Text(
                                '323-123-4567',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      )),
                  SizedBox(height: 16),
                  Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Address*'),
                              SizedBox(height: 16),
                              Text(
                                '123 Fake Street Los Angeles CA90000',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      )),
                  SizedBox(height: 16),
                  Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Icon(Icons.calendar_month),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Date od Birth*'),
                              SizedBox(height: 16),
                              Text(
                                'Nov 22, 1997',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ))

                ],
              ),
            ),
          )),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
