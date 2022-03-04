
import 'package:clubapp_clone/drawer_data.dart';
import 'package:clubapp_clone/earn_club.dart';
import 'package:clubapp_clone/help_support.dart';
import 'package:clubapp_clone/refer_earn.dart';
import 'package:clubapp_clone/terms_condition.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
          appBar:  AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              actions: [
                 IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const DrawerData()));
                 }, icon: const Icon(Icons.menu,color: Colors.black,)),                
              ],
              title:   const Text('12% Club',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 30),),              
              bottom: const  PreferredSize(
               preferredSize: Size(double.infinity, 60),               
                 child: ListTile(
                   contentPadding: EdgeInsets.only(bottom: 10,left: 20),
                   title: Text('Invest now and earn \nup to 12% interest',style: TextStyle(color: Colors.black,fontSize: 20),),
                 ),         
                ),          
            ),   
            body: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(20),        
                     child: Column(  
                       crossAxisAlignment: CrossAxisAlignment.start,                                          
                      children: [                  
                        Container(
                           padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                         borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children:  [
                                Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Earn @12%*',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                                IconButton(onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const EarnTvl()));
                                }, icon: const Icon(Icons.help_outline_outlined,color: Colors.green,)),
                              ],
                            ),
                              /* Container(
                                 width: double.infinity,
                                 margin: const EdgeInsets.all(0),
                                 height: 200,
                                 child: SfRadialGauge(                                                          
              axes: [                
                RadialAxis(                                       
                  showLabels: false,
                  //canScaleToFit: true,                                
                  showTicks: false,                 
                 startAngle: 180,
                 axisLineStyle:  const AxisLineStyle(                 
                  color:  Colors.grey,                  
                  cornerStyle: CornerStyle.bothFlat,
                ),
                 annotations :const [
                     GaugeAnnotation(widget: 
             Text("\u{20B9}${'0'}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),             
            angle:270,positionFactor: 0.6),
               GaugeAnnotation(widget: 
             Text("BALANCE",style: TextStyle(fontSize: 25,color: Colors.grey)),
                         angle:270,positionFactor: 0.3),             
                 ],                 
                 endAngle: 0,                            
                )]                 
            ),
                               ),                   
              Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                
                                 Text("\u{20B9}${'1,00,000\nInvest(+12%)'}",style: TextStyle(fontWeight: FontWeight.bold),),
                               Text("\u{20B9}${'0\nAvailable'}",style: TextStyle(fontWeight: FontWeight.bold),),
                                
                              ],
                            ),       
                                                   */
                            Container(
                              width: double.infinity,
                              child: TextButton(onPressed: (){}, child: const Text('ADD MONEY'),                            
                              style: TextButton.styleFrom(padding: const EdgeInsets.all(10),
                              backgroundColor: Colors.green,
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),)                      
                              ),),
                            ),
                          ],
                        ),
                        ),
                            Container(
                        margin: const EdgeInsets.only(bottom: 20,top: 20),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(                      
                             padding: const EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               color: Colors.blueGrey[50],
                               borderRadius: BorderRadius.circular(10)),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  const Icon(Icons.add_rounded,color: Colors.green,),
                                    Container(height: 6),
                                    RichText(
                                      text: const TextSpan(
                                        children: [
                                            TextSpan(
                                              text: 'Invest and earn up',
                                               style: TextStyle(color: Colors.black),
                                            ),
                                             TextSpan(
                                              text: '\nto ',
                                               style: TextStyle(color: Colors.black),
                                            ),
                                             TextSpan(
                                              text: "\u{20B9}${'32.88/day'}",
                                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)
                                            ),
                                                 ]
                                      )),                                 
                                   const Divider(color: Colors.black,indent: 10,
                              endIndent: 10,),                           
                                  TextButton(onPressed: (){}, child: const Text('INVEST NOW',style: TextStyle(color: Colors.green),))
                               ],                         
                             ),                                              
                           ),                     
                             Container(                      
                             padding: const EdgeInsets.all(10),
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blueGrey[50]),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  const Icon(Icons.share,color: Colors.green,),
                                  Container(height: 6),
                                   RichText(
                                      text: const TextSpan(
                                        children: [
                                            TextSpan(
                                              text: 'Refer and earn up',
                                                style: TextStyle(color: Colors.black),
                                            ),
                                             TextSpan(
                                              text: '\nto ',
                                               style: TextStyle(color: Colors.black),
                                            ),
                                             TextSpan(
                                               text: "\u{20B9}${'1,00,000'}",                                           
                                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)
                                            ),
                                                 ]
                                      )),                              
                                  const Divider(color: Colors.black,),
                                  TextButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const EarnPage())));
                                  }, child: const Text('REFER NOW',style: TextStyle(color: Colors.green),))
                                                           ],                         
                             ),
                           ),                   ]
                         )),
                          Container(      
                            padding: const EdgeInsets.all(10),               
                            margin: const EdgeInsets.only(bottom: 20),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
                             child: ListTile(                        
                               hoverColor: Colors.white,
                               selectedColor: Colors.white,
                               selectedTileColor: Colors.white,                       
                               onTap: (){},
                               title: const Text('Waitlisted to Borrow @ 12%',style: TextStyle(fontWeight: FontWeight.bold),),
                               subtitle: const Text('\nCheck your eligibility status',style: TextStyle(color: Colors.black)),
                               leading: const Icon(Icons.flutter_dash),
                               trailing: const Icon(Icons.keyboard_arrow_right,color: Colors.green),
                             ),
                          ), 
                          const Text('Reviews from 12% Club Memers',style: TextStyle(fontWeight: FontWeight.bold),), 
                                                    SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                     Container (         
                                             decoration: BoxDecoration(
                                               border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                    margin: const EdgeInsets.only(bottom: 20,top: 20,right: 30),
                                    child: Column(                                      
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                       Icon(Icons.format_quote_sharp,color: Colors.green,),
                                       Text("Awesome Experience , I haven't \nexperienced and delays \nin withdrawal",style: TextStyle(fontSize: 16)),
                                       Text('\nKunal Yadav',style: TextStyle(color: Colors.green,fontSize: 12),),                             
                                      ],
                                    ),                          
                                  ),
                                  Container (         
                                             decoration: BoxDecoration(
                                               border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                    margin: const EdgeInsets.only(bottom: 20,top: 20,right: 30),
                                    child: Column(                                      
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                       Icon(Icons.format_quote_sharp,color: Colors.green,),
                                       Text("Invested 25k and withdrawal \nis also very easy \nat any point of time",style: TextStyle(fontSize: 16)),
                                       Text("\nShylen Danger",style: TextStyle(color: Colors.green,fontSize: 12),),                             
                                      ],
                                    ),                          
                                  ),
                                  Container (         
                                             decoration: BoxDecoration(
                                               border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                    margin: const EdgeInsets.only(bottom: 20,top: 20,right: 30),
                                    child: Column(                                      
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                       Icon(Icons.format_quote_sharp,color: Colors.green,),
                                       Text("You can withdrawal \nall Rupees and partially \nat any point of time",style: TextStyle(fontSize: 16)),
                                       Text("\nAnkit Kumar",style: TextStyle(color: Colors.green,fontSize: 12),),                             
                                      ],
                                    ),                          
                                  ),
                                 ],
                                ),
                              ),

                                    /*                          
                            SizedBox(
                              height: 150,                              
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                physics: const ClampingScrollPhysics(),
                                children: [
                                  Container(         
                                             decoration: BoxDecoration(
                                               border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.all(20),
                                    margin: const EdgeInsets.only(bottom: 20,top: 20,left: 20,right: 20),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                       Icon(Icons.format_quote_sharp,color: Colors.green,),
                                       Text("Awesome Experience , I haven't experienced \nand delays in withdrawal",style: TextStyle(fontSize: 12)),
                                       Text('Kunal Yadav',style: TextStyle(color: Colors.green,fontSize: 8),),                             
                                      ],
                                    ),                          
                                  ),
                                Container(                 
                 decoration: BoxDecoration(
                   border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.all(20),
                                  margin: const EdgeInsets.only(bottom: 20,top: 20,left: 20,right: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                     Icon(Icons.format_quote_sharp,color: Colors.green,),
                                   Text("Awesome Experience , I haven't experienced and delays in withdrawal",style: TextStyle(fontSize: 12)),
                                   Text('Kunal Yadav',style: TextStyle(color: Colors.green,fontSize: 8),),                              
                                    ],
                                  ),                          
                                ),
                                Container(                 
                 decoration: BoxDecoration(
                   border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.all(20),
                                  margin: const EdgeInsets.only(bottom: 20,top: 20,left: 20,right: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                                           Icon(Icons.format_quote_sharp,color: Colors.green,),
                                   Text('Invested 25k and withdrawal is also very easy at point of time',style: TextStyle(fontSize: 12)),
                                   Text('Shylen Danger',style: TextStyle(color: Colors.green,fontSize: 8),),         
                                    ],
                                  ),                          
                                ),                            
                                ],
                              ),
                            ),                                      */

                           /*

                        Expanded(child: ListView(
                           shrinkWrap: true,
                           scrollDirection: Axis.vertical,
                           children: [
                                     Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Center(child:
                        Row(
                          children: const [
                            Text('Powered By '),
                            Icon(Icons.flutter_dash),
                          ],
                        ),
                      ),
                    ),
                       RichText(text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "* Earn upto 12% on your investment with RBI approved P2P NBFC - LendenClub. Investment subject to risk."
                        ),
                        TextSpan(
                          text: "Borrowing subject to credit score and loan eligibily checks of RBI registered NBFC - Hindon Mercnatile . "
                        ),
                        TextSpan(
                          text: "\nFor more information - refer to the "
                        ),
                        TextSpan(
                          text: " FAQ ",                          
                          style: TextStyle(color: Colors.green),
                        ),
                         TextSpan(
                          text: "section & "
                        ),
                         TextSpan(
                          text: " Terms & Conditions ",                          
                          style: TextStyle(color: Colors.green),
                        ),
                      ]
                    ))
                           ],
                         )),                                                  */

                             Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: 
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Powered By    ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            Icon(Icons.flutter_dash),
                          ],
                        ),                     
                    ),
                           RichText(text:  TextSpan(
                      children: [
                        const TextSpan(
                          text: "* Earn upto 12% on your investment with RBI approved P2P NBFC - LendenClub. Investment subject to risk.",
                          style: TextStyle(color: Colors.black),
                        ),
                        const TextSpan(
                          text: "Borrowing subject to credit score and loan eligibily checks of RBI registered NBFC - Hindon Mercnatile . ",
                          style: TextStyle(color: Colors.black),
                        ),
                        const TextSpan(
                          text: "\n\nFor more information - refer to the ",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: " FAQ ",                          
                          style: const TextStyle(color: Colors.green),
                          recognizer: TapGestureRecognizer()..onTap=(() {
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => const HelpSupport())));
                          })
                                   ),
                         const TextSpan(
                          text: "section & ",
                          style: TextStyle(color: Colors.black),
                        ),
                          TextSpan(
                          text: " Terms & Conditions ",                          
                          style: const TextStyle(color: Colors.green),
                           recognizer: TapGestureRecognizer()..onTap=(() {
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => const TrmsCdtn())));
                          })

                        ),
                      ]
                    )),                                     
                      ],
                      ),        
              ),
            ),          
     );
  }
}


      