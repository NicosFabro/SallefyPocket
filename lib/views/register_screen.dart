import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreen createState() => new _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff000000),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff000000),
          elevation: 0,
          title: Text(
            'Register',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Username'),
              TextField(
                cursorColor: Theme.of(context).colorScheme.onPrimary,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffffffff),
                    ),
                  ),
                  hintText: 'Enter your username',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffffffff),
                      width: 2,
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.person,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text('Email'),
              ),
              TextField(
                cursorColor: Theme.of(context).colorScheme.onPrimary,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffffffff),
                    ),
                  ),
                  hintText: 'Enter your email',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffffffff),
                      width: 2,
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.mail,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text('Password'),
              ),
              TextField(
                cursorColor: Theme.of(context).colorScheme.onPrimary,
                obscureText: !this._showPassword,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffffffff),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffffffff),
                      width: 2,
                    ),
                  ),
                  hintText: 'Enter your password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: this._showPassword
                          ? Color(0xffffffff)
                          : Color(0xff777777),
                    ),
                    onPressed: () {
                      setState(() => this._showPassword = !this._showPassword);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: GestureDetector(
                  child: Text('Already have an account? Login here.'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(children: [
                  Expanded(
                    child: OutlineButton(
                      color: Color(0xffffffff),
                      onPressed: () {},
                      child: Text('Register'),
                      borderSide: BorderSide(color: Color(0xffffffff)),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
