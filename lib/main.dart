import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'firstApp',
      debugShowCheckedModeBanner: false,
      home: firstScreen(),
    );
  }
}
class firstScreen extends StatefulWidget {
  const firstScreen({Key? key}) : super(key: key);

  @override
  _firstScreenState createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Ehab App',
          style: TextStyle(
            backgroundColor: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w400,


          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            print('back');
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 35,

          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              print("back");
            },
            icon: Icon(Icons.menu,color: Colors.black,size: 25),

          ),
          IconButton(
            onPressed:() {
              print('back');
            },
            icon: Icon(Icons.search,color: Colors.black,size: 25,),

          ),
        ],
        elevation: 12,

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Image.network("https://images.app.goo.gl/9qpvXqujCszk692v9",fit: BoxFit.cover,
            height: 300,width: 300
        ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Nike Dri-Fit Long Sleeve",style:TextStyle(color: Colors.black,fontSize: 20,
                fontWeight:FontWeight.bold ),
            ),
          ),
          Padding(padding: const EdgeInsets.all(10),
            child: Text("Details",style:TextStyle(
                color: Colors.black,fontSize: 14,fontWeight: FontWeight.w900
            ),

            ),
          ),

          Padding(padding: const EdgeInsets.all(10),
            child: Text("Nike Dri-Fit is a polyester fabric designed to help you keep dry so you can more comfortably work harder longer.",style: TextStyle(
              color: Colors.black,fontSize: 12,fontWeight: FontWeight.w700,height: 2,
            ),),),
          Padding(padding: EdgeInsets.all(10),
            child:Text("Nike Dri-Fit is a polyester fabric designed to help you keep dry so you can more comfortably work harder longer.",style: TextStyle(
                color: Colors.black,fontSize: 12,fontWeight: FontWeight.w700,height: 2
            ),),),
          Padding(padding: EdgeInsets.all(10),
            child: Text("Nike Dri-Fit is a polyester fabric designed to help you",
              style:TextStyle(color: Colors.black,fontSize:12,fontWeight: FontWeight.w700,height: 2 ) ,),),
          Padding(padding: EdgeInsets.all(12),
            child: Text("PRICE",style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.w900),),),
          Padding(padding: EdgeInsets.only(left: 12,top: 0),
            child: Text("1500 ",style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold),),)

        ],
      ),

    );


  }
}