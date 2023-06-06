import 'package:flutter/material.dart';

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Here, you can perform the login logic
    // For simplicity, let's just print the entered credentials
    print('Username: $username');
    print('Password: $password');
  }

  void _register() {
    // Add your register logic here
    print('Register');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/category/logo.png',
              height: 100.0,
            ),
            SizedBox(height: 32.0),
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              onPressed: _login,
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                backgroundColor: Colors.yellow,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            TextButton(
              onPressed: _register,
              child: Text(
                'Register',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                backgroundColor: Colors.pinkAccent[100],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
