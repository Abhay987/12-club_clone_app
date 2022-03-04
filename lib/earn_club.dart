import 'package:flutter/material.dart';
class EarnTvl extends StatelessWidget {
  const EarnTvl({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
                Navigator.pop(context);}),
                  title: const Text('Earn @12%*',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  backgroundColor: Colors.white,
                  elevation: 0,      
      ),
      body: Column(
        children:[
         Container(
          margin: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 20),
          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),          
          ),
          child: Column( 
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                  crossAxisAlignment: CrossAxisAlignment.start,         
            children: [
              /*
                  const Text("Earn @12%*",style: TextStyle(fontWeight: FontWeight.bold)),
                  const Text("Max Investment Allowed : \u{20B9}${'1,00,000'}"),
                  Row(
                    children: const [
                        Icon(Icons.square,color: Colors.green,size: 20,),
                        Expanded(child: Text('Add Money using UPI, Debit Card, Net Banking')),
                    ],
                  ),
                  Row(children: const [
                       Icon(Icons.square,color: Colors.green,size: 20,),
                        Text('Earn Interest up to 12% per year'),
                  ]),
                    Row(children: const [
                       Icon(Icons.square,color: Colors.green,size: 20,),
                        Text('Interest will be earned daily'),
                  ]),
                    Row(children: const [
                       Icon(Icons.square,color: Colors.green,size: 20,),
                        Text('Request withdrawal anytime,No charges'),
                  ]),                                       */
                  Container(
                         padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 20),
                    child: const Text("Earn @12%*",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  ),
                  Container(
                     padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 10),
                    child: const Text("Max Investment Allowed : \u{20B9}${'1,00,000'}",style: TextStyle(fontSize: 16)),
                  ),            
             const  ListTile(              
                leading: Icon(Icons.square,color: Colors.green,size: 20,),
                minLeadingWidth: 20,
                title: Text('Add Money using UPI, Debit Card, Net Banking',style: TextStyle(fontSize: 16)),
              ),
              const ListTile(  
                  minLeadingWidth: 20,            
                leading: Icon(Icons.square,color: Colors.green,size: 20,),
                title: Text('Earn Interest up to 12% per year',style: TextStyle(fontSize: 16)),
              ),
              const ListTile(  
                  minLeadingWidth: 20,            
                leading: Icon(Icons.square,color: Colors.green,size: 20,),
                title: Text('Interest will be earned daily',style: TextStyle(fontSize: 16)),
              ),
              const ListTile(    
                  minLeadingWidth: 20,          
                leading: Icon(Icons.square,color: Colors.green,size: 20,),
                title: Text('Request withdrawal anytime , No charges',style: TextStyle(fontSize: 16)),
              ),      
              Container(margin: const EdgeInsets.only(top: 10),
                child: const Text('*Earn up to 12% returns per annum. Actual amount will vary based on investment cycles and allocations by our P2P NBFC partners.',style: TextStyle(fontSize: 16))),
                Container(
                  margin: const EdgeInsets.only(top: 20,bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                       Icon(Icons.square,color: Colors.green,size: 20,),
                       Text('Investment\nPrincipal',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        Icon(Icons.square,color: Colors.lightGreenAccent,size: 20,),
                       Text('Interest\nEarned',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    ],
                  ),
                ),
            ],
          ),
        ),
        ]
      )
    );
  }
}