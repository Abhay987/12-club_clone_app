import 'package:clubapp_clone/drawer_data.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(home: HomeScreen()));
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        elevation: 0,
        title: const Text('12% Club',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),   
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const DrawerData()));
          }, icon: const Icon(Icons.menu,color: Colors.black,)),
        ],     
        ),        
    );
  }
}