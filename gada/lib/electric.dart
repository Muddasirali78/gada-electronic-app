import 'package:flutter/material.dart';
import 'package:gada/final.dart';

class gada extends StatefulWidget {
  const gada({super.key});

  @override
  State<gada> createState() => _gadaState();
}

class _gadaState extends State<gada> {


  List cardview = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            
            (Icon(Icons.tv,size: 50,)),
            Text(
              "Gada Electronics",selectionColor: Colors.white,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  foreground: Paint()),
                  
            ),
          ],
        ),
        centerTitle: true,backgroundColor: Colors.purple,
      ),
      body: GridView.builder(padding: EdgeInsets.only(top: 40,left: 40,right: 40),
          itemCount: item.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 50, crossAxisSpacing: 50),
          itemBuilder: (context, index) {
            return Container(padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Color.fromARGB(228, 204, 189, 189),
              
              borderRadius: BorderRadius.circular(21)),
          
            child: Column(
              children: [
                Image(image: item[index]["image"]),
                SizedBox(height: 15),
                Text(item[index]["price"].toString(),style: TextStyle(fontWeight: FontWeight.bold)),
                Text(item[index]["name"],style:TextStyle(fontWeight: FontWeight.w700) ,),
                IconButton(onPressed: (){

                }, icon: Icon(Icons.add))
              ],
            ),
              
              
            );
          }),
    );
  }
}
