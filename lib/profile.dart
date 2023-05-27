import 'package:flutter/material.dart';
import 'package:link_text/link_text.dart';
import 'package:open_mail_app/open_mail_app.dart';
import 'daily_progess.dart';
import 'home.dart';
import 'homepage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    bool isSwitched= true;

    void _toggleSwitch(bool value) {
      setState(() {
        isSwitched=!isSwitched;
      });
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(26,26,26, 1),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15,right: 15),
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight*0.08,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/2.png"),
                  radius: screenWidth*0.2,
                ),
                Text("Sri Krishna",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 50),),
                Text("kskvsubbarao2019@gmail.com",style: TextStyle(color: Color.fromRGBO(193,193,193,1),decoration: TextDecoration.underline,fontWeight: FontWeight.w400),),
                SizedBox(
                  height: screenHeight*0.02,
                ),
                ElevatedButton(
                  onPressed: () {
                    //_navigateToHomePageScreen(context);
                  },
                  child: Text("Edit Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Inter',
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    backgroundColor: Color.fromRGBO(30,144,255,1),
                  ),
                ),
                SizedBox(
                  height: screenHeight*0.02,
                ),
                Row(
                  children: [
                    Text("Notifications",style: TextStyle(color: Color.fromRGBO(79,79,79,1),fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(
                  height: screenHeight*0.01,
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight*0.09,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Color.fromRGBO(37,39,40,1)),
                    color: Color.fromRGBO(51,51,51,1),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: screenWidth*0.05,
                      ),
                      Center(
                        child: Text("Turn on Notifications",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),),
                      ),
                      SizedBox(
                        width: screenWidth*0.1,
                      ),
                      SwitchExample(),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight*0.01,
                ),
                Row(
                  children: [
                    Text("Invite Link",style: TextStyle(color: Color.fromRGBO(79,79,79,1),fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(
                  height: screenHeight*0.01,
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight*0.09,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Color.fromRGBO(37,39,40,1)),
                    color: Color.fromRGBO(51,51,51,1),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: screenWidth*0.05,
                      ),
                      Center(
                        child: Text("Invite Link",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),),
                      ),
                      SizedBox(
                        width: screenWidth*0.25,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          //_navigateToHomePageScreen(context);
                        },
                        child: Text("Invite",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Inter',
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)
                          ),
                          backgroundColor: Color.fromRGBO(30,144,255,1),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight*0.02,
                ),
                ElevatedButton(
                  onPressed: () {
                    _navigateToHomeScreen(context);
                  },
                  child: Text("Logout",
                    style: TextStyle(
                      color: Color.fromRGBO(79,79,79,1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Inter',
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 140, vertical: 20.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    backgroundColor: Color.fromRGBO(26,26,26,1),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _buildMyNavBar(context),
    );
  }
}

Widget _buildMyNavBar(BuildContext context) {
  double screenWidth=MediaQuery.of(context).size.width;
  double screenHeight=MediaQuery.of(context).size.height;
  return Container(
    width: screenWidth,
    height: screenHeight*0.08,
    //color: Color.fromRGBO(26, 26, 26, 1),
    decoration: BoxDecoration(
        color: Color.fromRGBO(33, 33, 33, 1),
        borderRadius: BorderRadius.circular(100)
    ),
    child: Row(
      children: [
        SizedBox(
          width: screenWidth*0.04,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),),);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 5.0),
              backgroundColor: Color.fromRGBO(33, 33, 33, 1),
            ),
            child: Icon(Icons.home_rounded,color: Color.fromRGBO(30, 144, 255, 1),)
        ),
        SizedBox(
          width: screenWidth*0.22,
        ),
        Icon(Icons.add_circle,color: Color.fromRGBO(30, 144, 255, 1),size: 45,),
        SizedBox(
          width: screenWidth*0.2,
        ),
        ElevatedButton(

          child: Icon(Icons.sd_storage,color: Color.fromRGBO(30, 144, 255, 1),),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DailyProgress(title: '',),),);
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20.0),

            backgroundColor: Color.fromRGBO(33, 33, 33, 1),
          ),
        ),
      ],
    ),
  );
}


void _navigateToHomeScreen(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) =>MyHomePage(title: "HomePage",)));
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light0 = true;
  bool light1 = true;
  bool light2 = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Switch(
          value: light0,
          onChanged: (bool value) {
            setState(() {
              light0 = value;
            });
          },
        ),
      ],
    );
  }
}

