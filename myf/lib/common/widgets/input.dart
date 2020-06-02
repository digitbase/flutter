import 'package:flutter/material.dart';
import 'package:myflutter/common/utils/utils.dart';
import 'package:myflutter/common/values/values.dart';

Widget InputContain({
    @required TextEditingController controller,
    String title = '',
    double width = 100,
    String height,
    TextInputType keyboardType = TextInputType.text,
    bool isPassword = false,
    double marginTop = 15,
  }) {


  return Container(
    width: duSetWidth(width),
    margin: EdgeInsets.only(top: duSetHeight(marginTop)),
    child: Column(children: [
      Container(
        color: AppColors.secondaryElement,
        child: TextField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(10, 5, 5, 10),
            //icon: Icon( Icons.email),
            hintText: title,
            //border: InputBorder.none,
          ),
          autocorrect: false,
          maxLines: 1,
          obscureText: isPassword,
        ),
      ),
    ]),
  );
}
