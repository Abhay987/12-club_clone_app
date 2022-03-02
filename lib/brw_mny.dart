import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class BrwMny extends StatelessWidget {
  const BrwMny({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
                Navigator.pop(context);}),
                  title: const Text('Borrowing with 12% Club',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
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
                  children: const [
                                     ExpansionTile(  
                                      backgroundColor: Colors.transparent,                                                                                                       
                                              tilePadding:  EdgeInsets.all(5),  
                                              childrenPadding:  EdgeInsets.all(10),                  
                                      title:  Text('How do I get eligible to borrow at the 12% Club?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:   [
                                          ListTile(                                          
                                            title: Text('Our lending partner - Hindon Mercantile Limited has ites credit policy basis which eligibility checks happen.There can be mutiple reasons for rejection . It may be one of the following:\n-You may not be eligible as per our lending partner.\n-You may have failed to furnish all valid supporting documents.'),
                                            ),
                                              ],                                                
                                        ),
                                          ExpansionTile(  
                                            backgroundColor: Colors.transparent,   
                                                       tilePadding:  EdgeInsets.all(5),   
                                              childrenPadding:  EdgeInsets.all(10),                           
                                      title:  Text('How is Interest calculated on my loan?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:  [
                                          ListTile(                                          
                                            title: Text('Interest is calculated at 12% per annuam on your borrowing subject to your creditworthiness. Example - if you borrow ₹ 1,00,000 with 12% Club. Interest cost will be @ 12% interest per year; i.e. 3,000 for 3 months. Interest gets added every day ₹ 33 per day.You can close your loan anytime. There is no repayment penalty.'),
                                              ),
                                              ],
                                        ),
                                         ExpansionTile(      
                                            backgroundColor: Colors.transparent, 
                                                      tilePadding:  EdgeInsets.all(5),      
                                              childrenPadding:  EdgeInsets.all(10),                      
                                      title:  Text('When do I repay back?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:  [
                                          ListTile(                                                                                    
                                            title: Text('All loans are for a fixed 3-month duration. At the end of 3 months we pull principal + interest from your registered bank account. You can close your loan anytime. There is no prepayment penalty.'),
                                            ),
                                              ],
                                        ),                                        
                                         ExpansionTile(  
                                      backgroundColor: Colors.transparent,                                                                                                       
                                              tilePadding:  EdgeInsets.all(5),  
                                              childrenPadding:  EdgeInsets.all(10),                  
                                      title:  Text('How much money can I borrow?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:   [
                                          ListTile(                                         
                                            title: Text('The loan offers start from as low as ₹ 10,000 and up to ₹10,00,000. The maximum amount of loan will differ from person to person depending on their creditworthiness.'),
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