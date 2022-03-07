//import 'dart:async';
import 'package:clubapp_clone/main.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
/*class SplshScrn extends StatefulWidget {
  const SplshScrn({ Key? key }) : super(key: key);

  @override
  State<SplshScrn> createState() => _SplshScrnState();
}

class _SplshScrnState extends State<SplshScrn> {
  @override
 void initState() {    
    super.initState();
    Timer(
     const Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          const HomeScreen()
                                                         )
                                       )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}*/

class SplScr extends StatelessWidget {
  const SplScr({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: const HomeScreen(),
      title:const Text('GeeksForGeeks',textScaleFactor: 2,),
      image:  Image.asset('assets/images/refer_earn.jpg'),
      loadingText: const Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}   