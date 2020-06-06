import 'package:flutter_screenutil/flutter_screenutil.dart';

class Post {
  final String title, author, imageUrl;

  Post(this.title, this.author, this.imageUrl);
}

List<Post> posts = [
  Post('test1', 'author1', 'assets/images/01.jpg'),
  Post('test2', 'author2', 'assets/images/02.jpg'),
  Post('test3', 'author3', 'assets/images/03.jpg')
];

/// 设置宽度
double duSetWidth(double width) {
  return ScreenUtil().setWidth(width);
}

/// 设置宽度
double duSetHeight(double height) {
  return ScreenUtil().setHeight(height);
}

/// 设置字体尺寸
double duSetFontSize(double fontSize) {
  return ScreenUtil().setSp(fontSize);
}
