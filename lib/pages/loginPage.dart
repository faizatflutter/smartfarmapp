import 'package:flutter/material.dart';
import 'package:smartfarmapp/pages/scenarioDashboard.dart';
import 'package:smartfarmapp/pages/signupPage.dart';

// ignore: camel_case_types
class loginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _loginPage();
}

// ignore: camel_case_types
class _loginPage extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              // color: Colors.black12,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      ClipPath(
                        clipper: TopWaveClipper(),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: <Color>[
                                  Colors.green,
                                  Colors.amber,
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.centerLeft),
                          ),
                          height: MediaQuery.of(context).size.height / 2.5,
                        ),
                      ),
                      Image.asset(
                        'assets/images/SmartFarm.png',
                        height: MediaQuery.of(context).size.height * 0.15,
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('Smart Farm',
                            style: TextStyle(
                                fontFamily: "Rowdies",
                                fontSize: 27,
                                color: Theme.of(context).primaryColor,
                                )),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Login',
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: "Rowdies",
                                color: Colors.black,
                                )),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width - 40,
                              child: Material(
                                elevation: 5,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    topLeft: Radius.circular(25),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, top: 5, bottom: 5),
                                  child: TextField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: "Email",
                                      // labelStyle: TextStyle(
                                      //     color: Colors.black45, fontSize: 14),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width - 40,
                              child: Material(
                                elevation: 10,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    topLeft: Radius.circular(25),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, top: 5, bottom: 5),
                                  child: TextField(
                                    obscureText: true,
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: "Password",
                                      // labelStyle: TextStyle(
                                      //     color: Colors.black45, fontSize: 14),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width / 3,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              color: Theme.of(context).primaryColor,
                            ),
                            child: new FlatButton(
                              onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => scenarioDashboard()),
                          );
                        },
                              child: Text("Sign in",
                                  style: TextStyle(
                                    fontFamily: "Rowdies",
                                      color: Colors.white,
                                      fontSize: 17,
                                      )
                                      ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        "New to Smart Farm? ",
                        style: TextStyle(
                          fontFamily: "Rowdies",
                            color: Colors.black, ),
                      ),
                      new InkWell(
                        child: Text('Register Now',
                            style: new TextStyle(
                              fontFamily: "Rowdies",
                              decoration: TextDecoration.underline,
                              color: Theme.of(context).primaryColor,
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => signupPage()),
                          );
                        },
                      )
                    ],
                  )
                ],
              )),
        ));
  }
}

class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // This is where we decide what part of our image is going to be visible.
    var path = Path();
    path.lineTo(0.0, size.height);

    var firstControlPoint = new Offset(size.width / 7, size.height - 30);
    var firstEndPoint = new Offset(size.width / 6, size.height / 1.5);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width / 5, size.height / 4);
    var secondEndPoint = Offset(size.width / 1.5, size.height / 5);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint =
        Offset(size.width - (size.width / 9), size.height / 6);
    var thirdEndPoint = Offset(size.width, 0.0);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    ///move from bottom right to top
    path.lineTo(size.width, 0.0);

    ///finally close the path by reaching start point from top right corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
