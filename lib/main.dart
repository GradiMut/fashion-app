import 'package:flutter/material.dart';
import 'secondpage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        currentIndex: _bottomNavIndex,
        onTap: (int index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
        items: [
          new BottomNavigationBarItem(
              title: new Text(""), icon: new Icon(Icons.home)),
          new BottomNavigationBarItem(
              title: new Text(""), icon: new Icon(Icons.queue_play_next,)),
          new BottomNavigationBarItem(
              title: new Text(""), icon: new Icon(Icons.explore)),
          new BottomNavigationBarItem(
              title: new Text(""),
              icon: new Icon(Icons.supervised_user_circle)),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Discovery',
          style: TextStyle(
            fontFamily: 'Montserrat', color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.camera_alt),
              color: Colors.grey,
              onPressed: (){},
            )
          ],
      ),  
      body: ListView(
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        children: <Widget>[
          Container(
            height: 150.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                listItem('assets/model1.jpg', 'assets/chanellogo.jpg'),
                SizedBox(width: 35.0,),
                listItem('assets/model2.jpg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 35.0,),
                listItem('assets/model3.jpg', 'assets/chloelogo.png'),
                SizedBox(width: 35.0,),
                listItem('assets/model4.jpg', 'assets/chanellogo.jpg'),
                SizedBox(width: 35.0,),
                listItem('assets/model5.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 35.0,),
                listItem('assets/model6.jpg', 'assets/chloelogo.png'),
                SizedBox(width: 35.0,),
                listItem('assets/model7.jpg', 'assets/chanellogo.jpg'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              elevation: 4.0,
              child: Container(
                height: 450.0,
                width: double.infinity,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            image: DecorationImage(
                              image: AssetImage('assets/model1.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          width: MediaQuery.of(context).size.width - 120.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Daisy',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 2.0),
                                  Text(
                                    '34 mins ago',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12.0,
                                      color: Colors.grey
                                    ),
                                  )
                                ],
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.grey,
                                size: 20.0,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends.',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                        color: Colors.grey
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SecondPage(heroTag: 'assets/modelgrid1.jpeg')
                            ));
                          },
                         child: Hero(
                            tag: 'assets/modelgrid1.jpeg',
                            child: Container(
                              height: 200.0,
                              width: (MediaQuery.of(context).size.width - 50.0) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/modelgrid1.jpeg'),
                                  fit: BoxFit.cover
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SecondPage(heroTag: 'assets/modelgrid2.jpeg')
                                ));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid2.jpeg',
                                child: Container(
                                  height: 95.0,
                                  width: (MediaQuery.of(context).size.width - 100.0) / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    image: DecorationImage(
                                      image: AssetImage('assets/modelgrid2.jpeg'),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SecondPage(heroTag: 'assets/modelgrid3.jpeg')
                                ));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid3.jpeg',
                                child: Container(
                                  height: 95.0,
                                  width: (MediaQuery.of(context).size.width - 100.0) / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    image: DecorationImage(
                                      image: AssetImage('assets/modelgrid3.jpeg'),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.brown.withOpacity(0.2)
                          ),
                          child: Center(
                            child: Text(
                              '# Louis Vitton',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 10.0,
                                color: Colors.brown
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          height: 25.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.brown.withOpacity(0.2)
                          ),
                          child: Center(
                            child: Text(
                              '# Chloe',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 10.0,
                                color: Colors.brown
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2)
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(children: <Widget>[
                      Icon(
                        Icons.reply,
                        color: Colors.grey.withOpacity(0.4),
                        size: 15.0,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        '1.7k', 
                        style: TextStyle(
                          color: Colors.grey,
                           fontFamily: 'Montserrat'
                        )
                      ),
                      SizedBox(width: 15.0),
                      Icon(
                        Icons.comment,
                        color: Colors.grey.withOpacity(0.4),
                        size: 15.0,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        '325', 
                        style: TextStyle(
                          color: Colors.grey,
                           fontFamily: 'Montserrat'
                        )
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 175.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 15.0
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              '2.3k',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Montserrat'
                              ),
                            )
                          ],
                        ),
                      )
                    ],)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget listItem(String imgPath, String logo) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 75.0,
              width: 75.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(37.5),
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover
                )
              ),
            ),
            Positioned(
              top: 50.0,
              left: 50.0,
              child: Container(
                height: 25.0,
                width: 25.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.5),
                  image: DecorationImage(
                    image: AssetImage(logo), fit: BoxFit.cover
                  )
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10.0),
        Container(
          height: 30.0,
          width: 75.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Color(0XFF916144)
          ),
          child: Center(
            child: Text(
              'Follow',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14.0,
                color: Colors.white
              ),
            ),
          ),
        )
      ],
    );
  }
}
