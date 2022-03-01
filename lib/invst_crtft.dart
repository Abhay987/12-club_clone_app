import 'package:clubapp_clone/main.dart';
import 'package:flutter/material.dart';
class InvstCrtft extends StatelessWidget {
  const InvstCrtft({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const HomeScreen())));}),
                  title: const Text('Investment Certificates',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  backgroundColor: Colors.white,
                  elevation: 0
      ),  
      body: Container(
        margin: const EdgeInsets.only(bottom: 20,left: 20,right: 20),
        child: ListView(
          children: [
            Container(
              margin:const EdgeInsets.only(bottom: 20),
              child: const Text('Recent Transactions'),
            ),
             Card(
                       child: Container(
                         height: 300,
                         child: Column(   
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,                                             
                           children: [
                                Container(
                                  color:const Color.fromARGB(255, 180, 173, 173),
                                  height: 40,
                                  
                                  child: Row(                                                                                            
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                         Text('Date'),
                                         Text('Amount'),
                                         Text('Certificate'),    
                                        
                                  ],),
                                ),
                                const Icon(Icons.hourglass_empty),
                               Container(margin: const EdgeInsets.only(bottom: 40),
                                 child: const Text('No Transactions',style: TextStyle(fontWeight: FontWeight.bold),)),
                               
                                
                           ],
                         ),
                       ),
                     ),

          ],
        ),
        ),  
    );
  }
}