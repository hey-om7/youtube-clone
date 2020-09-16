import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.grey[900],
        bottomNavigationBar: BottomNavigationBar(
          //elevation: 20,
          backgroundColor: Colors.grey[900],
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          showUnselectedLabels: true,
          currentIndex: 3,//_currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
              color: Colors.white,),
              title: Text('Home'),
//backgroundColor: Colors.red,


            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('Explore'),

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions),
              title: Text('Subscription'),

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications,
              ),
              title: Text('Notifications'),

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library,
              ),
              title: Text('Library'),

            ),

          ],
          onTap: (index){
            // setState(() {
            //   _currentIndex=index;
            //}



          },
        ),

        body: MainPage(),
      ),
    );
  }
}


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}




class _MainPageState extends State<MainPage> {




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: 55,
            color: Colors.grey[900],
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network('https://storage.googleapis.com/gweb-uniblog-publish-prod/images/YouTube.max-1100x1100.png',
                  width: 35,height: 35,),
                ),
                Text('YouTube',style: TextStyle(
                  fontFamily: 'impact',
                  color: Colors.white,
                  fontSize: 24

                ),),
                Container(
                  width: MediaQuery.of(context).size.width*0.65,
                  //color: Colors.orange,
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.cast,
                      color: Colors.white,),

                      SizedBox(
                        width: 20,
                      ),

                      Icon(
                        Icons.videocam,
                        size:30,
                        color: Colors.white,),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.search,
                        color: Colors.white,),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          ),
                        child:
                        CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage('https://yt3.ggpht.com/a/AATXAJwBcfCXT6IkWc6FigPJaFzCTTyjQLL4alEMHYezmg=s100-c-k-c0xffffffff-no-rj-mo')),

                      ),
                    ],
                  ),
                )

              ],
            ),

          ),
          SizedBox(
  height: 20,
  child: Divider(
    color: Colors.grey[700],
    //height: 20,
    thickness: 1,

  ),

),
          Row(
            children: [
             // ListView(
             //   shrinkWrap: true,
             //   scrollDirection: Axis.horizontal,
             //   children: [
             //
             //   ],
             // ),
//TODO:here to impliment list view
              SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.black
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Center(child: Text('All',))),
              SizedBox(
                width: 10,
              ),

              Container(
                  padding: EdgeInsets.all(4),
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.grey[600]
                      ),
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Center(child: Text('Apple',style: TextStyle(
                      color: Colors.white
                  ),))),
              SizedBox(
                width: 10,
              ),
              Container(
                  padding: EdgeInsets.all(4),
                  width: 50,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.grey[600]
                      ),
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Center(child: Text('CID',style: TextStyle(
                      color: Colors.white
                  ),))),
              SizedBox(
                width: 10,
              ),
              Container(
                  padding: EdgeInsets.all(4),
                  width: 190,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.grey[600]
                      ),
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Center(child: Text('Jethalal Champaklal Gada',style: TextStyle(
                      color: Colors.white
                  ),))),


            ],
          ),
          SizedBox(
            height: 20,
          ),



//TODO:adding the listview here


          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                
                Container(
                  //color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Image.network('https://i.ytimg.com/vi/ReE87Wl6c4I/maxresdefault.jpg',
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/heavenmcarthur-profile-square-300px.jpg',
                                //width: 35,
                              ),
                              radius: 20,
                            ),
                            SizedBox(width: 10,),
                            Text('How To Make YouTube Thumbnails \nFor Free Online',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),),
                            SizedBox(width: 20,),
                            Icon(Icons.more_vert,
                              color: Colors.white,

                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text('Om Productions . 75K views . 9 hours ago',style: TextStyle(
                            fontSize: 13,
                            letterSpacing: 0.5,
                            color: Colors.grey
                        ),),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  //color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Image.network('https://i.ytimg.com/vi/ReE87Wl6c4I/maxresdefault.jpg',
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/heavenmcarthur-profile-square-300px.jpg',
                                //width: 35,
                              ),
                              radius: 20,
                            ),
                            SizedBox(width: 10,),
                            Text('How To Make YouTube Thumbnails \nFor Free Online',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),),
                            SizedBox(width: 20,),
                            Icon(Icons.more_vert,
                              color: Colors.white,

                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text('Om Productions . 75K views . 9 hours ago',style: TextStyle(
                            fontSize: 13,
                            letterSpacing: 0.5,
                            color: Colors.grey
                        ),),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  //color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Image.network('https://i.ytimg.com/vi/ReE87Wl6c4I/maxresdefault.jpg',
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/heavenmcarthur-profile-square-300px.jpg',
                                //width: 35,
                              ),
                              radius: 20,
                            ),
                            SizedBox(width: 10,),
                            Text('How To Make YouTube Thumbnails \nFor Free Online',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),),
                            SizedBox(width: 20,),
                            Icon(Icons.more_vert,
                              color: Colors.white,

                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text('Om Productions . 75K views . 9 hours ago',style: TextStyle(
                            fontSize: 13,
                            letterSpacing: 0.5,
                            color: Colors.grey
                        ),),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  //color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Image.network('https://i.ytimg.com/vi/ReE87Wl6c4I/maxresdefault.jpg',
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/heavenmcarthur-profile-square-300px.jpg',
                                //width: 35,
                              ),
                              radius: 20,
                            ),
                            SizedBox(width: 10,),
                            Text('How To Make YouTube Thumbnails \nFor Free Online',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),),
                            SizedBox(width: 20,),
                            Icon(Icons.more_vert,
                              color: Colors.white,

                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text('Om Productions . 75K views . 9 hours ago',style: TextStyle(
                            fontSize: 13,
                            letterSpacing: 0.5,
                            color: Colors.grey
                        ),),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  //color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Image.network('https://i.ytimg.com/vi/ReE87Wl6c4I/maxresdefault.jpg',
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/heavenmcarthur-profile-square-300px.jpg',
                                //width: 35,
                              ),
                              radius: 20,
                            ),
                            SizedBox(width: 10,),
                            Text('How To Make YouTube Thumbnails \nFor Free Online',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),),
                            SizedBox(width: 20,),
                            Icon(Icons.more_vert,
                              color: Colors.white,

                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text('Om Productions . 75K views . 9 hours ago',style: TextStyle(
                            fontSize: 13,
                            letterSpacing: 0.5,
                            color: Colors.grey
                        ),),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  //color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Image.network('https://i.ytimg.com/vi/ReE87Wl6c4I/maxresdefault.jpg',
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/heavenmcarthur-profile-square-300px.jpg',
                                //width: 35,
                              ),
                              radius: 20,
                            ),
                            SizedBox(width: 10,),
                            Text('How To Make YouTube Thumbnails \nFor Free Online',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),),
                            SizedBox(width: 20,),
                            Icon(Icons.more_vert,
                              color: Colors.white,

                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text('Om Productions . 75K views . 9 hours ago',style: TextStyle(
                            fontSize: 13,
                            letterSpacing: 0.5,
                            color: Colors.grey
                        ),),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  //color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Image.network('https://i.ytimg.com/vi/ReE87Wl6c4I/maxresdefault.jpg',
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/heavenmcarthur-profile-square-300px.jpg',
                                //width: 35,
                              ),
                              radius: 20,
                            ),
                            SizedBox(width: 10,),
                            Text('How To Make YouTube Thumbnails \nFor Free Online',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),),
                            SizedBox(width: 20,),
                            Icon(Icons.more_vert,
                              color: Colors.white,

                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text('Om Productions . 75K views . 9 hours ago',style: TextStyle(
                            fontSize: 13,
                            letterSpacing: 0.5,
                            color: Colors.grey
                        ),),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  //color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Image.network('https://i.ytimg.com/vi/ReE87Wl6c4I/maxresdefault.jpg',
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/heavenmcarthur-profile-square-300px.jpg',
                                //width: 35,
                              ),
                              radius: 20,
                            ),
                            SizedBox(width: 10,),
                            Text('How To Make YouTube Thumbnails \nFor Free Online',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),),
                            SizedBox(width: 20,),
                            Icon(Icons.more_vert,
                              color: Colors.white,

                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text('Om Productions . 75K views . 9 hours ago',style: TextStyle(
                            fontSize: 13,
                            letterSpacing: 0.5,
                            color: Colors.grey
                        ),),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  //color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Image.network('https://i.ytimg.com/vi/ReE87Wl6c4I/maxresdefault.jpg',
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/heavenmcarthur-profile-square-300px.jpg',
                                //width: 35,
                              ),
                              radius: 20,
                            ),
                            SizedBox(width: 10,),
                            Text('How To Make YouTube Thumbnails \nFor Free Online',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),),
                            SizedBox(width: 20,),
                            Icon(Icons.more_vert,
                              color: Colors.white,

                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text('Om Productions . 75K views . 9 hours ago',style: TextStyle(
                            fontSize: 13,
                            letterSpacing: 0.5,
                            color: Colors.grey
                        ),),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
