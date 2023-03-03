import 'package:flutter/material.dart';
import 'package:happy_places/widgets/image_input.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName='/add-place';


  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title:const Text('Add Places'),backgroundColor: const Color.fromRGBO(49, 119, 115,0.9),),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                TextField(
                decoration: const InputDecoration(labelText: 'Title'),
                controller: _titleController,
              ),
                 const SizedBox(height: 10,),
                ImageInput(),
              ],),
            ),
          ),),
          ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.add), label: const Text('Add Place'),
            style: ElevatedButton.styleFrom(
              elevation: 0,tapTargetSize:MaterialTapTargetSize.shrinkWrap,
            primary: const Color.fromRGBO(49,88,119,0.9),),),
        ],
      ),
    );
  }

}
// Color.fromRGBO(225, 169, 235,1)
// Color.fromRGBO(49, 119, 115,1)
// rgb(49,88,119)