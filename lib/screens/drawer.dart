import 'dart:io';

import 'package:flutter/material.dart';
import 'package:plant_disease_detection/main.dart';
import 'package:plant_disease_detection/screens/diseases.dart';
import 'package:plant_disease_detection/utilities/about.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(15),
            color: Colors.green,
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/splashScreen.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  'Plant Disease Detection',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.green,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.green,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_) => MyHomePage(
                          title: 'Plant disease detection',
                        )));
              }),
          ListTile(
              leading: Icon(
                Icons.medical_services_outlined,
                color: Colors.green,
              ),
              title: Text(
                'Disease information',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.green,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => Diseases()));
              }),
          ListTile(
              leading: Icon(
                Icons.app_settings_alt,
                color: Colors.green,
              ),
              title: Text(
                'About Us',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.green,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (_) => About(),
                ));
              }),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.green,
            ),
            title: Text(
              'Exit',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Colors.green,
              ),
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Exit App',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      content: Text('Do you want to exit the app ?'),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: Text('No')),
                        ElevatedButton(
                            onPressed: () => exit(0), child: Text('Yes')),
                      ],
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
