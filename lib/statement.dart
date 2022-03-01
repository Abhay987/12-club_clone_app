

import 'package:clubapp_clone/main.dart';
import 'package:flutter/material.dart';
class StmtPage extends StatelessWidget { 
  const StmtPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const HomeScreen())));}),
                  title: const Text('12% Club Statement',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  backgroundColor: Colors.white,
                  elevation: 0,
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
          child: ListView(
            children: [              
               const Text('\nAccount Summary'),
                       Container(           
                       margin: const EdgeInsets.only(bottom: 20,top: 20),
                       padding: const EdgeInsets.all(20),
                       decoration: BoxDecoration(                         
                         shape: BoxShape.rectangle,
                         borderRadius: BorderRadius.circular(10),                        
                         color:const Color.fromARGB(255, 172, 168, 168),
                       ),
                       child: Row(                                           
                           children: [
                             const Expanded(child:  Text('Account Balance',style: TextStyle(fontWeight: FontWeight.bold)),flex: 50,),
                             const Expanded(child: Text('\u{20B9}${0}',style: TextStyle(fontWeight: FontWeight.bold)),flex: 4),
                             Expanded(child: IconButton(onPressed: (){}, icon: const Icon(Icons.info,color: Colors.green)),flex: 4),                                      
                           ],
                       ),
                     ),
                      Container(           
                       margin: const EdgeInsets.only(bottom: 20),
                       padding: const EdgeInsets.all(30),
                       decoration: BoxDecoration(                         
                         shape: BoxShape.rectangle,
                         borderRadius: BorderRadius.circular(10),                        
                         color:const Color.fromARGB(255, 172, 168, 168),
                       ),
                       child: Row(                                           
                           children: const [
                              Expanded(child:  Text('Life Time Earning',style: TextStyle(fontWeight: FontWeight.bold)),flex: 50),
                              Expanded(child: Text('\u{20B9}${0}',style: TextStyle(fontWeight: FontWeight.bold)),flex: 3),                                                              
                           ],
                       ),
                     ),

                     const Text('Recent Transactions'),
                     Container(
                       margin: const EdgeInsets.only(bottom: 20,top: 20),
                       child: Row(                       
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           OutlinedButton( 
                             style: OutlinedButton.styleFrom(
                               primary: Colors.green,
                              // backgroundColor: Colors.green,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(30),
                                 side: const BorderSide(color: Colors.green),
                               )
                             ),                                               
                             onPressed: (){}, child:const Text('All'),                        
                          ),
                          OutlinedButton( 
                             style: OutlinedButton.styleFrom(
                               primary: Colors.green,
                               
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(30),
                                 side: const BorderSide(color: Color.fromARGB(255, 10, 187, 16),width: 2),
                               )
                             ),                                               
                             onPressed: (){}, child:const Text('Deposit'),                        
                          ),OutlinedButton( 
                             style: OutlinedButton.styleFrom(
                               primary: Colors.green,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(30),
                                 side: const BorderSide(color: Colors.green),
                               )
                             ),                                               
                             onPressed: (){}, child:const Text('Withdrawal'),                        
                          ),OutlinedButton( 
                             style: OutlinedButton.styleFrom(
                               primary: Colors.green,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(30),
                                 side: const BorderSide(color: Colors.green),
                               )
                             ),                                               
                             onPressed: (){}, child:const Text('Interest'),                        
                          ),
                         ],
                       ),
                     ),
                     Card(
                       child: Container(
                         height: 200,
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
                                         Text('Dr.(-)/ Cr.(+) A/c Balance'),
                                         Text('Status'),    
                                        
                                  ],),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 20),
                                  child: Column(                                    
                                    children: const[
                                      Icon(Icons.hourglass_empty),
                                Text('No Transactions',style: TextStyle(fontWeight: FontWeight.bold),),
                                  ]),
                                ),
                                
                           ],
                         ),
                       ),
                     ),

                    
                      
                  
               
             

                             
            ],
          ),
          ),
      ),
     
    );
  }
}