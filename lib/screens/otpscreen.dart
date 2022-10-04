//used in bottom sheet for otp verification from firebase

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mental_health/screens/home_screen.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:pinput/pin_put/pin_put.dart';

import 'loginscreen.dart';


class OTPScreen extends StatefulWidget {
  final String phone;
  OTPScreen({required this.phone});
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  bool isPinPutFocus = false;
  
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  late String _verificationCode;
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(6),
    border: Border.all(
      width: 2,
      color: const Color.fromRGBO(210, 19, 123, 1),
    ),
  );
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Focus(
          onFocusChange: (hasFocus) {
            setState(() {
              isPinPutFocus = hasFocus;
              });
            },
          child: Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 26, left: 26, right: 27),
            child: Container(
              width: double.infinity,
              child: PinPut(
                fieldsCount: 6,
                textStyle: const TextStyle(fontFamily: 'Poppins',fontSize: 22, color: const Color.fromRGBO(0, 0, 0, 1),),
                fieldsAlignment: MainAxisAlignment.spaceEvenly,
                eachFieldWidth: 46,
                eachFieldHeight: 46,
                focusNode: _pinPutFocusNode,
                controller: _pinPutController,
                submittedFieldDecoration: pinPutDecoration..copyWith(
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(
                  width: 2,
                  color: const Color.fromRGBO(210, 19, 123, 1),
                  ),
                ),
                selectedFieldDecoration: pinPutDecoration,
                followingFieldDecoration: pinPutDecoration.copyWith(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                pinAnimationType: PinAnimationType.fade,
                onSubmit: (pin) async {
                  try {
                    await FirebaseAuth.instance
                        .signInWithCredential(PhoneAuthProvider.credential(
                            verificationId: _verificationCode, smsCode: pin))
                        .then((value) async {
                      if (value.user != null) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => HomeScreen()),
                            (route) => false);
                      }
                    });
                  } catch (e) {
                    FocusScope.of(context).unfocus();
                    _scaffoldkey.currentState
                        ?.showSnackBar(SnackBar(content: Text('invalid OTP')));
                  }
                },
              ),
            ),
          ),
        ),

//flat button
                    Padding(
                      padding: const EdgeInsets.only( left: 26, right: 26),
                      child: FlatButton(
                        color: isPinPutFocus ? Color.fromRGBO(210,19,123,1) : Color.fromRGBO(158,158,158,1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 41,
                        minWidth: double.infinity,
                        //color: Colors.grey,
                        child: Text(
                          'Submit',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onPressed: (){
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) => BottomNavBar()));
                        },
                      ),
                    ),

//bottom text
                    Padding(
                      padding: const EdgeInsets.only(left: 11.0, right: 12.0, bottom: 21.0, top: 21.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 36,
                        width: double.infinity,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'We have sent you a 6 digit verification code on\n',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  //fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  height: 1.5,
                                  letterSpacing: 0.04,
                                  color: Color.fromRGBO(85,85,85,1),
                                ),
                              ),
                              TextSpan(
                                text: '+91-${widget.phone}',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 13,
                                  height: 1.2,
                                  letterSpacing: 0.04,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              
                            ]
                          ),
                        ),
                      ),
                    ),
      ],
    );
  }
  _verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+91${widget.phone}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                  (route) => false);
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String verficationID, resendToken) {
          setState(() {
            _verificationCode = verficationID;
          });
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          setState(() {
            _verificationCode = verificationID;
          });
        },
        timeout: Duration(seconds: 60));
  }

  @override
  void initState() {
    super.initState();
    _verifyPhone();
  } 
}