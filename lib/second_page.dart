import 'package:flutter/material.dart';
import 'package:sabre_app/widget/common_text_field.dart';

const primaryColor = Color(0xFF4169dd);

class SecondPageScreen extends StatefulWidget {
  const SecondPageScreen({Key? key}) : super(key: key);

  final String title = "Edit Profile";

  @override
  State<SecondPageScreen> createState() => _SecondPageScreenState();
}

class _SecondPageScreenState extends State<SecondPageScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController dobController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.text = 'abx@gmail.com';
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.clear();
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
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/image2.jpg'),
                        fit: BoxFit.cover)),
                // child: Icon(Icons.mail),
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
              Text(
                'Security guard',
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 16,
              ),

              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Email Address*",
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    CommonTextFieldWidget(
                      controller: emailController,
                      suffixIcon: Icon(Icons.email),
                      hint: "Enter your email",
                      validator: (value){
                        if (value!.isEmpty){
                          return 'Filed is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text("Phone Number*", textAlign: TextAlign.left),
                    SizedBox(
                      height: 4,
                    ),
                    CommonTextFieldWidget(
                      controller: phoneController,
                      suffixIcon: Icon(Icons.phone),
                      hint: "Enter your number",
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text("Address*", textAlign: TextAlign.left),
                    SizedBox(
                      height: 4,
                    ),
                    CommonTextFieldWidget(
                      controller: addressController,
                      suffixIcon: Icon(Icons.location_on),
                      hint: "Enter your address",
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text("Date of Birth*", textAlign: TextAlign.left),
                    SizedBox(
                      height: 4,
                    ),
                    CommonTextFieldWidget(
                      controller: dobController,
                      suffixIcon: Icon(Icons.calendar_month),
                      hint: "MM/DD/YYYY",
                    )
                  ]),

              ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
              // ListView.builder(
              //   itemCount: 5,
              //   shrinkWrap: true,
              //   itemBuilder: (context, index) {
              //   return TextFormField(
              //     decoration: InputDecoration(labelText: 'Email '),
              //   );
              // },)

              // Container(
              //     height: 60,
              //     width: MediaQuery.of(context).size.width,
              //     color: Colors.white,
              //     child: Row(
              //       children: [
              //         Icon(Icons.email_sharp),
              //         SizedBox(width: 16),
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           children: [
              //             Text('Email'),
              //             SizedBox(height: 16),
              //             Text(
              //               'johnsmith123@gmail.com',
              //               style: TextStyle(fontWeight: FontWeight.bold),
              //             )
              //           ],
              //         ),
              //       ],
              //     )),
              // SizedBox(height: 16),
              // Container(
              //     height: 60,
              //     width: MediaQuery.of(context).size.width,
              //     color: Colors.white,
              //     child: Row(
              //       children: [
              //         Icon(Icons.phone),
              //         SizedBox(width: 16),
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           children: [
              //             Text('Phone Number'),
              //             SizedBox(height: 16),
              //             Text(
              //               '323-123-4567',
              //               style: TextStyle(fontWeight: FontWeight.bold),
              //             ),
              //           ],
              //         ),
              //       ],
              //     )),
              // SizedBox(height: 16),
              // Container(
              //     height: 60,
              //     width: MediaQuery.of(context).size.width,
              //     color: Colors.white,
              //     child: Row(
              //       children: [
              //         Icon(Icons.location_on),
              //         SizedBox(width: 16),
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           children: [
              //             Text('Address*'),
              //             SizedBox(height: 16),
              //             Text(
              //               '123 Fake Street Los Angeles CA90000',
              //               style: TextStyle(fontWeight: FontWeight.bold),
              //             ),
              //           ],
              //         ),
              //       ],
              //     )),
              // SizedBox(height: 16),
              // Container(
              //     height: 60,
              //     width: MediaQuery.of(context).size.width,
              //     color: Colors.white,
              //     child: Row(
              //       children: [
              //         Icon(Icons.calendar_month),
              //         SizedBox(width: 16),
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           children: [
              //             Text('Date od Birth*'),
              //             SizedBox(height: 16),
              //             Text(
              //               'Nov 22, 1997',
              //               style: TextStyle(fontWeight: FontWeight.bold),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ))

              // children: <Widget>[
              // const Text(
              // 'You have pushed the button this many times:',
              // ),
              // Text(
              //   '$_counter',
              //   style: Theme.of(context).textTheme.headline4,
              // ),
            ],
          ),
        ),
      )),
    );
  }
}
