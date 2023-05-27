import 'main.dart';
import 'homepage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(26,26,26, 1),
      body: ListView(
        children: [
          Container(
            /*decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent)
            ),*/
            margin: EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight*0.05,
                ),
                Image.asset("assets/images/1.png",width: 475,height: 250,),
                Container(
                    /*decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)
                    ),*/
                    child: Column(
                      children: [
                        Text("The only productivity app you need" ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:50,height: screenHeight*0.00125),),
                      ],
                    ),
                  ),
                SizedBox(
                  height: screenHeight*0.07,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      _navigateToHomePageScreen(context);
                    },
                    child: Text("Sign in with Email",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Inter',
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      backgroundColor: Color.fromRGBO(30,144,255,1),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight*0.02,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Google",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Inter',
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 20.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(color: Color.fromRGBO(79,79,79,1)),
                        ),
                        backgroundColor: Color.fromRGBO(30,144,255,0),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth*0.05,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Apple ID",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Inter',
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 20.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(color: Color.fromRGBO(79,79,79,1)),
                        ),
                        backgroundColor: Color.fromRGBO(30,144,255,0),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight*0.02,
                ),
                Text("By Continuing you agree to the Terms and Conditions",style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
        ],
      ),
    );
  }

}

void _navigateToHomePageScreen(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
}