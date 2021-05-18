import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn(),
    ),
  );
}

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
//     String? _password;
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 80),
            margin: const EdgeInsets.fromLTRB(65.0, 100.0, 65.0, 70.0),
            child: Text('Cytoclick Logo'),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  // constraints: BoxConstraints.expand(),
                  // margin: const EdgeInsets.only(top: 191),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    ),
                    color: Colors.yellow[50],
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(28),
                  // margin: EdgeInsets.only(top: 191),
                  child: ListView(
                    children: [
                      Text(
                        'Log In to your Account.',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 28,
                          color: const Color(0xff011947),
                          fontWeight: FontWeight.w800,

                          //height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                        // textHeightBehavior: TextHeightBehavior(
                        //     applyHeightToFirstAscent: false),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Email or Mobile Number',
                              ),
                              SizedBox(
                                height: 2.0,
                              ),
                              Container(
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: 'johnsondoe@nomail.com',
                                    contentPadding: const EdgeInsets.all(16.0),
                                    border: InputBorder.none,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0x66013088)),
                                ),
                              ),
                            ],
                          )),
                      Container(
                        padding: const EdgeInsets.only(top: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Password',
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            Container(
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  hintText: '********',
                                  contentPadding: const EdgeInsets.all(16.0),
                                  border: InputBorder.none,
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      // Based on passwordVisible state choose the icon
                                      _obscureText
                                          ? Icons.visibility_off
                                          : Icons.visibility,
//                                       color: Theme.of(context).primaryColorDark,
                                    ),
                                    onPressed:
                                        // Update the state i.e. toogle the state of passwordVisible variable
                                        _toggle,
                                  ),
                                ),
                                validator: (val) => val!.length < 6
                                    ? 'Password too short.'
                                    : null,
//                                 onSaved: (val) => _password = val!,
                                obscureText: _obscureText,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.white,
                                border: Border.all(
                                    width: 1.0, color: const Color(0x66013088)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Recover Password?',
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        // padding: const EdgeInsets.all(8.0),
                        // margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Container(
                              // margin: const EdgeInsets.fromLTRB(120, 15, 120, 15),
                              child: Text('PROCEED')),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  //height: 150,
                  margin: const EdgeInsets.only(top: 450),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50.0),
                    ),
                    color: Colors.blue,
                  ),
                  child: Container(
                    // height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    // padding: const EdgeInsets.all(8.0),
                    // margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        // margin: const EdgeInsets.fromLTRB(120, 15, 120, 15),
                        child: ElevatedButton(
                          onPressed: () {
//                             signUp();
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white),
                            textScaleFactor: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
