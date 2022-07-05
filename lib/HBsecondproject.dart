
import 'package:flutter/material.dart';
import 'package:roject/welcome.dart';

void main() {
  runApp(login());
}

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "login page", home: valid());
  }
}

class valid extends StatefulWidget {
  valid({Key? key}) : super(key: key);

  @override
  State<valid> createState() => _validState();
}

class _validState extends State<valid> {
  var name = TextEditingController();
  var pwd = TextEditingController();
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
    
      appBar: AppBar(
        title: Text("Login Form"),
      ),
      body: Column(
        children: [
          Center(
            child: TextField(
                controller: name,
                decoration: InputDecoration(
                    border: InputBorder.none, labelText: 'Username')),
          ),
          Center(
            child: TextField(
                controller: pwd,
                decoration: InputDecoration(
                    border: InputBorder.none, labelText: 'Password')),
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    if (name.text == "babu" && pwd.text == "babu@123") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => welcome1()));
                    } else {
                      print("error");

                      // showAlertDialog(context);  

                    // AlertDialog(
                    //   title: Text("alert"),
                    //   content: Text("check the username and password"),
                    //   actions: [
                    //    FlatButton("ok"),
                    //   ],
                    //   elevation: 24.0,
                    // );
                    }
                  },
                  child: Text("Sign in")))
        ],
      ),
    );
  }
  showAlertDialog(BuildContext context) {  
  // Create button  
  Widget okButton = FlatButton(  
    child: Text("OK"),  
    onPressed: () {  
      Navigator.of(context).pop();  
    },  
  );  
  
  // Create AlertDialog  
  AlertDialog alert = AlertDialog(  
    title: Text("Simple Alert"),  
    content: Text("This is an alert message."),  
    actions: [  
      okButton,  
    ],  
  );  
  
  // show the dialog  
  showDialog(  
    context: context,  
    builder: (BuildContext context) {  
      return alert;  
    },  
  );  
}
}