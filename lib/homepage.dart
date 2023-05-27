import 'package:ui_template/profile.dart';

import 'home.dart';
import 'main.dart';
import 'daily_progess.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _cur=0;
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(26, 26, 26, 1),
      /*appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(33, 33, 33, 1),
        elevation: 0,
        title: Row(
          children: [
            Text("Home",style: TextStyle(color: Colors.white),),
            SizedBox(
              width: screenWidth*0.5,
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
              },
            ),
          ],
        ),
      ),*/
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
                    Text("Home",style: TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.w500),),
                    SizedBox(
                      width: screenWidth*0.45,
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
                  height: screenHeight*0.04,
                ),
                Text("Hello              Sri Krishna" ,style: GoogleFonts.getFont("Inter",color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50),),
                SizedBox(
                  height: screenHeight*0.02,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {

                      },
                      child: Text("Overview",
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
                    Text("Productivity",style: TextStyle(color: Color.fromRGBO(79,79,79,1),fontSize: 20,fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(
                  height: screenHeight*0.04,
                ),
                ElevatedButton(
                  onPressed: () {
                    _navigateToHomePage(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(26,26,26,1),
                    padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 0.0),
                  ),
                  child: Container(
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black
                                  )
                                ]
                            ),
                            width: screenWidth,
                            height: screenHeight*0.2,
                            //color: Colors.white,
                          ),
                        ),
                        Center(
                          child: Container(
                            width: screenWidth*0.85,
                            height: screenHeight*0.22,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                )
                              ]
                            ),

                          ),
                        ),
                        Center(
                          child: Container(
                            width: screenWidth*0.8,
                            height: screenHeight*0.24,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(51, 51, 51, 1),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: screenHeight*0.02,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text("Daily Progress",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    SizedBox(
                                      width: screenWidth*0.05,
                                    ),
                                    FlutterImageStack(
                                      imageSource: ImageSource.Asset,
                                        imageList: [
                                          "assets/images/3.png",
                                          "assets/images/2.png",
                                          "assets/images/5.png",
                                        ],
                                        totalCount: 3,
                                        itemCount: 3,
                                        itemRadius: 35,
                                    )

                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight*0.01,
                                ),
                                Row(
                                  children: [
                                    Text("Here you can see your daily task",style: TextStyle(color: Color.fromRGBO(193, 193, 193, 1),fontSize: 15,),),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight*0.04,
                                ),
                                Row(
                                  children: [
                                    Text("  76%",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 23),),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight*0.007,
                                ),
                                LinearPercentIndicator(
                                  width: screenWidth-77,
                                  lineHeight: 8.0,
                                  percent: 0.76,
                                  backgroundColor: Color.fromRGBO(127, 127, 127, 1),
                                  progressColor: Colors.blue,
                                  //animation: true,
                                  barRadius: Radius.circular(20),
                                ),
                              ],
                            ),

                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight*0.03,
                ),
                Row(
                  children: [
                    Text("Categories",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
                  ],
                ),
                SizedBox(
                  height: screenHeight*0.02,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      width: screenWidth*0.45,
                      height: screenHeight*0.23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(51, 51, 51, 1),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight*0.015,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                //width: screenWidth*0.03,
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
                              SizedBox(
                                width: screenWidth*0.15,
                              ),
                              FlutterImageStack(
                                imageSource: ImageSource.Asset,
                                imageList: [
                                  "assets/images/5.png",
                                  "assets/images/4.png",
                                ],
                                totalCount: 2,
                                itemCount: 2,
                                itemRadius: 30,
                              )
                            ],
                          ),
                          SizedBox(
                            height: screenHeight*0.02,
                          ),
                          Row(
                            children: [
                              Text("5 New",style: TextStyle(color: Color.fromRGBO(193, 193, 193, 1),fontSize: 18),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Books",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight*0.03,
                          ),
                          Row(
                            children: [
                              LinearPercentIndicator(
                                width: screenWidth-290,
                                lineHeight: 8.0,
                                percent: 0.375,
                                backgroundColor: Color.fromRGBO(127, 127, 127, 1),
                                progressColor: Color.fromRGBO(30, 144, 255, 1),
                                //animation: true,
                                barRadius: Radius.circular(20),
                              ),
                              Container(
                                width: screenWidth*0.15,
                                height: screenHeight*0.03,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(30, 144, 255, 1)
                                ),
                                child: Center(child: Text("9/24",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenWidth*0.02,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      width: screenWidth*0.45,
                      height: screenHeight*0.23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(51, 51, 51, 1),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight*0.015,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                //width: screenWidth*0.03,
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
                              SizedBox(
                                width: screenWidth*0.20,
                              ),
                              FlutterImageStack(
                                imageSource: ImageSource.Asset,
                                imageList: [
                                  "assets/images/5.png",
                                ],
                                totalCount: 1,
                                itemCount: 1,
                                itemRadius: 30,
                              )
                            ],
                          ),
                          SizedBox(
                            height: screenHeight*0.02,
                          ),
                          Row(
                            children: [
                              Text("2 New",style: TextStyle(color: Color.fromRGBO(193, 193, 193, 1),fontSize: 18),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Emails",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight*0.03,
                          ),
                          Row(
                            children: [
                              LinearPercentIndicator(
                                width: screenWidth-290,
                                lineHeight: 8.0,
                                percent: 0.22,
                                backgroundColor: Color.fromRGBO(127, 127, 127, 1),
                                progressColor: Color.fromRGBO(255, 171, 30, 1),
                                //animation: true,
                                barRadius: Radius.circular(20),
                              ),
                              Container(
                                width: screenWidth*0.15,
                                height: screenHeight*0.03,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(255, 171, 30, 1)
                                ),
                                child: Center(child: Text("4/18",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight*0.02,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      width: screenWidth*0.45,
                      height: screenHeight*0.23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(51, 51, 51, 1),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight*0.015,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                //width: screenWidth*0.03,
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
                              SizedBox(
                                width: screenWidth*0.15,
                              ),
                              FlutterImageStack(
                                imageSource: ImageSource.Asset,
                                imageList: [
                                  "assets/images/5.png",
                                  "assets/images/4.png",
                                ],
                                totalCount: 2,
                                itemCount: 2,
                                itemRadius: 30,
                              )
                            ],
                          ),
                          SizedBox(
                            height: screenHeight*0.02,
                          ),
                          Row(
                            children: [
                              Text("9 New",style: TextStyle(color: Color.fromRGBO(193, 193, 193, 1),fontSize: 18),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Works",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight*0.03,
                          ),
                          Row(
                            children: [
                              LinearPercentIndicator(
                                width: screenWidth-290,
                                lineHeight: 8.0,
                                percent: 0.4,
                                backgroundColor: Color.fromRGBO(127, 127, 127, 1),
                                progressColor: Color.fromRGBO(188, 98, 255, 1),
                                //animation: true,
                                barRadius: Radius.circular(20),
                              ),
                              Container(
                                width: screenWidth*0.15,
                                height: screenHeight*0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(188, 98, 255, 1)
                                ),
                                child: Center(child: Text("3/15",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenWidth*0.02,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      width: screenWidth*0.45,
                      height: screenHeight*0.23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(51, 51, 51, 1),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight*0.015,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                //width: screenWidth*0.03,
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
                              SizedBox(
                                width: screenWidth*0.2,
                              ),
                              FlutterImageStack(
                                imageSource: ImageSource.Asset,
                                imageList: [
                                  "assets/images/6.png",
                                ],
                                totalCount: 1,
                                itemCount: 1,
                                itemRadius: 30,
                              )
                            ],
                          ),
                          SizedBox(
                            height: screenHeight*0.02,
                          ),
                          Row(
                            children: [
                              Text("5 New",style: TextStyle(color: Color.fromRGBO(193, 193, 193, 1),fontSize: 18),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Urgent",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight*0.03,
                          ),
                          Row(
                            children: [
                              LinearPercentIndicator(
                                width: screenWidth-290,
                                lineHeight: 8.0,
                                percent: 0.375,
                                backgroundColor: Color.fromRGBO(127, 127, 127, 1),
                                progressColor: Color.fromRGBO(127, 255, 98, 1),
                                //animation: true,
                                barRadius: Radius.circular(20),
                              ),
                              Container(
                                width: screenWidth*0.15,
                                height: screenHeight*0.03,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(127, 255, 98, 1),
                                ),
                                child: Center(child: Text("9/24",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight*0.05,
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _buildMyNavBar(context),
    );
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
            width: screenWidth*0.1,
          ),
          Icon(Icons.home_rounded,color: Color.fromRGBO(30, 144, 255, 1),),
          SizedBox(
            width: screenWidth*0.28,
          ),
          Icon(Icons.add_circle,color: Color.fromRGBO(30, 144, 255, 1),size: 45,),
          SizedBox(
            width: screenWidth*0.2,
          ),
          ElevatedButton(

            child: Icon(Icons.sd_storage,color: Color.fromRGBO(30, 144, 255, 1),),
            onPressed: () {
              _navigateToHomePage(context);
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
}

void _navigateToHomePage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => DailyProgress(title: "DailyProgress Page"),),);
}

void _navigateToProfilePage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) =>ProfilePage()));
}