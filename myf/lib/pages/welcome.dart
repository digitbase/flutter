import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myflutter/common/utils/utils.dart';
import 'package:myflutter/common/values/values.dart';
import 'package:myflutter/common/widgets/widgets.dart';

class Welcomepage extends StatefulWidget {
  @override
  _WelcomepageState createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 375, height: 812 - 70, allowFontScaling: true);

    return Container(
      child: DuSliver(),
    );
  }

  Widget _buildPagesHeadTitle() {
    return Container(
      width: duSetWidth(242),
      child: Text(
        'Feature',
        style: TextStyle(
          color: AppColors.primaryElement,
        ),
      ),
    );
  }

  Widget _buildPagesHeadDetail() {
    return Text('1');
  }

  Widget _buildFeatureItem() {
    return Text('1');
  }

  Widget _buildSartButtom() {
    return Container(
      height: duSetHeight(30),
      width: duSetWidth(100),
      color: Colors.blue,
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/sign-in');
        },
        child: Text(
          'Sign In',
          style: TextStyle(
            color: Colors.white,
            fontSize: duSetFontSize(20),
          ),
        ),
      ),
    );
  }
}
