import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateLogin extends StatefulWidget {
  const CreateLogin({Key key}) : super(key: key);

  @override
  _CreateLoginState createState() => _CreateLoginState();
}

class _CreateLoginState extends State<CreateLogin> {
  bool _termsAgreed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'CREATE YOUR LOGIN',
            style: TextStyle(
                color: Colors.white,
                fontSize: 26.0,
                fontWeight: FontWeight.w700),
          ),
          TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              hintText: 'Enter Username',
              hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
              focusColor: Colors.white,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
              focusColor: Colors.white,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              hintText: 'Re-Enter Password',
              hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
              focusColor: Colors.white,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
          Row(
            children: <Widget>[
              Checkbox(
                activeColor: Colors.orange,
                value: _termsAgreed,
                onChanged: (newValue) {
                  setState(() {
                    _termsAgreed = newValue;
                  });
                },
              ),
              Text(
                'Agreed to Terms & Conditions',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'CANCEL',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('SAVE')
            ],
          ),
          Text(
            'Agree to Terms & Conditions',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
