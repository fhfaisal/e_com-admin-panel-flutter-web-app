import 'package:get/get.dart';
import 'package:t_store/app.dart';
import 'package:t_store/features/routes/routes.dart';

class TAppRoute{
  static List<GetPage> pages=[
    GetPage(name: TRoutes.firstScreen, page: ()=>const FirstScreen()),
    GetPage(name: TRoutes.secondScreen, page: ()=>const SecondScreen()),
    GetPage(name: TRoutes.secondScreenWithUserId, page: ()=>const SecondScreen()),
    GetPage(name: TRoutes.responsiveDesignScreen, page: ()=>const ResponsiveDesignScreen()),
  ];
}