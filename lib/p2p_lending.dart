import 'package:clubapp_clone/main.dart';
import 'package:flutter/material.dart';
class P2pLdg extends StatelessWidget {
  const P2pLdg({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(
                  leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeScreen()));
                }
                ),
                  title: const Text('Know more about P2P lending',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  backgroundColor: Colors.white,
                  elevation: 0,
              ),
              body: Container(
                margin: const EdgeInsets.all(20),
                child: ListView(                                        
                  children: [     
                    Container(
                        padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black)),
                      child: Column(  
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('What is P2P lending?\n',style: TextStyle(fontWeight: FontWeight.bold)),
                          ListTile(
                            leading: Icon(Icons.square,color: Colors.green),
                            title: Text('Peer-to-Peer(P2P) lending is a faster and convenient way to lend and borrow money online'),
                          ),
                            ListTile(
                            leading: Icon(Icons.square,color: Colors.green),
                            title: Text('It allows you to invest money against unsecured loans given to borrowers'),
                          ),
                        ],             
                      ),
                    ),
                     Container(
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black)),
                      child: Column(  
                   
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('What are the benefits of P2P lending?\n',style: TextStyle(fontWeight: FontWeight.bold)),
                          ListTile(
                            leading: Icon(Icons.square,color: Colors.green),
                            title: Text('As an investor, you can earn higher returns on your investment than fixed deposits or other alternate investment options available in the market'),
                          ),
                            ListTile(
                            leading: Icon(Icons.square,color: Colors.green),
                            title: Text('P2P lending is regulated by RBI. 12% Club offers investment option in partnership with LendenClub and Liquiloans -RBI approved P2P NBFCs.'),
                          ),
                        ],             
                      ),
                    ),
                     Container(
                          padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black)),
                      child: Column(  
                        crossAxisAlignment: CrossAxisAlignment.start,
                     
                        children: const [
                          Text('What are the risks associated with P2P lending?\n',style: TextStyle(fontWeight: FontWeight.bold)),
                          ListTile(
                            leading: Icon(Icons.square,color: Colors.green),
                            title: Text('Your investments in P2P lendings are not risk free or fixed in nature'),
                          ),
                            ListTile(
                            leading: Icon(Icons.square,color: Colors.green),
                            title: Text('Performance of loans or repayments by borrowers directly impacts your returns'),
                          ),
                        ],             
                      ),
                    ),
                     Container(
                       padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black)),
                      child: Column(  
                   
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('What are you not accepting any more investments in 12% Club?\n',style: TextStyle(fontWeight: FontWeight.bold)),
                          ListTile(
                            leading: Icon(Icons.square,color: Colors.green),
                            title: Text('Our P2P NBFC partners manage the exchange through which they match borrowers to investors in the absence of adequate borrowers,they do not accept surplus money as no interest will accumulate on these'),
                          ),
                            ListTile(
                            leading: Icon(Icons.square,color: Colors.green),
                            title: Text('Performance of loans or repayments by borrowers directly impacts your returns'),
                          ),
                        ],             
                      ),
                    ),


                  ],
                ),
              ),
    );
  }
}