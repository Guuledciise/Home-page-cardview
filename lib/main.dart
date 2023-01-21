import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
            "Home Page",
        style: TextStyle(
            color: Colors.black,
          fontWeight: FontWeight.bold
        ),
        ),

    ),


      body: SingleChildScrollView(
        child: Container(
          padding:  const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    getExpanded('kettle','kettle & kettle','45 xabbo'),
                    getExpanded('kettle','somalia','54ffff'),


                  ],
                ),
              ),

              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    getExpanded('kettle','kettle & kettle','45 xabbo'),
                    getExpanded('kettle','sug','siq'),


                  ],
                ),
              ),

              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    getExpanded('kettle','kettle & kettle','45 xabbo'),
                    getExpanded('kettle','mus','laf'),


                  ],
                ),
              )

            ],
          ),
        ),
      )
    );

  }

  Expanded getExpanded(String image,String mainText,String subText){
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 10.0,top: 10.0,bottom: 10.0,right: 10.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
          boxShadow: [
            BoxShadow(),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/$image.png"),
            ),
            // Image.asset("images/$image.png",
            //   height: 80.0,
            // ),
             const SizedBox(
              height: 5.0,
            ),
             Text(
                mainText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                )
            ),

            const SizedBox(
              height: 5.0,
            ),
             Text(
                subText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                )
            ),
          ],
        ),

      ),
    );

  }

}
