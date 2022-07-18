# sabre_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
















// Column(
//   // mainAxisAlignment: MainAxisAlignment.start,
//   // crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     Padding(
//         padding: const EdgeInsets.all(30.0),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Text(
//                   'Basic Information',
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, fontSize: 18),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Client Name',
//                 ),
//                 Text(
//                   'ABC Company',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Pay Rate',
//                 ),
//                 Text(
//                   '\$450',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Date of Assignment',
//                 ),
//                 Text(
//                   '01/01/2022',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Point of Contact',
//                 ),
//                 Text(
//                   'John Smith',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Point of Contact Cell Phone',
//                 ),
//                 Text(
//                   '323-123-4567',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Location',
//                 ),
//                 Text(
//                   'Los Angeles',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Address',
//                 ),
//                 Text(
//                   '123 Fake street Los Angeles CA 90000',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Divider(
//               height: 1,
//               thickness: 2,
//               indent: 1,
//               endIndent: 0,
//               color: Color(0xffDEE3F2),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 Text(
//                   'Detail Specifics',
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, fontSize: 18),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Agent Attire',
//                 ),
//                 Text(
//                   'Black Polo and BDU',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Armed',
//                 ),
//                 Text(
//                   'Yes',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Concealed',
//                 ),
//                 Text(
//                   'Yes',
//                    style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 10),
//             Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   ElevatedButton(
//                     child: Text('Apply'),
//                     onPressed: () {
//                       // if (_formKey.currentState!.validate()) {
//                       //   // If the form is valid, display a snackbar. In the real world,
//                       //   // you'd often call a server or save the information in a database.
//                       //   ScaffoldMessenger.of(context).showSnackBar(
//                       //     const SnackBar(
//                       //         content: Text('Processing Data')),
//                       //   );
//                       // }if (_formKey.currentState!.validate()) {
//                       //   // If the form is valid, display a snackbar. In the real world,
//                       //   // you'd often call a server or save the information in a database.
//                       //   ScaffoldMessenger.of(context).showSnackBar(
//                       //     const SnackBar(
//                       //         content: Text('Processing Data')),
//                       //   );
//                       // }
//                     },
//                     style: ButtonStyle(
//                         shape: MaterialStateProperty.all<
//                                 RoundedRectangleBorder>(
//                             RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(40.0),
//                         )),
//                         backgroundColor: MaterialStateProperty.all(
//                             Color(0xFF4169dd)),
//                         padding: MaterialStateProperty.all(
//                             EdgeInsets.only(
//                                 left: 60,
//                                 right: 60,
//                                 bottom: 20,
//                                 top: 20)),
//                         textStyle: MaterialStateProperty.all(
//                             TextStyle(fontSize: 25)),
//                         alignment: Alignment.topRight),
//                   ),
//                 ])
//           ],
//         )),
//   ],
// ),

