//it contains the phone number and otp bottom sheet

import 'package:flutter/material.dart';

import 'otpscreen.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController _controller = TextEditingController();
   bool isTextFiledFocus = false;
   
  //Bottom sheet for enter phone no pop up by itself
  @override
  // ignore: must_call_super
  void initState(){

    Future.delayed(Duration(seconds: 0)).then((_) {
      showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), 
            topRight: Radius.circular(20),                                       
          ),
        ),
        isScrollControlled: true,
        backgroundColor: Color.fromRGBO(255,255,255,1),
        builder: (builder) {
          return SingleChildScrollView(
            child: Stack(
              overflow: Overflow.visible,
              children: [

              //Dismiss Button For BottomSheet
              Positioned(
                right: 0.41,
                top: -38.59,
                child: Padding(
                  padding: const EdgeInsets.only(right:8.0,),
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 29,
                    width: 28,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromRGBO(255,255,255,1),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Icon(Icons.close_sharp,color: Color.fromRGBO(0,0,0,1),size: 15,),
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyHomePage()));
                      },
                    ),
                  ),
                ),
              ),

              //bottomsheet items
              Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                      children: <Widget>[

                      //images scroller
                        //Imagesc(),
                      Container(
                        height: 150,
                        child: Image.asset('assets/human-brain-smart-professor-cartoon-design-style-vector-32287744.jpg',fit: BoxFit.fitHeight),
                      ),
                             
                      //text
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0, left: 76, right: 74,),
                          child: Container(
                            alignment: Alignment.center,
                            //height: 24,
                            width: double.infinity,
                              child: Text(
                                'Enter Mobile Number', 
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(0,0,0,1),
                                  letterSpacing: 2.24,
                                ),
                              ),
                          ),
                        ),

                        //Textfield
                        //phone number add
                        Focus(
                          onFocusChange: (hasFocus) {
                            setState(() {
                              isTextFiledFocus = hasFocus;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 24, left: 26,right:25,),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 46.0,
                                ),
                                child: TextField(
                                textInputAction: TextInputAction.next,
                                maxLines: 1,
                                maxLength: 10,
                                decoration: InputDecoration(
                                  counterText: '',
                                  focusedBorder: OutlineInputBorder(
                                     borderSide: BorderSide(color: Color.fromRGBO(210,19,123,1), width: 2.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromRGBO(210,19,123,1), width: 2.0),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Enter 10 digit mobile number',
                                  contentPadding: EdgeInsets.only(bottom: 3, top: 11.35, right: 17),
                                  hintStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                      fontSize: 16,
                                    color: Color.fromRGBO(146,146,146,1),
                                  ),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(left: 23, right: 20,top: 11, ),
                                    child: Text('+91',style: TextStyle(fontFamily: 'Poppins',
                                      fontSize: 16,
                                      color: Color.fromRGBO(0,0,0,1)),),
                                  ),
                                ),
                                keyboardType: TextInputType.phone,
                                controller: _controller,
                                ),
                              ),
                          ),
                        ),
                                    

//flatbutton
                        Padding(
                          padding: EdgeInsets.only(top: 26, left: 26, right: 26,),
                          child: FlatButton(
                            color: isTextFiledFocus ? Color.fromRGBO(210,19,123,1) : Color.fromRGBO(158,158,158,1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 41,
                            minWidth: double.infinity,
                            child: Text(
                              'Submit',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color.fromRGBO(255,255,255,1),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onPressed: _showModalSheet,
                          ),
                        ),

 //bottom text
                            Padding(
                              padding: EdgeInsets.only(left: 11.0, right: 12.0,  top: 21.0, bottom: 21),
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                height: 36,
                                width: 400,
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'By creating an account or logging in you agree to YorLook',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 9,
                                          height: 1.2,
                                          letterSpacing: 0.04,
                                          color: Color.fromRGBO(0,0,0,1),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' Terms of \nUse',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 9,
                                          height: 1.3,
                                          letterSpacing: 0.04,
                                          color: Color.fromRGBO(210,19,123,1),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' and',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 9,
                                          height: 1.3,
                                          letterSpacing: 0.04,
                                          color: Color.fromRGBO(0,0,0,1),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' Privacy Policy',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 9,
                                          height: 1.3,
                                          letterSpacing: 0.04,
                                          color: Color.fromRGBO(210,19,123,1),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' and consent to the collection and use of your \npersonal information/sensitive personal data or information.',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 9,
                                          height: 1.3,
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
                        ),
                  ),
                ),
              ],
            ),
          );
        });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

//OTP Screen
   @override
   void _showModalSheet(){

    //Future.delayed(Duration(seconds: 0)).then((_) {
      showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), 
            topRight: Radius.circular(20),                                       
          ),
        ),
        isScrollControlled: true,
        backgroundColor: Color.fromRGBO(255,255,255,1),
        builder: (builder) {
          return SingleChildScrollView(
            child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
//dismiss button
                Positioned(
                //left: 340,
                right: 0.41,
                //bottom: 595.59,
                top: -38.59,
                child: Padding(
                  padding: const EdgeInsets.only(right:8.0,),
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 29,
                    width: 29,
                    child: FloatingActionButton(
                          backgroundColor: Color.fromRGBO(255,255,255,1),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Icon(Icons.close_sharp,color: Color.fromRGBO(0,0,0,1),size: 15,),
                            /*Text('x',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0,0,0,1),
                            ),
                            ),*/
                          ),
                        onPressed: (){
                          // Navigator.of(context).push(MaterialPageRoute(
                          // builder: (context) => Home()));
                        },
                        ),
                  ),
                ),
              ),
//bottomsheet items
              Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  width: double.infinity,
                  
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                      children: <Widget>[

//images scroller
                        //Imagesc(),
                        Container(
                          height: 150,
                          child: Image.asset('assets/human-brain-smart-professor-cartoon-design-style-vector-32287744.jpg',fit: BoxFit.fitHeight),
                        ),
                        
//text
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0, left: 76, right: 74),
                          child: Container(
                            alignment: Alignment.center,
                            height: 24,
                            width: 210,
                            child: Text(
                              'Enter OTP', 
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                letterSpacing: 0.14,
                                color: Color.fromRGBO(0,0,0,1),
                              ),
                            ),
                          ),
                        ),

//Textfield submit button and bottom text given in otp screen
                        OTPScreen(phone: _controller.text),
                        
                      ],
                    ),
                ),
              ),
              ],
            ),
          );
        });
  }

  // home page
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset('assets/take-care-mangomini.jpg',fit: BoxFit.fitHeight,),
        ),
      ),
    );
  }
}


//image scroller common for otp screen and mobile number screen and viewed through imagesc
final List<String> imgList = [
  'assets/images/banner8.png',
  'assets/images/banner8.png',
  'assets/images/banner8.png',
];
final List child = map<Widget>(
  imgList,
      (index, i) {
    return Padding(
      padding: const EdgeInsets.only(bottom:12.0),
      child: Container(
        child: ClipRRect(
          child: Stack(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:24.0, right: 24.0, left: 24.0,bottom: 0),
              child: Container(
                //height: 175.5,
                width: double.infinity,
                child: Image.asset(i, fit: BoxFit.cover)
              ),
            ),
          ]
          ),
        ),
      ),
    );
  },
).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

//imagesc used in mobile and otp screen
// class Imagesc extends StatefulWidget {
//   @override
//   _ImagescState createState() => _ImagescState();
// }

// class _ImagescState extends State<Imagesc> {
//  int _current = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//       CarouselSlider(
//         items: child,
//         options: CarouselOptions(
//           viewportFraction: 1,
//           autoPlay: false,
//         enlargeCenterPage: false,
//         //aspectRatio: 2.0,
//         onPageChanged: (index, _) {
//           setState(() {
//             _current = index;
//           });
//         },
//         ),
//       ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: map<Widget>(
//           imgList,
//               (index, url) {
//             return Container(
//               width: 7.0,
//               height: 7.0,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: _current == index
//                     ? Color.fromRGBO(210,19,123,1)
//                     : Color.fromRGBO(196,196,196,1),
//               ),
//               margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
//             );
//           },
//         ),
//       ),
//     ]);
//   }
// }