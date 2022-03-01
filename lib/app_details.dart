import 'package:flutter/material.dart';
 class AppDtls extends StatefulWidget {
    
   const AppDtls({ Key? key }) : super(key: key);
 
   @override
   _AppDtlsState createState() => _AppDtlsState();
 }
 
 class _AppDtlsState extends State<AppDtls> {
   bool _customTileExpanded=false;
   bool _customTileExpanded2=false;
   bool _customTileExpanded3=false;
   
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
                Navigator.pop(context);}),
                  title: const Text('FAQ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  backgroundColor: Colors.white,
                  elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.only(bottom: 20,right: 20,left: 20),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
               decoration: BoxDecoration(
                border: Border.all(color: Colors.black),                
                borderRadius: BorderRadius.circular(15),
               ),
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  children: [
                                    ExpansionTile(  
                                      backgroundColor: Colors.transparent,                                                                                                       
                                              tilePadding: const EdgeInsets.all(5),  
                                              childrenPadding: const EdgeInsets.all(10),                  
                                      title: const Text('What is 12% Culb?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:  const [
                                          ListTile(                                          
                                            title: Text('12% Club is a technology based application (12% Club) that offers you the opportunity to earn a return of up to 12% on amounts you invest by deploying them with NBFC-peer to peer platforms("P2P NBFC Partners") and also allows borrowing from our lending partners at an interest of 12% per annum.Please note that 12% Club merely acts as a sourcing and technology partners to these regulated entities and does not guarantee return on you investment.'),
                                            ),
                                              ],
                                                trailing: Icon(_customTileExpanded?(Icons.keyboard_arrow_down):(Icons.keyboard_arrow_right),color: Colors.green,),
                                              onExpansionChanged: (bool expanded){setState(() {
                                                _customTileExpanded=expanded;
                                              }
                                              );
                                              },    
                                        ),
                                         ExpansionTile(  
                                            backgroundColor: Colors.transparent,   
                                                       tilePadding: const EdgeInsets.all(5),   
                                              childrenPadding: const EdgeInsets.all(10),                           
                                      title: const Text('Who are the NBFC partners and/or P2P NBFC Partner on the 12% Club?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children: const [
                                          ListTile(                                          
                                            title: Text('12% Club (Resilient Innovations Private Limited) partners and NBFC partners for providing these services.The investment amounts are placed with RBI regulated P2P NBFC,Innofin Solutions Private Limited ("LendDenClub") and NDX P2P Private Limited ("Liquiloans") and the borrowing is extended by RBI regulated NBFC - Hindon Mercantile Limited.'),
                                            ),
                                              ],
                                              trailing: Icon(_customTileExpanded2?(Icons.keyboard_arrow_down):(Icons.keyboard_arrow_right),color: Colors.green,),
                                              onExpansionChanged: (bool expanded){setState(() {
                                                _customTileExpanded2=expanded;
                                              });},
                                        ),
                                         ExpansionTile(      
                                            backgroundColor: Colors.transparent, 
                                                      tilePadding: const EdgeInsets.all(5),      
                                              childrenPadding: const EdgeInsets.all(10),                      
                                      title: const Text('How to create an account on 12% Club?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children: const [
                                          ListTile(                                                                                    
                                            title: Text('You can create your account by completing KYC on your 12% club. Once your account is created ,click on add money to start earning 12 % club returns on your investment(based on deployment to borrowers and repayments by borrowers through the P2P NBFC Partner) or click on borrow money to take loan at 12% interest subject to your creditworthiness as approved by our lending partner.'),
                                            ),
                                              ],
                                              trailing: Icon(_customTileExpanded3?(Icons.keyboard_arrow_down):(Icons.keyboard_arrow_right),color: Colors.green,),
                                              onExpansionChanged: (bool expanded){setState(() {
                                                _customTileExpanded3=expanded;
                                              });},
                                        ),

                  ],                
                ),
              ),
            ),
            const Text('Cannot find what you are looking for?',style: TextStyle(fontWeight: FontWeight.bold),),
            Container(
              margin: const EdgeInsets.only(top: 20,bottom: 20),
               decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15),
               ),
               child: ListTile(
                  leading: const Icon(Icons.mail,color: Colors.green,),
                  title: const Text('Let us help you! Write to us ',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.black),),
                  subtitle: const Text('Submit a request on \n support@twelve.club'),
                  trailing:const Icon(Icons.keyboard_arrow_right,color: Colors.green,),
                  onTap: (){},
               ),
            ),
          ],
        ),
      ),
    );




   }
 }
