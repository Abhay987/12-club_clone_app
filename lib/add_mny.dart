import 'package:clubapp_clone/earn_club.dart';
import 'package:flutter/material.dart';
class AddMny extends StatelessWidget {
  const AddMny({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
                  Navigator.pop(context);}),
                    title: const Text('Add Money to 12% Club',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    leadingWidth: 30,
                    backgroundColor: Colors.white,
                    elevation: 0,  
        ),
        body: Container(
           margin: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 20),
          child: ListView(          
            children:  [
              Container( 
                margin: const EdgeInsets.only(bottom: 20),               
              padding: const EdgeInsets.all(20),          
                decoration: BoxDecoration(
                  color:const Color.fromARGB(255, 225, 236, 243),
                         borderRadius: BorderRadius.circular(10),
                border: Border.all(color:const Color.fromARGB(255, 225, 236, 243)),             
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Add Money',style: TextStyle(fontWeight: FontWeight.bold,fontSize:30)),                           
                         IconButton(onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: ((context) => const EarnTvl())));
                         }, icon: const Icon(Icons.help_outline_outlined,color: Colors.green,)),
                        ],
                      ),
                      const Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           const Text('Enter\nAmount',style: TextStyle(fontSize:30)),
                         TextButton(
                           onPressed: (){},
                            child: const Text("\u{20B9}${'1,00,000'}",                            
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.black)),
                            style: TextButton.styleFrom(backgroundColor: Colors.white,padding: const EdgeInsets.fromLTRB(20, 40,20, 40)),                            
                            ),
                        ],
                      ),
                       const Divider(
                             color: Colors.black,
                        thickness: 1,
                       ),                 
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: const [                         
                          Text('Max. Amount',style: TextStyle(fontSize:25)),
                           Text( "\u{20B9}${'1,00,000'}",style: TextStyle(fontWeight: FontWeight.bold,fontSize:25)),
                       ],
                     ),                   
                      ],
                ),
              ),
              const Text('Amount includes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              Container(              
                margin: const EdgeInsets.only(top: 20,bottom: 20),
              padding: const EdgeInsets.all(20),          
                decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                         borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),             
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                           Text('Investment',style: TextStyle(fontSize:20)),
                           Text( "\u{20B9}${'1,00,000'}",style: TextStyle(fontSize:20)),
                        ],
                      ),                                       
                     Container(
                       margin: const EdgeInsets.only(top: 20),
                       child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:const [
                            Icon(Icons.square,color: Colors.green),
                             Text("Interest earning \u{20B9}${'32.88'} / day",style: TextStyle(fontSize:18)),                      
                          ],
                        ),
                     ),                    
                  ],
                ),
              ),
                TextButton(onPressed: (){}, child: const Text('ADD MONEY'),                            
                                  style: TextButton.styleFrom(padding: const EdgeInsets.all(10),
                                  backgroundColor: Colors.green,
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),)                      
                                  ),),                           
            ],            
          ),
        ),
      ),
    );
  }
}