import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class InvstClub extends StatelessWidget {
  const InvstClub({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
                Navigator.pop(context);}),
                  title: const Text('Investing with 12% Club',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
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
                                      title:  Text('How to add money in 12% club account?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:   [
                                          ListTile(                                          
                                            title: Text('You cand add money using UPI , Debit Card or Net Banking. There are no charges to adding money to your 12% Club Account.'),
                                            ),
                                              ],                                                
                                        ),
                                          ExpansionTile(  
                                            backgroundColor: Colors.transparent,   
                                                       tilePadding:  EdgeInsets.all(5),   
                                              childrenPadding:  EdgeInsets.all(10),                           
                                      title:  Text('When is return earned on investment in 12% Club and how do I get a return up to 12% on my investment?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:  [
                                          ListTile(                                          
                                            title: Text('The return is earned daily on your investment based on deployment with registered borrowers through the P2P NBFC Partner. You can earn up to 12% return on your invested amount.The return is in form of interst paid by the borrowers to whom the money is lent through P2P NBFC Partners.\nExample - if you invest Rs. 1,00,000 with 12% Club.You will earn up to 12% return per year - Rs 12,000 and Rs 33 per day. Return will be earned from the next day(based on a disbursement to a borrower).'),
                                              ),
                                              ],
                                        ),
                                         ExpansionTile(      
                                            backgroundColor: Colors.transparent, 
                                                      tilePadding:  EdgeInsets.all(5),      
                                              childrenPadding:  EdgeInsets.all(10),                      
                                      title:  Text('How much money can I lend?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:  [
                                          ListTile(                                                                                    
                                            title: Text('Exposure of a single lender to the same borrower,across all P2Ps,shall not exceed Rs 50,000.Aggregate exposure of a lender to all borrower at any point of time , across all P2Ps, shall be subject to a cap of Rs 10,00,000.'),
                                            ),
                                              ],
                                        ),                                        
                                         ExpansionTile(  
                                      backgroundColor: Colors.transparent,                                                                                                       
                                              tilePadding:  EdgeInsets.all(5),  
                                              childrenPadding:  EdgeInsets.all(10),                  
                                      title:  Text('What is the risk and how to mitigate it?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:   [
                                          ListTile(                                          
                                            title: Text('Our P2P NBFC Partner tries to minimize risk by undertaking stringent Verification and credit underwriting process.These investments which are in the form of lending through our P2P NBFC Partner are subject to risk on account of the borrower defaulting on the payment. In case of any default , we do regular follow - up and soft recovery with the borrower.'),
                                            ),
                                              ],
                                                
                                        ),
                                          ExpansionTile(  
                                            backgroundColor: Colors.transparent,   
                                                       tilePadding:  EdgeInsets.all(5),   
                                              childrenPadding:  EdgeInsets.all(10),                           
                                      title:  Text('Can a lender take a loan and lend at the same time?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:  [
                                          ListTile(                                          
                                            title: Text('No,you can either take a loan or lend at any given point of time.'),
                                            ),
                                              ],
                                        ),
                                         ExpansionTile(      
                                            backgroundColor: Colors.transparent, 
                                                      tilePadding:  EdgeInsets.all(5),      
                                              childrenPadding:  EdgeInsets.all(10),                      
                                      title:  Text('What happens if any borrower fails to repay? Who bears the risk?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:  [
                                          ListTile(                                                                                    
                                            title: Text('Please note that we along with our P2P NBFC partner try to minimize risk by undertaking strigent verification and credit underwriting process.Further P2P lending is unsecured  and even after a rigorous process, we do not gurarantee risk free returns or no defaults.'),
                                            ),
                                              ],
                                        ),

                                         ExpansionTile(  
                                      backgroundColor: Colors.transparent,                                                                                                       
                                              tilePadding:  EdgeInsets.all(5),  
                                              childrenPadding:  EdgeInsets.all(10),                  
                                      title:  Text('How is investing through the 12% club different from directly investing through your NBFC P2P Partner?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:   [
                                          ListTile(                                          
                                            title: Text('We act as a sourcing agent and tech support of P2P NBFC Partners to provide our customers a unique experience.'),
                                            ),
                                              ],
                                                
                                        ),
                                          ExpansionTile(  
                                            backgroundColor: Colors.transparent,   
                                                       tilePadding:  EdgeInsets.all(5),   
                                              childrenPadding:  EdgeInsets.all(10),                           
                                      title:  Text('How do re-investments work? Are the daily earnings reinvested or just the actual investment earn interest',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:  [
                                          ListTile(                                          
                                            title: Text('Daily earnings on your investments do not get re-invested back.They are available for you to withdraw with or without pricipal in the usual fashion'),
                                            ),
                                              ],
                                        ),
                  ],                
                ),
              ),
            ),
            const Text('Cannot find what you are looking for?',style: TextStyle(fontWeight: FontWeight.bold),),
            Container(
              padding: const EdgeInsets.all(1),
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