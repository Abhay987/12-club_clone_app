
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class GrvRds extends StatelessWidget {
  const GrvRds({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
                Navigator.pop(context);}),
                  title: const Text('Grievance Redressal',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
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
                                              tilePadding:  const EdgeInsets.all(5),  
                                              childrenPadding:  const EdgeInsets.all(10),                  
                                      title:  const  Text('In case I have any grievance or complaints or have any questions on the product, where can I contact you/your lending partner? ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:   [
                                          ListTile(                                              
                                                title: RichText(                                                  
                                                  text:   TextSpan(                                                    
                                                  children: [
                                                     const TextSpan(
                                                      text:"In case of any assistance, please reach us at: ",
                                                    ),
                                                      TextSpan(                                                       
                                                      text:" support@twelve.club ",
                                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                                      
                                                      recognizer: TapGestureRecognizer()..onTap=() async{
                                                         String url="support@twelve.club";
                                                         if(await canLaunch("mailto:$url")==true){
                                                          await launch("mailto:$url");                                                           
                                                         }else{
                                                           throw 'Could not lauch';
                                                         }                                                       
                                                      }                                                      
                                                    ),
                                                    const TextSpan(
                                                            text: ' If you are a Borrower and wish to reach out our lending partner regarding your loan, please contact:\n1. Name: Hindon Mercantile Limited \nEmail: ',
                                                    ),
                                                      TextSpan(                                                       
                                                      text:"\n helpdesk@mufinfinance.com ",
                                                      style: const TextStyle(fontWeight: FontWeight.bold),                                                      
                                                      recognizer: TapGestureRecognizer()..onTap=() async{
                                                         String url="helpdesk@mufinfinance.com";
                                                         if(await canLaunch("mailto:$url")==true){
                                                          await launch("mailto:$url");                                                           
                                                         }else{
                                                           throw 'Could not lauch';
                                                         }                                                       
                                                      }                                                      
                                                    ),
                                                    const TextSpan(
                                                      text:"\n In case you wish to reach out to our NBFC P2P Partner regarding your investment, please contact: \nName: ",
                                                    ),
                                                    const TextSpan(
                                                      text:" NDX P2P Private Limited (Liquiloans) ",
                                                      style: TextStyle(fontWeight: FontWeight.bold),
                                                    ),
                                                     const TextSpan(
                                                      text:"\n Grievance redressal link: ",
                                                    ),
                                                    TextSpan(                                                       
                                                      text:" \n https://www.liquiloans.com/customer-grievances-redressal-mechanism ",
                                                      style: const TextStyle(fontWeight: FontWeight.bold),                                                      
                                                      recognizer: TapGestureRecognizer()..onTap=() async{
                                                         String url="https://www.liquiloans.com/customer-grievances-redressal-mechanism";
                                                         if(await canLaunch(url)==true){
                                                          await launch(url);                                                           
                                                         }else{
                                                           throw 'Could not lauch';
                                                         }                                                       
                                                      }                                                      
                                                    ),
                                                    const TextSpan(
                                                      text:"\n Email : ",
                                                    ),
                                                  TextSpan(                                                       
                                                      text:"\n customercare@liquiloans.com ",
                                                      style: const TextStyle(fontWeight: FontWeight.bold),                                                      
                                                      recognizer: TapGestureRecognizer()..onTap=() async{
                                                         String url="customercare@liquiloans.com";
                                                         if(await canLaunch("mailto:$url")==true){
                                                          await launch("mailto:$url");                                                           
                                                         }else{
                                                           throw 'Could not lauch';
                                                         }                                                       
                                                      }                                                      
                                                    ),
                                                     const TextSpan(
                                                      text:" and/or ",
                                                    ),
                                                     TextSpan(                                                       
                                                      text:" info@liquiloans.com ",
                                                      style: const TextStyle(fontWeight: FontWeight.bold),                                                      
                                                      recognizer: TapGestureRecognizer()..onTap=() async{
                                                         String url="info@liquiloans.com";
                                                         if(await canLaunch("mailto:$url")==true){
                                                          await launch("mailto:$url");                                                           
                                                         }else{
                                                           throw 'Could not lauch';
                                                         }                                                       
                                                      }                                                      
                                                    ),
                                                     const TextSpan(
                                                      text:"\n 2. Name: Innofin Solutions Private Limited (LenDenClub) \nGrievance redressal link: ",
                                                    ),
                                                             TextSpan(                                                       
                                                      text:"\n https://www.lendenclub.com/grievance-redressal-mechanism/  ",
                                                      style: const TextStyle(fontWeight: FontWeight.bold),                                                      
                                                      recognizer: TapGestureRecognizer()..onTap=() async{
                                                         String url="https://www.lendenclub.com/grievance-redressal-mechanism/";
                                                         if(await canLaunch(url)==true){
                                                          await launch(url);                                                           
                                                         }else{
                                                           throw 'Could not lauch';
                                                         }                                                       
                                                      }                                                      
                                                    ),
                                                     const TextSpan(
                                                      text:"\n Email: ",
                                                    ),
                                                    TextSpan(                                                       
                                                      text:" cs@lendenclub.com ",
                                                      style: const TextStyle(fontWeight: FontWeight.bold),                                                      
                                                      recognizer: TapGestureRecognizer()..onTap=() async{
                                                         String url="cs@lendenclub.com";
                                                         if(await canLaunch("mailto:$url")==true){
                                                          await launch("mailto:$url");                                                           
                                                         }else{
                                                           throw 'Could not lauch';
                                                         }                                                       
                                                      }                                                      
                                                    ),


                                                  ],

                                                )),                                       
                                           
                                            ),
                                              ],                                                
                                        ),
                  ],                
                ),
              ),
            ),
            const Text('Cannot find what you are looking for?',style: TextStyle(fontWeight: FontWeight.bold),),
            Container(
              margin: const EdgeInsets.only(top: 20,bottom: 20),
              padding: const EdgeInsets.all(1),
               decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15),
               ),
               child: ListTile(
                  leading: const Icon(Icons.mail,color: Colors.green,),
                  title: const Text('Let us help you! Write to us ',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.black),),
                  subtitle: RichText(text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Submit a request on \n',
                      ),
                      TextSpan(
                        text: 'support@twelve.club',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]
                  )),
                  trailing:const Icon(Icons.keyboard_arrow_right,color: Colors.green,),
                  onTap: (){                      
                              final Uri params=Uri(
                                scheme: 'mailto',
                                path: 'support@twelve.club',
                                query: 'subject=Issue with 12% Club',
                              );
                              String url=params.toString();                                                       
                               launch(url);  
                               },
               ),
            ),
          ],
        ),
      ),
    );
  }
}