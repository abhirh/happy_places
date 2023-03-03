import 'package:flutter/material.dart';
import './providers/place_provider.dart';
import 'package:provider/provider.dart';
import './screens/places_list_screen.dart';
import './screens/add_place_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: PlaceProvider(),

      child: MaterialApp(
        title: 'Happy Places :)',
        theme: ThemeData(
          //primarySwatch: Color.fromRGBO(226,209,249, 0.0),
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName:(ctx)=> AddPlaceScreen(),
        },
      ),
    );
  }
}

