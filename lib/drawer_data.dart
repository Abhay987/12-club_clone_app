import 'package:clubapp_clone/help_support.dart';
import 'package:clubapp_clone/invst_crtft.dart';
import 'package:clubapp_clone/main.dart';
import 'package:clubapp_clone/p2p_lending.dart';
import 'package:clubapp_clone/refer_earn.dart';
import 'package:clubapp_clone/terms_condition.dart';
import 'package:flutter/material.dart';
import 'package:clubapp_clone/profile.dart';
import 'package:clubapp_clone/statement.dart';
class DrawerData extends StatelessWidget {
  const DrawerData({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
            appBar: AppBar(                           
                title: const Text('Hi Abhay S,\nWelcome to the',style: TextStyle(color: Colors.black),),  
                backgroundColor: Colors.white,    
                elevation: 0,        
                actions: [
                    IconButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeScreen()));
                    }, icon: const Icon(Icons.close,color: Colors.green,)),
                ],
            ),
            body: Container(        
              color: Colors.white,      
                margin:const EdgeInsets.only(bottom: 20,left: 20,right: 20),
                child: ListView(                
                  children: [
                    const Text('12%club',style: TextStyle(
                                 fontSize: 40,
                                 color: Color.fromARGB(255, 5, 177, 28),fontWeight: FontWeight.bold)),
                   /* DrawerHeader(
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [                                                       
                               Text('12% club',style: TextStyle(
                                 fontSize: 35,
                                 color: Color.fromARGB(255, 5, 177, 28),fontWeight: FontWeight.bold)),
                              ],
                            ),
                    ),         */
    /* 
                    UserAccountsDrawerHeader(
                      accountName:  Text('Hi Abhay S,\n Welcome to the'),
                       accountEmail:  Text('12% club',style: TextStyle(color: Color.fromARGB(255, 9, 230, 123),
                       fontWeight: FontWeight.bold),)), */
                       Container(
                         decoration:  BoxDecoration(
                           border: Border.all(color:const Color.fromARGB(255, 235, 223, 223)),
                                                 
                           
                                                 
                         ),
                         child: Column(                       
                           children: [
                                       ListTile(
                           leading: const Icon(Icons.home),
                           title: const Text('Home'),
                           trailing: const Icon(Icons.keyboard_arrow_right),    
                           onTap: (){
                             Navigator.pop(context);
                           },          
                         ),
                          const Divider(),
                          ListTile(
                           leading: const Icon(Icons.account_circle),
                           title: const Text('Profile'),
                           trailing: const Icon(Icons.keyboard_arrow_right),     
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => const ProfilePage())));
                            },          
                         ),
                         const Divider(),
                          ListTile(
                           leading: const Icon(Icons.menu_book),
                           title: const Text('Statement'),
                           trailing: const Icon(Icons.keyboard_arrow_right),            
                            onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: ((context) => const StmtPage())));
                            },   
                         ),
                         const Divider(),
                          ListTile(
                           leading: const Icon(Icons.group_add),
                           title: const Text('Refer & Earn'),
                           trailing:const  Icon(Icons.keyboard_arrow_right),   
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const EarnPage()));
                            },            
                         ),
                         const Divider(),
                          ListTile(
                           leading: const Icon(Icons.inventory_sharp),
                           title:const  Text('Investment Certificates'),
                           trailing: const Icon(Icons.keyboard_arrow_right),    
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const InvstCrtft()));
                            },           
                         ),
                         
                           ],
                         ),
                       ),
                      Container(
                        margin: const EdgeInsets.only(top: 20,bottom: 20),
                        child: const Text('Need Help?',style: TextStyle(fontWeight: FontWeight.bold),),
                      ), 
    
                      Container(
                         decoration:  BoxDecoration(
                           border: Border.all(color:const Color.fromARGB(255, 235, 223, 223)),
                                                 
                         ),
                         child: Column(                       
                           children: [
                                       ListTile(
                           leading:const Icon(Icons.contact_support),
                           title: const Text('Help and Support'),
                           trailing: const Icon(Icons.keyboard_arrow_right),    
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const HelpSupport()));
                            },           
                         ),
                         const  Divider(),
                          ListTile(
                           leading:const  Icon(Icons.info),
                           title:const  Text('Term & Conditions'),
                           trailing:const  Icon(Icons.keyboard_arrow_right),   
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => const TrmsCdtn())));
                            },            
                         ),                        
                         const Divider(),
                          ListTile(
                           leading:const  Icon(Icons.account_balance_wallet_outlined),
                           title: const Text('Know more about P2P lending'),
                           trailing:const  Icon(Icons.keyboard_arrow_right),             
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const P2pLdg()));
                            },  
                         ),             
                           ],
                         ),
                       ),
                       
                      
    
    
                  ],
                ),
              ),
      ),
    );
  }
}