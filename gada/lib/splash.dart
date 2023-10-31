import 'package:flutter/material.dart';
import 'package:gada/electric.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    
    super.initState();

    
    Future.delayed(Duration(seconds: 5),(){

    
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => gada()),
      
    
      );
    });
  }

    

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Container(color: Color.fromARGB(255, 211, 204, 233),
    child: Image.asset("assets/images.png"),
    height: MediaQuery.of(context).size.height*1,
    width: MediaQuery.of(context).size.width*1,
    ),


      
    
    );
  }
}
