import 'package:clubapp_clone/main.dart';
import 'package:flutter/material.dart';
class EarnPage extends StatelessWidget {
  const EarnPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
        }, icon: const Icon(Icons.arrow_back,color: Colors.black,)),
        title: const Text('Refer & Earn',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20,bottom: 20,right: 20),
        child: ListView(
          children: [                 
              Image.asset('assets/images/refer_earn.jpg'),
            Container(
              margin:const EdgeInsets.only(top: 20,bottom: 20),
              child: const Text('Share this link with your firends',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))
              ),
              Container(   
                padding: const EdgeInsets.all(20),             
                color:const Color.fromARGB(255, 193, 194, 191),
                child: Column(
                  children: [
                    Stack(
                          children: [
                            Container(                             
                              padding: const EdgeInsets.all(20),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                                shape: BoxShape.rectangle                            
                              ),
                              child: const Text('https://github.com/Abhay987'),                              
                            ),
                              Container(
                                alignment: Alignment.centerRight,
                                padding: const EdgeInsets.all(10),
                                child: ElevatedButton(                            
                                 child: const Text('Copy Link',style: TextStyle(fontWeight: FontWeight.bold),),
                                 onPressed: (){
                                  const snackBar=SnackBar(
                                    duration: Duration(milliseconds: 200),
                                     backgroundColor: Colors.green,
                                    content: Text('Link copied successfully',style: TextStyle(color: Colors.white),));
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  /* showModalBottomSheet(
                                     
                                     context: context, builder: (context)=>Container(
                                     color: Colors.green,
                                     height: 50,
                                     child: const Text('Link copied successfully',style: TextStyle(color: Colors.white),)));      */
                                 },
                                 style: ElevatedButton.styleFrom(
                                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                                   primary: Colors.green,
                                   onPrimary: Colors.white
                                 ),
                                 ),
                              ),
                              ],
                    ),
                    Column(               
                        children: [                          
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                          
                            children: [
                             IconButton(onPressed: (){}, icon: const Icon(Icons.whatsapp)),
                             IconButton(onPressed: (){}, icon: const Icon(Icons.mail)),                             
                            ],
                          ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,                             
                            children: const[
                              Text('Whatsapp'),
                              Text('Gmail'),                                                            
                            ],
                          ),
                        ],
                      ),
                   
                  ],
                ),
              ),

              
                   Container(                           
                          decoration: BoxDecoration(border: Border.all(color: Colors.black)),    
                     margin:const  EdgeInsets.only(top: 20),
                     child: Column(                     
                       children: [
                         Container(
                          color:const Color.fromARGB(255, 180, 173, 173),                        
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: const [
                                        Text('Benefits for you '),
                                  Text('Benefits for friends'),                                 
                             ],                         
                           ),
                         ),
                         Table(                         
                          border: const TableBorder(verticalInside: BorderSide(color: Colors.black),horizontalInside: BorderSide(color: Colors.black)),
                           children: const [
                             TableRow(
                              
                               children: [
                                 Padding(padding: EdgeInsets.all(12),
                                 child: Center(child: Text('You earn 10% of your friends earnings'),),
                                 ),
                                   Padding(padding: EdgeInsets.all(12),
                                 child: Center(child: Text('Up to 12% earnings on investment'),),
                                 ),                                                              
                               ]
                             ),
                             TableRow(
                               children: [
                                 Padding(padding: EdgeInsets.all(12),
                                 child: Center(child: Text('You earn 10% of your friends earnings'),),
                                 ),
                                   Padding(padding: EdgeInsets.all(12),
                                 child: Center(child: Text('Up to 12% earnings on investment'),),
                                 ),                                                    
                               ]
                             ),
                           ],
                         ),

                        
                       ],
                     ),
                   ),
          ],
        ),
        ),
    );
  }
}