// common text field
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonTextFieldWidget extends StatelessWidget {
  IconData? prefixicon;
  Color? bgColor;
  bool? isPassword;
  String? Function(String?)? validator;
  bool? isPasswordShow = false;
  String? hint;
  TextEditingController? controller;
  int? value = 0;
  Widget? suffixIcon;

  CommonTextFieldWidget(
      {Key? key,
        this.prefixicon,
        this.isPassword: false,
        this.hint,
        this.controller,
        this.bgColor,
        this.validator,
        this.suffixIcon
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              obscureText: isPasswordShow!,
              autofillHints: const [AutofillHints.email],
              validator: validator,
              keyboardType:
              isPassword! ? TextInputType.text : TextInputType.text,
              maxLength: isPassword! ? 16 : 150,
              textInputAction:
              isPassword! ? TextInputAction.done : TextInputAction.next,
              decoration: InputDecoration(
                  hintText: hint,
                  counterText: "",
                  filled: true,
                  //   fillColor: AppTheme.loginLabelColor,
                  focusColor: Colors.blue,
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                  // focusedBorder: InputBorder.none,
                  // enabledBorder: InputBorder.none,
                  // errorBorder: InputBorder.none,
                  // disabledBorder: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0)),
                  // prefixIcon: Icon(
                  // //  icon,
                  //   color: Colors.grey,
                  // ),
                  suffixIcon: suffixIcon),
            ),
          ),
        ],
      ),
    );
  }
}
