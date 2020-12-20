import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  String fName;
  String lName;
  String specilalist;
  String id;
  String email;

  Page2(this.fName, this.lName, this.specilalist, this.id, this.email);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Std_info'),
      ),
      body: Center(
        child: Container(
          color: Colors.pink[50],
          padding: EdgeInsets.all(20),
          child: Text(
            'Full name: ' +
                fName +
                '_' +
                lName +
                ' \n\nSpecilalist: ' +
                specilalist +
                '\n\nStd_id: ' +
                id +
                '\n\nStd_email: ' +
                email,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
