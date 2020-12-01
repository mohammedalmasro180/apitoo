
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';



class apitest extends StatefulWidget {
  @override
  _apitestState createState() => _apitestState();
}

class _apitestState extends State<apitest> {
  Future<List> getData() async {
    String myUrl = "https://p3ly.com/api/";
    http.Response response = await http.get(myUrl,
        headers: {
          'Output-Format': 'JSON',
          'Authorization': 'Basic BC779QASLN6E5BSVU7RX962UW6U6QF6C'
        });
    return json.decode(response.body);
    
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text('TestAPI'),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: FlatButton(
                    color: Colors.white,
                    onPressed: () {
                      getData();

                    },
                    child: Text('Click here to get data')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}