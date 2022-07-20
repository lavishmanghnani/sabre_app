import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


const primaryColor = Color(0xFF4169dd);

class CheckListScreen extends StatefulWidget {
  const CheckListScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CheckListScreen> createState() => _CheckListScreen();
}

class _CheckListScreen extends State<CheckListScreen> {
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
                  SizedBox(
                    height: 16,
                  ),
                  Container(

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Residential Security Check List',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold )),

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
                          Text('Arrived on site'),
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
                          Text('Document Mileage'),
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
                          Text('Call Local PD'),
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
                          child: Text('Done'),
                          onPressed: () {

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
