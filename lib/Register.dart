import 'package:flutter/material.dart';

void main() {
  runApp(const Register());
}

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, perform login logic here
      print('Email: $_email');
      print('Password: $_password');
      // Add your login logic here
    }
  }

  void _loginWithGoogle() {
    // Add your code for Google sign-in here
  }
  void _login() {
    // Xử lý sự kiện khi người dùng nhấp vào liên kết "Register" ở đây
  }
  bool _showPassword = false;
  bool _showPassword_cf = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Center(
                child: Text(
                  'REGISTER',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 24.0, // Đặt kích thước chữ
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'USERNAME',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Text(
                    'EMAIL',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Text(
                    'PASSWORD',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(_showPassword
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    'CONFORM PASSWORD',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              TextFormField(
                obscureText:
                    !_showPassword, // Ẩn mật khẩu nếu _showPassword là false
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(_showPassword_cf
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _showPassword_cf = !_showPassword_cf;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please conform your password';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _submitForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.pink[50], // Background color of the button
                  ),
                  child: const Text(
                    'REGISTER',
                    style: TextStyle(
                      color: Colors.red, // Text color of the button
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              OutlinedButton.icon(
                onPressed: _loginWithGoogle,
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  side: BorderSide(color: Colors.grey),
                ),
                icon: Image.asset(
                  'assets/images/google.png',
                  width: 24.0,
                  height: 24.0,
                ),
                label: const Text('Register with Google'),
              ),
              const SizedBox(height: 8.0),
              TextButton(
                onPressed: () {
                  // Add your code for "Forgot password?" link here
                },
                style: TextButton.styleFrom(
                  textStyle: TextStyle(
                      color: Colors.red[900]), // Set text color to dark red
                ),
                child: const Text("Already have account"),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0, // Độ dày của khung
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Bo góc của khung
                ),
                child: TextButton(
                  onPressed: _login,
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
