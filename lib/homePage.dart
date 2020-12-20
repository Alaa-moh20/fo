import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigatio_ass/page2.dart';

class HomePage extends StatelessWidget {
  String fName;
  String lName;
  String specilalist;
  String id;
  String email;

  HomePage(this.fName, this.lName, this.specilalist, this.id, this.email);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Container(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'Welcome',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextField(
                    onChanged: (value) {
                      this.fName = value;
                    },
                    decoration: InputDecoration(
                        labelText: 'Enter your first name',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue[300]),
                            borderRadius: BorderRadius.circular(10))),
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextField(
                    onChanged: (value) {
                      this.lName = value;
                    },
                    decoration: InputDecoration(
                        labelText: 'Enter your last name',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue[300]),
                            borderRadius: BorderRadius.circular(10))),
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextField(
                    onChanged: (value) {
                      this.specilalist = value;
                    },
                    decoration: InputDecoration(
                        labelText: 'Enter your specilalist',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue[300]),
                            borderRadius: BorderRadius.circular(10))),
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextField(
                    onChanged: (value) {
                      this.id = value;
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'Enter your ID',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue[300]),
                            borderRadius: BorderRadius.circular(10))),
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextField(
                    onChanged: (value) {
                      this.email = value;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Enter your email',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue[300]),
                            borderRadius: BorderRadius.circular(10))),
                  )),
              Container(
                height: 70,
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                //padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child:
                        Text('Press me', style: TextStyle(color: Colors.white)),
                    color: Colors.blue[300],
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return Page2(fName, lName, specilalist, id, email);
                        },
                      ));
                    }),
              )
            ],
          ),
        )));
  }
}
