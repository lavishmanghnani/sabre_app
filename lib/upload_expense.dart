import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UploadExpenseScreen extends StatefulWidget {
  const UploadExpenseScreen({Key? key}) : super(key: key);

  @override
  State<UploadExpenseScreen> createState() => _UploadExpenseScreenState();
}

class _UploadExpenseScreenState extends State<UploadExpenseScreen> with  SingleTickerProviderStateMixin {
  final primaryColor = const Color(0xFF4169DD);

  late TabController _tabController;

  final _selectedColor = Colors.white;
  final _unselectedColor = Color(0xFF4169DD);
  final _tabs = [
    Tab(text: 'Upload'),
    Tab(text: 'MY Expense'),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: const Color(0xffE9E9E9),
              appBar: AppBar(
                  systemOverlayStyle:
                      SystemUiOverlayStyle(statusBarColor: primaryColor),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  )),
                  backgroundColor: primaryColor,
                  leading: const Icon(Icons.arrow_back_outlined),
                  title: const Text("Upload Expense"),
                  centerTitle: true,
                  bottom: TabBar(
                    padding: EdgeInsets.all(10),
                    controller: _tabController,
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.white,
                    tabs: _tabs,
                    indicator: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      color: Colors.white,
                    ),
                  )),
            )));
  }
}
