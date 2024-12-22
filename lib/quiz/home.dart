import 'package:flutter/material.dart';
import 'package:assignmwnt_two/quiz/continue.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsetsDirectional.only(
          top: 60.0,
          start: 20.0,
          end: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsetsDirectional.all(8.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey)),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  padding: EdgeInsetsDirectional.all(8.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey)),
                  child: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Let's Play",
              style: TextStyle(
                  color: Color(0xfff35e7a),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Be The First",
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20.0,
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(top: 50.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsetsDirectional.only(
                          top: 10.0, bottom: 20.0, start: 20.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [
                              Color(0xffef729e),
                              Color(0xffec7c86),
                              Color(0xffed896d),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.white54)),
                            child: Icon(
                              Icons.done,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Level 1",
                            style: TextStyle(
                                color: Color.fromARGB(224, 255, 255, 255),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Travel newbie",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "lib/quiz/images/bags.png",
                        width: 120,
                        height: 120,
                      )
                      // Icon(
                      //   Icons.wallet_travel,
                      //   size: 80,
                      //   color: Colors.purple[100],
                      // ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(top: 50.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsetsDirectional.only(
                          top: 10.0, bottom: 20.0, start: 20.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [
                              Color(0xff5174ed),
                              Color(0xff2f95f4),
                              Color(0xff0bb7fc),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Continue();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsetsDirectional.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white54)),
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Level 2",
                            style: TextStyle(
                                color: Color.fromARGB(224, 255, 255, 255),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Continuing",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "lib/quiz/images/ballon-b.png",
                        height: 120,
                        width: 120,
                      )
                      // Icon(
                      //   Icons.manage_search_outlined,
                      //   size: 80,
                      //   color: const Color.fromARGB(255, 153, 199, 238),
                      // )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(top: 50.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsetsDirectional.only(
                          top: 10.0, bottom: 20.0, start: 20.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [
                              Color(0xffe58ed2),
                              Color(0xffcfa7dd),
                              Color(0xfff6bfea),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Alert(
                                context: context,
                                type: AlertType.warning,
                                title: "inaccessible ",
                                style: AlertStyle(
                                    backgroundColor: Colors.grey[100],
                                    titleStyle: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold),
                                    descStyle: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500)),
                                desc:
                                    "Complete Level 2 to unlock this challenge  ",
                                buttons: [
                                  DialogButton(
                                    child: Text(
                                      "OK",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Home())),
                                    color: Color.fromRGBO(0, 179, 134, 1.0),
                                  ),
                                  //   DialogButton(
                                  //     child: Text(
                                  //       "Close",
                                  //       style: TextStyle(color: Colors.white, fontSize: 20),
                                  //     ),
                                  //     onPressed: () => Navigator.pop(context),
                                  //     gradient: LinearGradient(colors: [
                                  //       Color.fromRGBO(116, 116, 191, 1.0),
                                  //       Color.fromRGBO(52, 138, 199, 1.0)
                                  //     ]),
                                  //   )
                                ],
                              ).show();
                            },
                            child: Container(
                              padding: EdgeInsetsDirectional.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white54)),
                              child: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Level 3",
                            style: TextStyle(
                                color: Color.fromARGB(224, 255, 255, 255),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Experienced",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "lib/quiz/images/camera.png",
                        width: 120,
                        height: 120,
                      )
                      // Icon(
                      //   Icons.flutter_dash_outlined,
                      //   size: 80,
                      //   color: Colors.pink[200],
                      // )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
