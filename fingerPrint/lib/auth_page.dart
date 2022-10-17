import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:local_auth/local_auth.dart';

import 'package:pinput/pin_put/pin_put.dart';



import 'big_button.dart';
import 'homePage.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

/// Creating the sample UI for the lock screen and the home page

/// What we wanna do is that we want to call the authenticate
/// function as soon the application is opened by the user
/// so We will call the function if the device is supported automatically
///
class _AuthPageState extends State<AuthPage> {
  String mainValuePin = "";
  bool isObscured = true;

  final LocalAuthentication auth = LocalAuthentication();

  bool supported = false;

  /// functions that will help authenticate the user

  //Step 1: check if the device is supported or not
  checkSupport() {
    // if the device is supported then setting the value to true else setting it to false
    auth.isDeviceSupported().then((value) => supported = value);
    if (supported) {
      _authenticateWithFingerPrint();
    }
  }

  bool authenticating = false;

  Future<void> _authenticateWithFingerPrint() async {
    bool authenticated = false;
    try {
      setState(() {
        authenticating = true;
      });

      // this bool contains the result of the authentication in the application
      authenticated = await auth.authenticate(
        localizedReason: "Text to show as message to user",
        useErrorDialogs: false,
        stickyAuth: true,
        biometricOnly: true,
      );
      setState(() {
        authenticating = false;
      });

      if (authenticated) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const HomePage()));
      }
    } catch (e) {
      // can do proper error handling here leave it to you
    }
    if (!mounted) return;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkSupport();
  }

  @override

  /// Now we will create the sample UI for the lock screen and the
  /// home page of the application
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/img.png",
                height: height * 0.3,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                //width: width * 0.7,
                child: Text(
                  "Enter Your Pin",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: width * 0.7,
                child: PinPut(
                  onChanged: (value) {
                    mainValuePin = value;
                    print(value);
                    print("this is that");
                  },
                  obscureText: isObscured == false ? null : "*",
                  fieldsCount: 4,
                  onSubmit: (val) async {
                    bool isPinCorrect = false;
                    if (isPinCorrect == false) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Check the pin entered.")));
                    } else {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Success")));
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                          (route) => false);
                    }
                  },
                  submittedFieldDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      width: 2,
                      color: Color(0xff476BB5),
                    ),
                  ),
                  followingFieldDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      width: 2,
                      color: Color(0xff476BB5),
                    ),
                  ),
                  selectedFieldDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      width: 2,
                      color: Color(0xff476BB5),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              IconButton(
                  onPressed: () {
                    _authenticateWithFingerPrint();
                  },
                  icon: Icon(
                    Icons.fingerprint_rounded,
                    size: 50,
                  )),

              //Spacer(flex:1),
              SizedBox(
                height: 100,
              ),

              BigButton(
                width: 300,
                onPressed: () async {
                  if (mainValuePin.length == 4) {
                    bool isPinCorrect = false;
                    if (isPinCorrect == false) {
                      //context.loaderOverlay.hide();
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Check the pin entered.")));
                    } else {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Success")));
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                          (route) => false);
                    }
                  }
                },
                //color: ,
                text: "Continue",
                textColor: Colors.black,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
