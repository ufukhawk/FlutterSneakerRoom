import 'package:flutter/material.dart';

import 'model/menu_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black, size: 50),
        leading: new IconButton(
          icon: new Icon(
            Icons.menu,
            size: 50.0,
          ),
          onPressed: () => {
            _scaffoldKey.currentState.openDrawer(),
          },
        ),
        title: Container(
          child: Image.asset("assets/img/Adidas_logo.png"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: size.height * 0.5,
                        width: size.width * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20.0)),
                          color: Color(0xFF733FEC).withOpacity(0.1),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 40),
                      height: size.height * 0.4,
                      width: size.width,
                      child: Image.asset(
                        "assets/img/sneakers.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 100.0,
                      top: size.height * 0.4,
                    ),
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Air Max 200",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 32),
                        ),
                        Text(
                          "Men's shoe",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.only(
                        top: (size.height * 0.5) - 40,
                      ),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/img/addcart.png",
                              ))),
                    ),
                  )
                ],
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Container(
                      height: 115,
                      width: size.width * 0.4,
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFE8E3FC),
                                  borderRadius: BorderRadius.circular(10.0)),
                              height: 100,
                              width: 90,
                            ),
                          ),
                          Center(
                            child: Container(
                              child: Image.asset(
                                "assets/img/sneakers1.png",
                                height: 250,
                                width: 250,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Air Vapormax Flykit ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 21),
                        ),
                        Text(
                          "Men's shoe",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 18,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                )),
            Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Container(
                      height: 115,
                      width: size.width * 0.4,
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFECFC),
                                  borderRadius: BorderRadius.circular(10.0)),
                              height: 100,
                              width: 90,
                            ),
                          ),
                          Center(
                            child: Container(
                              child: Image.asset(
                                "assets/img/sneakers2.png",
                                height: 250,
                                width: 250,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "FireBlazer Max ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 21),
                        ),
                        Text(
                          "Men's shoe",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 18,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(
              0xFF583ED8), //This will change the drawer background to blue.
          //other styles
        ),
        child: Drawer(
          child: Container(
            margin: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/profile.png"))),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 28,
                          fontFamily: "Avenir",
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Katherina",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 28,
                          fontFamily: "Avenir",
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Container(
                      height: size.height * 0.5,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                MenuList.forEach((element) {
                                  element.isSelect = false;
                                });
                                MenuList[index].isSelect =
                                    MenuList[index].isSelect == false;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Container(
                                padding: EdgeInsets.all(10.0),
                                height: 50,
                                decoration: BoxDecoration(
                                    color: MenuList[index].isSelect
                                        ? Color(0xFFFC8074).withOpacity(0.1)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(15.5)),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      MenuList[index].image,
                                      fit: BoxFit.cover,
                                      height: 25,
                                      width: 25,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      MenuList[index].name,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 20,
                                          fontFamily: "Avenir",
                                          color: MenuList[index].isSelect
                                              ? Color(0xFFFC8074)
                                              : Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: MenuList.length,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
