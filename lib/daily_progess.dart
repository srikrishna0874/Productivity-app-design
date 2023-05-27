import 'package:flutter/material.dart';
import 'package:ui_template/profile.dart';
import 'homepage.dart';
import 'home.dart';


class DailyProgress extends StatelessWidget {
  const DailyProgress({super.key, required this.title});


  final String title;
  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(26,26,26, 1),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15,right: 15),
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight*0.02,
                ),
                Row(
                  children: [
                    Container(
                      width: screenWidth*0.1,
                      height: screenHeight*0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color.fromRGBO(34,141,248,1),
                          border: Border.all(color: Color.fromRGBO(79,79,79,1))
                      ),
                      child: ElevatedButton(
                          onPressed: () {
                            _navigateToHomePage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
                          ),
                          child: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,size: 18,)
                      ),
                    ),
                    SizedBox(
                      width: screenWidth*0.1,
                    ),
                    Text("Daily Progress",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),),
                    SizedBox(
                      width: screenWidth*0.054,
                    ),
                    IconButton(
                      icon: Icon(Icons.search,color: Colors.white,),
                      onPressed: () {
                      },
                    ),
                    SizedBox(
                      width: screenWidth*0.02,
                    ),
                    InkWell(
                      onTap: () {
                        _navigateToProfilePage(context);
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/2.png"),
                        radius: screenWidth*0.05,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight*0.02,
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight*0.05,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(51,51,51,1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: screenWidth*0.02,
                      ),
                      Expanded(
                          child: TextField(
                            style: TextStyle(color: Color.fromRGBO(193, 193, 193, 1)),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                              hintStyle: TextStyle(color: Color.fromRGBO(193,193,193,1),fontWeight: FontWeight.w400),
                            ),
                            cursorHeight: screenHeight*0.03,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight*0.02,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {

                      },
                      child: Text("All",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Inter',
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        backgroundColor: Color.fromRGBO(30,144,255,1),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth*0.07,
                    ),
                    Text("Favourite",style: TextStyle(color: Color.fromRGBO(79,79,79,1),fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(
                  height: screenHeight*0.01,
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight*0.07,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(51,51,51,1),
                    border: Border.all(color: Color.fromRGBO(57,228,61,1)),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(42,44,45,1),
                      )
                    ]
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: screenWidth*0.03,
                      ),
                      Container(
                        width: screenWidth*0.1,
                        height: screenHeight*0.05,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(30,144,255,1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.menu_book_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      Container(
                        width: screenWidth*0.65,
                        height: screenHeight*0.05,
                        decoration: BoxDecoration(

                        ),
                        child: Center(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: screenWidth*0.03,
                                ),
                                Text(
                                  "Read \"The Lean Startup\"",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth*0.02,
                      ),
                      Icon(Icons.chevron_right_outlined,color: Colors.white,)
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight*0.01,
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight*0.07,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(51,51,51,1),
                      border: Border.all(color: Color.fromRGBO(57,228,61,1)),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(42,44,45,1),
                        )
                      ]
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: screenWidth*0.03,
                      ),
                      Container(
                        width: screenWidth*0.1,
                        height: screenHeight*0.05,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(127, 255, 98, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.notifications_active,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      Container(
                        width: screenWidth*0.65,
                        height: screenHeight*0.05,
                        decoration: BoxDecoration(

                        ),
                        child: Center(
                          child: Row(
                            children: [
                              SizedBox(
                                width: screenWidth*0.03,
                              ),
                              Text(
                                "Fix Landing Page",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth*0.02,
                      ),
                      Icon(Icons.chevron_right_outlined,color: Colors.white,)
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight*0.01,
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight*0.07,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(51,51,51,1),
                      border: Border.all(color: Color.fromRGBO(57,228,61,1)),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(42,44,45,1),
                        )
                      ]
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: screenWidth*0.03,
                      ),
                      Container(
                        width: screenWidth*0.1,
                        height: screenHeight*0.05,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(188, 98, 255, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.check_box,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      Container(
                        width: screenWidth*0.65,
                        height: screenHeight*0.05,
                        decoration: BoxDecoration(

                        ),
                        child: Center(
                          child: Row(
                            children: [
                              SizedBox(
                                width: screenWidth*0.03,
                              ),
                              Text(
                                "Share prototype with team",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth*0.02,
                      ),
                      Icon(Icons.chevron_right_outlined,color: Colors.white,)
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight*0.01,
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight*0.07,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(51,51,51,1),
                      //border: Border.all(color: Color.fromRGBO(57,228,61,1)),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(42,44,45,1),
                        )
                      ]
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: screenWidth*0.03,
                      ),
                      Container(
                        width: screenWidth*0.1,
                        height: screenHeight*0.05,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 171, 30, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.archive_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      Container(
                        width: screenWidth*0.65,
                        height: screenHeight*0.05,
                        decoration: BoxDecoration(

                        ),
                        child: Center(
                          child: Row(
                            children: [
                              SizedBox(
                                width: screenWidth*0.03,
                              ),
                              Text(
                                "Share prototype with team",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth*0.02,
                      ),
                      Icon(Icons.chevron_right_outlined,color: Colors.white,)
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight*0.01,
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight*0.07,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(51,51,51,1),
                      //border: Border.all(color: Color.fromRGBO(57,228,61,1)),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(42,44,45,1),
                        )
                      ]
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: screenWidth*0.03,
                      ),
                      Container(
                        width: screenWidth*0.1,
                        height: screenHeight*0.05,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(188, 98, 255, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.check_box,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      Container(
                        width: screenWidth*0.65,
                        height: screenHeight*0.05,
                        decoration: BoxDecoration(

                        ),
                        child: Center(
                          child: Row(
                            children: [
                              SizedBox(
                                width: screenWidth*0.03,
                              ),
                              Text(
                                "Finalize pitch deck",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth*0.02,
                      ),
                      Icon(Icons.chevron_right_outlined,color: Colors.white,)
                    ],
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
            //_navigateToHomePage(context);
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



void _navigateToHomePage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),),);
}

void _navigateToProfilePage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
}