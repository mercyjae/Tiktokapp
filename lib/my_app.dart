import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController stateOfOriginController = TextEditingController();
  TextEditingController placeOfOriginController = TextEditingController();
  FocusNode firstNameFocusNode = FocusNode();
  FocusNode lastNameFocusNode = FocusNode();
  FocusNode stateOfOriginFocusNode = FocusNode();
  FocusNode placeOfOriginFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.green,
          title: Center(child: Text("Register")),
        ),
        body:SingleChildScrollView(child:
     Form(child:  Container(
  alignment: Alignment.center,child: Column(
  children:[
    TextFormField(
      controller: firstNameController,
      focusNode: firstNameFocusNode,
      decoration: InputDecoration(
          hintText: "First Name",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(width: 10)),
          hintStyle: TextStyle(fontSize: 20, color: Colors.teal)),
    ),


    SizedBox(
      height: 12,
    ),
    TextFormField(
      controller: lastNameController,
      focusNode: lastNameFocusNode,
      decoration: InputDecoration(
          hintText: "Last Name",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(width: 10)),
          hintStyle: TextStyle(fontSize: 20, color: Colors.teal)),
    ),
    SizedBox(
      height: 12,
    ),
    TextFormField(
      controller: stateOfOriginController,
      focusNode: stateOfOriginFocusNode,
      decoration: InputDecoration(
          hintText: "State of Origin",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(width: 10)),
          hintStyle: TextStyle(fontSize: 20, color: Colors.teal)),
    ),
    SizedBox(
      height: 12,
    ),
    TextFormField(
      controller: placeOfOriginController,
      focusNode: placeOfOriginFocusNode,
      decoration: InputDecoration(
          hintText: "Place of birth",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(width: 10)),
          hintStyle: TextStyle(fontSize: 20, color: Colors.teal)),
    ),
    SizedBox(
      height: 12,
    ),
    ButtonTheme(
      minWidth: 200,
      height: 50,
      buttonColor: Colors.greenAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: RaisedButton(
        child: Text(
          "Submit",
          style: TextStyle(
              fontSize: 20,
              color: Colors.teal,
              fontStyle: FontStyle.italic),
        ),
        onPressed: () {
          Toast.show("Hello world", context, duration: Toast.LENGTH_LONG, gravity:Toast.BOTTOM);
        },),
    )
  ],
),),),
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}