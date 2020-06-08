import 'package:myflutter/pages/sign_in.dart';
import 'package:myflutter/pages/sign_up.dart';
import 'common/widgets/widgets.dart';

var staticRoutes = {
  "/": (context) => DuNavigatorDemo(),
  "/sign-in": (contxt) => DuPage(title: 'About'),
  "/sign-up": (contxt) => SingUpPage(),
  '/about': (context) => DuSliver(),
  '/form': (context) => DuFormDemo(),
  '/home': (context) => DuPage(title: 'home'),
  '/button': (context) => DuButtonDemo(),
  '/popmenu': (context) => DuPopMenuButtonDemo(),
  '/DuForm2Demo': (context) => DuForm2Demo(),
  '/DateTime': (context) => DateTimeDemo(),
  '/chipdemo': (context) => DuChipDemo(),
  '/dataTable': (context) => DuDataTableDemo(),
  '/paginateTable': (context) => PaginateTableDemo(),
};
