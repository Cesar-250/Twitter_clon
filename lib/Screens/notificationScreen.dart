// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  NotificationScreenState createState() => NotificationScreenState();
}

class NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        automaticallyImplyLeading: false,

        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 32,
          
        ),

       

        title: Text(
          'Notificaciones',
          style: TextStyle(color: Colors.black),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
            child: Icon(
              Icons.settings_outlined,
              color: Colors.black,
              size: 32,
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),



      backgroundColor: Colors.white,

      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        
                        indicatorWeight: 3,
                        // ignore: prefer_const_literals_to_create_immutables
                        tabs: [
                          Tab(
                            text: 'Todas',
                          ),
                          Tab(
                            text: 'Menciones',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 80),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                   // ignore: prefer_const_constructors
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  border: Border.all(
                                    // ignore: prefer_const_constructors
                                  color: Color.fromARGB(255, 255, 255, 255),
                                        
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 80),
                              child: Container(
                                width: 100,
                                height: 100,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                  // ignore: prefer_const_constructors
                                  color: Color.fromARGB(255, 251, 252, 253),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



