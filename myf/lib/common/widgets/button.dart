import 'package:flutter/material.dart';
import 'package:myflutter/common/utils/utils.dart';
import 'package:myflutter/common/values/values.dart';

Container createButton({
  VoidCallback onPressed,
  Color gbColor = AppColors.primaryElement,
  String title = 'button',
  Color fontColor = AppColors.primaryElementText,
  double fontSize = 18,
  FontWeight fontWeight = FontWeight.w400,
  double width = 140,
  double height = 34,
}) {
  return Container(
    width: duSetWidth(width),
    height: duSetHeight(height),
    //color: Colors.red,
    child: FlatButton(
      color: gbColor,
      padding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontWeight: fontWeight,
          color: fontColor,
          fontSize: fontSize,
        ),
      ),
    ),
  );
}

/// 第三方按钮
Widget btnFlatButtonBorderOnlyWidget({
  @required VoidCallback onPressed,
  double width = 88,
  double height = 44,
  String iconFileName,
}) {
  return Container(
    width: duSetWidth(width),
    height: duSetHeight(height),
    child: FlatButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
          // side: Borders.primaryBorder,
          // borderRadius: Radii.k6pxRadius,
          ),
      child: Image.asset(
        "assets/images/icons-$iconFileName.png",
      ),
    ),
  );
}
