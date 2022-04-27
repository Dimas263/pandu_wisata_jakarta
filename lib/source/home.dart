import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:wisatajakarta/source/hotel.dart';

class homePage extends StatefulWidget {

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat(' kk:mm:ss \n EEE, d MMM yyy').format(now);
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 4;
    final double itemWidth = size.width / 2;

    return Scaffold(
      body: Stack(
        //fit: StackFit.expand,
        //overflow: Overflow.visible,
        children: [
          Column(
              children: [
                Expanded(
                    flex: 3,
                    child : Container(
                      foregroundDecoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/background.jpg'),
                            fit: BoxFit.cover),
                      ),
                    )
                ),
                Expanded(
                    flex: 7,
                    child: Container(
                        color : Colors.white)
                )
              ]
          ),
          Positioned(
            //height: MediaQuery.of(context).size.height,
            //top: MediaQuery.of(context).size.height * 0.2,
            top: 100,
            left: 20,
            right: 20,
            // bottom: 0,
            child: Container( height: 1000,
              child: Column(
                children: [
                  Card(
                    child: Padding(
                      padding : const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Card(
                                margin: EdgeInsets.all(10),
                                elevation: 5,
                                child: InkWell(
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Image.asset('images/icon.png', height: 50,),
                                    )
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    ' Pandu Wisata',
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Text(
                                    ' Jakarta',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                          ),
                          Row(
                            children: [
                              Image.network('https://img.icons8.com/ios/24/000000/clock--v3.png'),
                              Text(' '),
                              Text(formattedDate)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    'Daftar Kategori',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  GridView.count(
                    crossAxisCount: 3,
                    childAspectRatio: (itemWidth / itemHeight),
                    shrinkWrap: true,
                    children: <Widget>[
                      Card(
                        margin: EdgeInsets.all(5),
                        color: Colors.white,
                        //elevation: 5,
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(seconds: 1),
                                // TODO: Ganti homePage() dengan page hotel
                                child: hotelPage()
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Image.network('https://img.icons8.com/color/48/000000/building.png'),
                              Text(
                                'Hotel',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(5),
                        color: Colors.white,
                        //elevation: 5,
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(seconds: 1),
                                  // TODO: Ganti homePage() dengan page kuliner
                                  child: homePage()
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Image.network('https://img.icons8.com/color/48/000000/restaurant-.png'),
                              Text(
                                'Kuliner',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(5),
                        color: Colors.white,
                        //elevation: 5,
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(seconds: 1),
                                  // TODO: Ganti homePage() dengan page ibadah
                                  child: homePage()
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Image.network('https://img.icons8.com/color/48/000000/mosque.png'),
                              Text(
                                'Ibadah',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(5),
                        color: Colors.white,
                        //elevation: 5,
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(seconds: 1),
                                  // TODO: Ganti homePage() dengan page destinasi
                                  child: homePage()
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Image.network('https://img.icons8.com/color/48/000000/marker--v1.png'),
                              Text(
                                'Destinasi',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(5),
                        color: Colors.white,
                        //elevation: 5,
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(seconds: 1),
                                  // TODO: Ganti homePage() dengan page rating
                                  child: homePage()
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Image.network('https://img.icons8.com/color/48/000000/filled-star--v1.png'),
                              Text(
                                'Rating',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
