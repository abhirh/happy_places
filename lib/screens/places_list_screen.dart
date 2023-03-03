import 'package:flutter/material.dart';
import 'package:happy_places/screens/add_place_screen.dart';
import 'place_details_screen.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(49, 119, 115,1),
        title: const Text('Your Places'),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
          }, icon: const Icon(Icons.add))
        ],
      ),
      body: const Center(child: CircularProgressIndicator()),
    );
  }
}
