import 'package:flutter/material.dart';

void main() { runApp(const MyApp()); }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Login Screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
            title: const Text(_title),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Container(
          alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 50),
            child: FlutterLogo(
              size: 40,
            ),
          ),

              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: 'Username',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: 'Password',
                  ),
                ),
              ),

              Container(
                  height: 80,
                  padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        primary: Colors.pinkAccent,
                      ),
                    child: const Text('Log In'),
                    onPressed: () {
                    },
                  )
              ),

              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.pinkAccent,
                    ),
                  ),
              ),

          ],
          ),
    )));
  }
}
