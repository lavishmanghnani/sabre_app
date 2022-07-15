import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final primaryColor = Color(0xFF4169dd);


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
            title: Text("Notification"),
            centerTitle: true,
            actions: <Widget>[],
          )),
      backgroundColor: Color(0xffE9E9E9),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Today'),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    // padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/img.png',
                              height: 40,
                              width: 40,
                            ),
                            Text(
                              "Assigned Job",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Text("3 hr ago"),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0, right: 20),
                          child: Text(
                              "Hello world this is the example of singhle child scrool view and the text is written here is the part of the given example",
                              style: TextStyle(fontSize: 14)),
                        )
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text("06 july 2022"),

              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    // padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/img.png',
                              height: 40,
                              width: 40,
                            ),
                            Text(
                              "Assigned Job",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Text("3 hr ago"),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0, right: 20),
                          child: Text(
                              "Hello world this is the example of singhle child scrool view and the text is written here is the part of the given example",
                              style: TextStyle(fontSize: 14)),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
