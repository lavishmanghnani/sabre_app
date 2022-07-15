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














Column(
children: [
Row(
children: [
Text(
'Today',
textAlign: TextAlign.left,
),
SizedBox(
height: 10,
)
],
),
Column(
children: [
Card(
child: Column(
// mainAxisSize: MainAxisSize.min,
children: <Widget>[
ListTile(
horizontalTitleGap: -5,
leading: Image.asset('assets/icons/img.png'),
title: Text(
'Assinged Job',
style: TextStyle(
fontWeight: FontWeight.bold,
),
),
subtitle: Container(
margin: EdgeInsets.only(top: 10),
child: Text(
'Employee Termination - Riverside CA. Has been assigned to you.')),
trailing: Text("2 hr ago"),
),
],
),
),
SizedBox(
height: 10,
),
],
)
],
),