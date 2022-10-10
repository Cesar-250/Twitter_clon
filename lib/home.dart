// ignore_for_file: prefer_const_constructors, deprecated_member_use, unnecessary_new, sort_child_properties_last, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Models/userModel.dart';
import '../Screens/messageScreen.dart';
import '../Screens/notificationScreen.dart';
import '../Screens/searchScreen.dart';
import '../Screens/tweetsScreen.dart';

import 'package:url_launcher/url_launcher.dart';

import 'Dreawer_pack/perfil_draw.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {

  // ignore: prefer_final_fields
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  var selectedPageIndex = 0;

  UserModel userModel = listUsers.elementAt(0);

  _launchURL(urlParameter) async {
    String url = urlParameter.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo ir a $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    AppBar appBar = new AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            child: Container(
              width: 32,
              height: 32,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.network(
                  userModel.avatarURL,
                ),
              ),
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(left: 22),
            child: new Text(
              "Home",style: TextStyle(color: Colors.black),
            ),
          ),
          
        ],
        mainAxisAlignment: MainAxisAlignment.start,
      ),

      //Color de la Cabecera del AppBar
      backgroundColor: Colors.white,
      actions: <Widget>[
        
        IconButton(
          
            icon: Icon(
              FontAwesomeIcons.github,
              color: new Color.fromRGBO(56, 161, 243, 1.0),
            ),
            onPressed: () {
              _launchURL("https://github.com/Cesar-250");
            }
        ),

        
        
        IconButton(
            icon: Icon(
              FontAwesomeIcons.linkedin,
              color: new Color.fromRGBO(56, 161, 243, 1.0),
            ),
            onPressed: () {
              _launchURL("https://www.linkedin.com/in/c%C3%A9sar-gilberto-cayzara-reyna-0a979b1b2/");
            }
        ),
      ],
    );

    // ignore: unnecessary_new
    BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              FontAwesomeIcons.home,
              color: selectedPageIndex == 0
                  ? new Color.fromRGBO(56, 161, 243, 1.0)
                  : Colors.blueGrey,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              FontAwesomeIcons.user,
              color: selectedPageIndex == 1
                  ? new Color.fromRGBO(56, 161, 243, 1.0)
                  : Colors.blueGrey,
            ),
          ),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                FontAwesomeIcons.bell,
                color: selectedPageIndex == 2
                    ? new Color.fromRGBO(56, 161, 243, 1.0)
                    : Colors.blueGrey,
              )),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              FontAwesomeIcons.envelope,
              color: selectedPageIndex == 3
                  ? new Color.fromRGBO(56, 161, 243, 1.0)
                  : Colors.blueGrey,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedPageIndex = index;
          });
        },
      currentIndex: selectedPageIndex
    );




    List<Widget> listScreens = <Widget>[
      new TweetsScreen(),
      new PerfilScreen(),
      new NotificationScreen(),
      new MessageScreen()
    ];





    Drawer drawer = new Drawer(
      elevation: 40.0,
      child: new Container(
        color: Colors.white,
        child: new ListView(
          children: <Widget>[
            new Container(
              height: 180.00,
              child: new UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(userModel.avatarURL),
                  backgroundColor: Colors.grey,
                ),
                accountName: new Container(
                    child: new Row(
                  children: [
                    Text(
                      userModel.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 14),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                )),
                accountEmail: new Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      userModel.username,
                      style: TextStyle(color: Colors.grey),
                    ),
                    new Container(
                      height: 30,
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            userModel.following,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          new Text(" Siguiendo",
                              style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            width: 15,
                          ),
                          new Text(
                            userModel.followers,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          new Text(" Seguidores",
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                )),
              ),
            ),
            new ListTile(
              leading: Icon(FontAwesomeIcons.user),
              title: new Text(
                "Perfil",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),

              onTap: () {
                
              },
            ),
            new ListTile(
              leading: Icon(Icons.featured_play_list),
              title: new Text(
                "Listas",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
              onTap: () {

              },
            ),
            new ListTile(
              leading: Icon(FontAwesomeIcons.palette),
              title: new Text(
                "Temas",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
              onTap: () {

              },
            ),
            new ListTile(
              leading: Icon(FontAwesomeIcons.bookmark),
              title: new Text(
                "Elementos guardados",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
              onTap: () {

              },
            ),
            new ListTile(
              leading: Icon(FontAwesomeIcons.bolt),
              title: new Text(
                "Momentos",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
              onTap: () {

              },
            ),
            new Divider(
              height: 20.0,
            ),
            new ListTile(
              title: new Text(
                "Configuración y privacidad",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
              onTap: () {

              },
            ),
            new ListTile(
              title: new Text(
                "Centro de Ayuda",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
              onTap: () {

              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 28),
              child: Divider(
                height: 25,
              ),
            ),
            new Container(
              child: new Row(
                children: <Widget>[
                  SizedBox(
                    width: 13,
                  ),
                  Expanded(
                    child: new Container(
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          Icon(FontAwesomeIcons.lightbulb),
                          Icon(FontAwesomeIcons.qrcode),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );


    // ignore: todo
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar,
      body: listScreens.elementAt(selectedPageIndex),
      drawer: drawer,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            
        },
        child: Center(
          child: selectedPageIndex == 3
              ? Icon(FontAwesomeIcons.plus)
              : Icon(FontAwesomeIcons.feather),
        ),
      ),
    );
  }
}
