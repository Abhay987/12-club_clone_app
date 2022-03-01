import 'package:flutter/material.dart';
class MnyWtdr extends StatelessWidget {
  const MnyWtdr({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
                Navigator.pop(context);}),
                  title: const Text('Money withdrawal from 12% Club',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
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
                                      title:  Text('Are there any withdrawal charges?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:   [
                                          ListTile(                                          
                                            title: Text('No! There are no withdrawal charges.'),
                                            ),
                                              ],                                                
                                        ),
                                          ExpansionTile(  
                                            backgroundColor: Colors.transparent,   
                                                       tilePadding:  EdgeInsets.all(5),   
                                              childrenPadding:  EdgeInsets.all(10),                           
                                      title:  Text('Can you withdraw your invested amount before the loan matures?Can the invested amount be withdrawn partially?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:  [
                                          ListTile(                                          
                                            title: Text('Yes,you can withdraw the amount in partial or full befor maturity.The amount you select will be credited in your bank account according to the term and conditions of ther 12%Club.'),
                                              ),
                                              ],
                                        ),
                                         ExpansionTile(      
                                            backgroundColor: Colors.transparent, 
                                                      tilePadding:  EdgeInsets.all(5),      
                                              childrenPadding:  EdgeInsets.all(10),                      
                                      title:  Text('What are the parameters for dealing with a withdrawal when there are various lenders wanting to withdraw the invested money at the same time that has already been disbursed?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:  [
                                          ListTile(                                                                                    
                                            title: Text('Our P2P NBFC Partners have a secondary market and there is no guarantee of liquidation by the 12% Club.A run on the platform does not mean the underlying loans are bad, it just means the lender has to wait longer to get their money back.'),
                                            ),
                                              ],
                                        ),                                        
                                         ExpansionTile(  
                                      backgroundColor: Colors.transparent,                                                                                                       
                                              tilePadding:  EdgeInsets.all(5),  
                                              childrenPadding:  EdgeInsets.all(10),                  
                                      title:  Text('How long does it take for the withdrawal amount to be settled to my bank account?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:   [
                                          ListTile(                                         
                                            title: Text('Withdrawel request are generally processed within 1 business day from the date of request of withdrawel. If you are facing any issue beyond the aforementioned time,please feel free to chat with us or contact our customer support team.'),
                                            ),
                                              ],
                                                
                                        ),
                                          ExpansionTile(  
                                            backgroundColor: Colors.transparent,   
                                                       tilePadding:  EdgeInsets.all(5),   
                                              childrenPadding:  EdgeInsets.all(10),                           
                                      title:  Text('Where will money withdrawn from the 12% Club get credited?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),                                                                    
                                          children:  [
                                          ListTile(                                          
                                            title: Text('Withdrawn money will be credited to your registered bank account.'),
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