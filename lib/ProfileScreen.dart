import 'package:flutter/material.dart';
import 'main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';



class ProfileScreen extends StatelessWidget {
  final UserDetails detailsUser;

  ProfileScreen({Key key, @required this.detailsUser}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
  final GoogleSignIn _gSignIn =  GoogleSignIn();

    return  Scaffold(
      backgroundColor: Colors.grey[850],
        appBar:  AppBar(
          title:  Text('PROFILE',
          style: TextStyle(
                letterSpacing: 3.0,
                ),
                ),
           centerTitle: true,
           backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
        ),
        floatingActionButton: FloatingActionButton.extended(
           icon: Icon(
              FontAwesomeIcons.signOutAlt,
              size: 20.0,
              color: Colors.white,
            ),
            label: Text('Log Out'),
        onPressed: (){
               _gSignIn.signOut();
              print('Signed out');
               Navigator.pop(context);
             
            },
        backgroundColor: Colors.black,
        ),
        body:Padding(padding: EdgeInsets.all(20.0),
        
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage:NetworkImage(detailsUser.photoUrl),
                radius: 50.0,
              ),
              Divider(
              height: 80.0,
              color: Colors.grey[900],
              ),
               Text(
                "Name : " + detailsUser.userName,
                style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                ),
              ),
              SizedBox(height:20.0),
               Text(
                "Email : " + detailsUser.userEmail,
                  style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                ),
                ),
              SizedBox(height:20.0),
              Text(
                "Provider : " + detailsUser.providerDetails,
                style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
              ), 
               ),
               SizedBox(height:100.0),
                Text(
                  '“The best way to predict the future… is to invent it”   – Alan kay,',
                  style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 16.8,
                    letterSpacing: 1.0,
                  ),
                ),
                SizedBox(height:20.0),
               Row(
              children: <Widget>[
                
                Icon(
                  Icons.copyright,
                  color: Colors.white38,
                ),
                SizedBox(width: 10.0,),
                Text(
                  'Copyright 2020 Anish Raj',
                  style: TextStyle(
                    color: Colors.white24,
                    fontSize: 11.8,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            ],
          ),)
        );
  }
}
