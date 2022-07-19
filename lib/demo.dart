import 'package:flutter/material.dart';


class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 99,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.teal[(index)],
                        child: const FlutterLogo()
                      );
            },
              // primary: false,
              // padding: const EdgeInsets.all(20),
              // crossAxisSpacing: 10,
              // mainAxisSpacing: 10,
              // crossAxisCount: 2,
              // children: [
              //   Container(
              //     padding: const EdgeInsets.all(8),
              //     color: Colors.teal[100],
              //     child: const Text("He'd have you all unravel at the"),
              //   )
              // ],
            ),
          ],
        ),
      )
    );
  }
}
