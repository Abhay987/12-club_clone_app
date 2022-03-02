import 'package:clubapp_clone/main.dart';

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isPressed=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
                 leading: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));}, icon: const Icon(Icons.arrow_back,color: Colors.black,)),
                title: const Text('Profile',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                actions: [
                  TextButton.icon(onPressed: (){}, icon: const Icon(Icons.arrow_right_alt,color: Colors.green,), label: const Text('Logout',style: TextStyle(color: Colors.green))),
                ],
        ),
        body: Container(
          margin: const EdgeInsets.only(bottom: 20,left: 20,right: 20),
          child: ListView(                      
            children: [             
              Container(height: 10),
               ListTile(                
                title: const Text('Bank Account',style: TextStyle(fontWeight: FontWeight.bold),),                
                 trailing: TextButton(onPressed: (){}, child: const Text('CHANGE ACCOUNT >',style: TextStyle(color: Colors.green))),
              ),/*
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Bank Account'),
                    TextButton.icon(onPressed: (){},label: const Text('Change Account'),icon: const Icon(Icons.arrow_right_alt), ), 
                  ],
                ),                                */
                Card(
                  
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                            /*const ListTile(
                      title: Text('Name'),
                      subtitle: Text('\nABHAY S'),
                      trailing: Icon(Icons.account_balance)
                  ),*/

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                          Column(
                                children: const [
                                   Text('\nName'),
                                   Text('\nANKIT',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],                                
                              ),
                               Column(
                                children: const [
                                      Icon(Icons.account_balance),
                                ],                                
                              ),
                    ],
                  ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                              Column(
                                children: const [
                                   Text('\nBank (IFSC: SBINXXXXXXX)'),
                                   Text('\nSTATE BANK OF INDIA\n',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],                                
                              ),
                              Column(
                                children: const[
                                  Text('\nAccount Number'),
                                  Text('\nXXXX-0006\n',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                          ],
                        ),


                  ]),
                ),
               
               
                        Container(
                          margin: const EdgeInsets.only(top: 20,bottom: 20),
                          child: const Text('Account',style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
            
            
                           Container(
                             
                  
                             decoration:  BoxDecoration(
                               border: Border.all(color:const Color.fromARGB(255, 235, 223, 223)),
                               
                                                     
                             ),
                             child: Column(  
                                                 
                               children: [
                                           ListTile(
                                             contentPadding: const EdgeInsets.all(10),
                               leading: const Icon(Icons.call,color:Color.fromARGB(255, 4, 170, 9)),
                               title: const Text('Phone Number',style: TextStyle(color: Color.fromARGB(255, 5, 170, 11))),
                              
                               subtitle: const Text('\n0123456789'),
                               trailing: const Icon(Icons.verified_sharp,color: Color.fromARGB(255, 4, 170, 9),),    
                               onTap: (){},          
                             ),
                              const Divider(),
                              
                                      ExpansionTile(  
                                      backgroundColor: Colors.transparent,                                                                                                       
                                              tilePadding: const EdgeInsets.all(10), 
                                               leading: const Icon(Icons.email,color: Color.fromARGB(255, 4, 170, 9)),
                                                trailing: Icon(isPressed?(Icons.close):(Icons.edit),color: Colors.green,),
                                                onExpansionChanged: (bool expaned){
                                                  setState(() {
                                                    isPressed=expaned;
                                                  });
                                                },                                             
                                              childrenPadding:  const EdgeInsets.all(10),                  
                                                      title:  const Text('Email ID',style: TextStyle(color: Color.fromARGB(255, 5, 170, 11))),                                                
                                          children:   const [
                                           ListTile(                                          
                                            title: TextField(
                                              keyboardType: TextInputType.emailAddress,
                                            ),
                                                  trailing: Icon(Icons.keyboard_arrow_right_rounded),
                                            ),                                            
                                              ],                                                
                                        ),

                             /* ListTile(
                                contentPadding: const EdgeInsets.all(10),
                               leading: const Icon(Icons.email,color: Color.fromARGB(255, 4, 170, 9)),
                               title: const Text('Email ID',style: TextStyle(color: Color.fromARGB(255, 5, 170, 11))),                                 
                                   trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.edit),color:const Color.fromARGB(255, 5, 170, 11)),      
                             ),*/
                             const Divider(),
                              ListTile(
                                contentPadding: const EdgeInsets.all(10),
                               leading: const Icon(Icons.calendar_view_month),
                               title: const Text('DOB',style: TextStyle(color: Color.fromARGB(255, 5, 170, 11))),
                               subtitle: const Text('\n01 Dec ,1990 '),
                               trailing: const Icon(Icons.verified_sharp,color: Color.fromARGB(255, 4, 170, 9)),            
                                onTap: (){},   
                             ),
                             const Divider(),
                              ListTile(
                                contentPadding: const EdgeInsets.all(10),
                               leading: const Icon(Icons.location_on,color: Color.fromARGB(255, 4, 170, 9)),
                               title: const Text('Address',style: TextStyle(color: Color.fromARGB(255, 5, 170, 11))),
                               subtitle: const Text('\nC/O Father Name,State - Pincode'),
                               trailing:const  Icon(Icons.verified_sharp,color: Color.fromARGB(255, 4, 170, 9)),   
                                onTap: (){},            
                             ),
                             const Divider(),
                              ListTile(
                                contentPadding: const EdgeInsets.all(10),
                               leading: const Icon(Icons.verified_user,color: Color.fromARGB(255, 4, 170, 9)),
                               title:const  Text('KYC Verification',style: TextStyle(color: Color.fromARGB(255, 5, 170, 11))),
                                subtitle: const Text('\nCompleted'),
                               trailing: const Icon(Icons.verified_sharp,color: Color.fromARGB(255, 4, 170, 9)),    
                                onTap: (){},           
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