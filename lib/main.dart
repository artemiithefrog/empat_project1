import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class User {
  late String _firstName;
  late String _lastName;

  User({required String firstName, required String lastName}) {
    _firstName = firstName;
    _lastName = lastName;
  }

  String get firstName => _firstName;
  String get lastName => _lastName;

  set firstName(String firstName) {
    _firstName = firstName;
  }

  set lastName(String lastName) {
    _lastName = lastName;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Info',
      home: UserInfoScreen(),
    );
  }
}

class UserInfoScreen extends StatefulWidget {
  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  late User user;

  @override
  void initState() {
    super.initState();
    user = User(firstName: '', lastName: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    user.firstName = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'First Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    user.lastName = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Last Name',
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Name: ${user.firstName}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Last name: ${user.lastName}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
