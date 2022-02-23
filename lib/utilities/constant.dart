import 'package:flutter/material.dart';

const kBoxTextTitle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 32.0,
);

const kTitleText = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 22.0,
);
const kMyIntro = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
);
const kDiseaseNameContainer = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 16.0,
  color: Colors.white,
);
const kLinearGradient = LinearGradient(
  colors: [
    Colors.green,
    Colors.brown,
    Colors.red,
  ],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
);
const SizedBox sizedBox = SizedBox(
  height: 12.0,
);


//for weather constant

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 70.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 40.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 70.0,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);
