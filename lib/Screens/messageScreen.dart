// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  MessageScreenState createState() => MessageScreenState();
}

class MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25, 0, 70, 0),
                child: TextFormField(
                  
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Buscar mensajes Directos',
                    
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 173, 131, 131),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 221, 202, 202),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 233, 229, 229),
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                  ),
                  style: TextStyle(
                    color: Color.fromARGB(255, 13, 108, 218),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 180, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Te damos la',
                      style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Bienvenida a tu', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold ),
                      
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'bandeja de entrada!',
                      style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold)
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Envía una frase, comparte Tweets y mucho más',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'con las conversaciones privadas entre tú y otras',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'personas en Twitter.',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                  
                ),
                
              ),


              SizedBox(width: 200.0,
                  height: 40.0,
              ),

              MaterialButton(
                  minWidth: 200.0,
                  height: 40.0,
                  onPressed: () {},
                  
                  color: Colors.lightBlue,
                  child: Text('Escribe un mensaje',
                      style: TextStyle(color: Colors.white),
                      ),
                  
                ),

            ],
          ),
        ),
      ),
    );
  }
}




