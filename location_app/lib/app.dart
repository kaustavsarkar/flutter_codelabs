import 'package:flutter/material.dart';
import 'package:location_app/screens/locations/locations.dart';
import 'package:location_app/styles.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Locations(),
      routes: {
        '/': (context) => 
      },
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(textTheme: TextTheme(headline6: AppBarTextStyle)),
          textTheme:
              TextTheme(headline6: TitleTextStyle, bodyText1: Body1Style)),
    );
  }
}
