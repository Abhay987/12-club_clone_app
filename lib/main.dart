
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
      appBar: PreferredSize(    
        preferredSize: const Size.fromHeight(80),  
        child: AppBar(
                backgroundColor:Colors.white,  
        automaticallyImplyLeading: false,
       // toolbarHeight: 100,        
        elevation: 0,
        title:        
          Column(            
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [  
              Row(
                
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                          const Text('12% Club',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20),),
                            IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => const DrawerData())));
                            }, icon: const Icon(Icons.menu,color: Colors.black,)),
                    ],
              ),             
                 const Text('Invest now and earn up to 12% interest',style: TextStyle(color: Colors.black,fontSize: 20),),
            ],
          ), 
        ), 
              
      
        ),              
    );
  }
}