import 'package:flutter/material.dart';
import 'package:myflutter/common/utils/utils.dart';

Container createButton({
  String title = '',
  double width = 200,
  double height = 20,
}) {
  return Container(
    width: duSetWidth(width),
    //height: duSetHeight(height),
    //color: Colors.red,
    child: FlatButton(
      color: Colors.red,
      padding:EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),  
      ),
      onPressed: () {},
      child: Text(
        title,
        style:TextStyle(

          color:Colors.white
        ),
      ),
    ),
  );
}
