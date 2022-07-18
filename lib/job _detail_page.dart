import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmployeeTerminationScreen extends StatefulWidget {
  const EmployeeTerminationScreen({Key? key}) : super(key: key);

  @override
  State<EmployeeTerminationScreen> createState() =>
      _EmployeeTerminationScreenState();
}

class _EmployeeTerminationScreenState extends State<EmployeeTerminationScreen> {
  final primaryColor = const Color(0xFF4169DD);
  List<String> content = [
    "Client Name",
    "Pay Rate",
    "Date of Assingnment",
    "Point of Contacts",
    "Point of Contacts Cell Phone",
    "Location",
    "Address"
  ];

  List<String> content2 = [
    "ABC Company",
    "\$450",
    "01/01/2022",
    "John Smith",
    "323-123-4567",
    "Los Angeles",
    "123 Fake Street Los Angeles CA 90000"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE9E9E9),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                PreferredSize(
                    preferredSize: const Size.fromHeight(100.0),
                    child: AppBar(
                      systemOverlayStyle:
                          SystemUiOverlayStyle(statusBarColor: primaryColor),
                      toolbarHeight: 110,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(20),
                      )),
                      backgroundColor: primaryColor,
                      leading: const Icon(Icons.arrow_back_outlined),
                      title: const Text(""),
                      centerTitle: true,
                      actions: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.notifications),
                          tooltip: 'Notifications',
                          onPressed: () {},
                        ),
                      ],
                    )),
                Positioned(
                  //top: 70,
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 100),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFFFFFFF),
                      ),
                      height: 200,
                      width: 325,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  'assets/images/ET.png',
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Employee Termination',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text('Residential',
                                        style: TextStyle(color: primaryColor)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          const Divider(
                            height: 1,
                            thickness: 1,
                            indent: 1,
                            endIndent: 0,
                            color: Color(0xffE6EAF6),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    'Start Time',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '09:00AM',
                                  ),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text(
                                    'End Time',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '10:00PM',
                                  ),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text(
                                    'No. of agents',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '5',
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Basic Information',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Client Name',
                                ),
                                Text(
                                  'ABC Company',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Pay Rate',
                                ),
                                Text(
                                  '\$450',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Date of Assignment',
                                ),
                                Text(
                                  '01/01/2022',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Point of Contact',
                                ),
                                Text(
                                  'John Smith',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Point of Contact Cell Phone',
                                ),
                                Text(
                                  '323-123-4567',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Location',
                                ),
                                Text(
                                  'Los Angeles',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Address',
                                ),
                                Text(
                                  '123 Fake street Los Angeles CA 90000',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Divider(
                              height: 1,
                              thickness: 2,
                              indent: 1,
                              endIndent: 0,
                              color: Color(0xffDEE3F2),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Detail Specifics',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Agent Attire',
                                ),
                                Text(
                                  'Black Polo and BDU',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Armed',
                                ),
                                Text(
                                  'Yes',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Concealed',
                                ),
                                Text(
                                  'Yes',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ElevatedButton(
                                    child: const Text('Submitted'),
                                    onPressed: () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          Container(
                                            // height: 150,
                                            // width: 200,
                                            // margin: EdgeInsets.only(left: 30.0, right: 30),
                                            padding: EdgeInsets.all(12.0),
                                            child: AlertDialog(
                                        shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  const Radius.circular(20.0))),
                                        title: Image.asset(
                                            'assets/icons/right_icon.png',
                                            height: 100,
                                            width: 100,
                                        ),
                                        content: const Text(
                                            'Submitted',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                        ),
                                        actions: <Widget>[
                                            Center(
                                              child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: const Text('Ok'),
                                                  style: ButtonStyle(
                                                      shape: MaterialStateProperty
                                                          .all<RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                40.0),
                                                      )),
                                                      backgroundColor:
                                                          MaterialStateProperty.all(
                                                              const Color(0xFF4169dd)),
                                                      padding:
                                                          MaterialStateProperty.all(
                                                              const EdgeInsets.only(
                                                                  left: 60,
                                                                  right: 60,
                                                                  bottom: 20,
                                                                  top: 20)),
                                                      textStyle:
                                                          MaterialStateProperty
                                                              .all(const TextStyle(
                                                                  fontSize: 25)),
                                                      alignment:
                                                          Alignment.topRight)),
                                            ),
                                        ],
                                        actionsPadding: const EdgeInsets.all(20),
                                      ),
                                          ),
                                    ),
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                        )),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                const Color(0xFF4169dd)),
                                        padding: MaterialStateProperty.all(
                                            const EdgeInsets.only(
                                                left: 60,
                                                right: 60,
                                                bottom: 20,
                                                top: 20)),
                                        textStyle: MaterialStateProperty.all(
                                            const TextStyle(fontSize: 25)),
                                        alignment: Alignment.topRight),
                                  ),
                                ]
                            )
                            
                          ],
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
