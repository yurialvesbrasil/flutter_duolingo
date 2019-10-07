import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'core/view_models/home_view_model.dart';
import 'route_generator.dart';
import 'ui/values/colors.dart';
import 'ui/values/routes.dart';
import 'ui/values/strings.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeViewModel>(
          builder: (context) => HomeViewModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: APP_NAME,
        theme: ThemeData(
          primarySwatch: primarySwatch,
          primaryColor: primaryColor,
          canvasColor: canvasColor,
          appBarTheme: AppBarTheme(
            elevation: 4,
            color: appBarThemeColor,
          ),
        ),
        initialRoute: HOME_ROUTE,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
