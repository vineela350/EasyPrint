import 'package:easyprint/main.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('You are now logged in'),
            SizedBox(
              height: 15.0,
            ),
            new OutlineButton(
              borderSide: BorderSide(
                color: Colors.red,style: BorderStyle.solid,width: 3.0
              ),
              child: Text('Logout'),
              onPressed: (){
                FirebaseAuth.instance.signOut().then((value) {
                // Navigator.of(context).pushReplacementNamed('/landingpage');
                  Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context)=>MyApp()),
                  );
                }).catchError((e){
                  print(e);
                });
              },
            )
          ],
        )
      ),
    );
  }
}
