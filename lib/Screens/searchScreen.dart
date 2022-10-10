// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Container(
      child: Center(
        child: new Text("Busqueda"),
      ),
    );
  }
}