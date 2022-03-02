import 'package:clubapp_clone/grivc_rds.dart';
import 'package:clubapp_clone/app_details.dart';
import 'package:clubapp_clone/brw_mny.dart';
import 'package:clubapp_clone/invstwth_club.dart';
import 'package:clubapp_clone/main.dart';
import 'package:clubapp_clone/money_wtdr.dart';
import 'package:flutter/material.dart';
class HelpSupport extends StatelessWidget {
  const HelpSupport({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
      appBar: AppBar(
         leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const HomeScreen())));}),
                  title: const Text('FAQ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  backgroundColor: Colors.white,
                  elevation: 0,
      ),
      body: Container(margin: const EdgeInsets.only(bottom: 20,left: 20,right: 20),
      child: ListView(children:  [
        Container(
          decoration: BoxDecoration(
    border: Border.all(color: Colors.black),
    borderRadius: BorderRadius.circular(15),
  ),
          child: Column(children: [
             ListTile(           
                  contentPadding: const EdgeInsets.all(5),     
                    leading:const Icon(Icons.info,color: Colors.green),
                    title: const Text('Details on 12% Club'),
                    trailing: const Icon(Icons.keyboard_arrow_right,color: Colors.green),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => const AppDtls())));
                    },
              ),
              const Divider(
                color: Colors.black,
              ),
               ListTile(
                      contentPadding: const EdgeInsets.all(5),   
                    leading: const Icon(Icons.account_circle,color: Colors.green),
                    title: const Text('Investing with 12% Club'),
                    trailing: const Icon(Icons.keyboard_arrow_right),
                        onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => const InvstClub())));
                        },
              ),
               const Divider(  color: Colors.black,),
               ListTile(
                      contentPadding: const EdgeInsets.all(5),   
                    leading: const Icon(Icons.monetization_on,color: Colors.green),
                    title: const Text('Money withdrawal from 12% Club'),
                    trailing: const Icon(Icons.keyboard_arrow_right,color: Colors.green),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => const MnyWtdr())));
                        },
              ),
               const Divider(  color: Colors.black,),
               ListTile(
                      contentPadding: const EdgeInsets.all(5),   
                    leading: const Icon(Icons.mobile_friendly,color: Colors.green),
                    title: const Text('Borrowing with 12% Club'),
                    trailing: const Icon(Icons.keyboard_arrow_right,color: Colors.green),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const BrwMny()));
                        },
              ),
               const Divider(  color: Colors.black,),
               ListTile(
                      contentPadding: const EdgeInsets.all(5),   
                   leading: const Icon(Icons.help,color: Colors.green),
                    title: const Text('Grievance Redressal'),
                    trailing: const Icon(Icons.keyboard_arrow_right,color: Colors.green),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => const GrvRds())));
                        },
              ),
          ]),
        ),

             
      ]
      ),
      ),
      
    );
  
    
  }
}