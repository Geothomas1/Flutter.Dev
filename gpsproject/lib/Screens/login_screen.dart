import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gpsproject/Screens/user_home.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: LoginDemo(),
  //   );
  // }
}

class _LoginScreenState extends State<LoginScreen> {
  String emailId = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 100.0,
                child: Image.asset('images/logo1.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            Center(
                child: Text('Sukhad Yathra',
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.w900))),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              style: TextStyle(color: Colors.black54),
              onChanged: (value) {
                if (value.isNotEmpty) {
                  emailId = value;
                }
                //Do something with the user input.
              },
              decoration: InputDecoration(
                hintText: 'Enter Your Email-Id.',
                hintStyle: TextStyle(
                    color: Colors.black38, fontStyle: FontStyle.italic),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                if (value.isNotEmpty) {
                  password = value;
                }
                //Do something with the user input.
              },
              decoration: InputDecoration(
                helperStyle: TextStyle(color: Colors.black),
                hintText: 'Enter your password.',
                hintStyle: TextStyle(
                    color: Colors.black38, fontStyle: FontStyle.italic),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () async {
                    print(emailId);
                    print(password);
                    var client = http.Client();
                    try {
                      var url =
                          Uri.parse('http://localhost:3000/users/login');
                      var response = await http.post(url, body: {
                        'emailId':emailId,
                        'password':password
                      });
                      print(response);
                      print('Response status: ${response.statusCode}');
                      print('Response body: ${response.body}');
                      if(response.statusCode==200){
                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserHome()),
                    );
                      }
                       
                    } catch (e) {
                      debugPrint("something went wrong");
                      throw e.toString();
                    } finally {
                      client.close();
                    }
                   
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Center(
                    child: Text(
                      'Log In',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
