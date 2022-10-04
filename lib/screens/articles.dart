//BottomnavigationBar Discover screen contains all the sections of discover
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  bool visibilityBar = false;
  bool visibilityFeatures = false;

  void _changed(bool visibility, String field) {
    setState(() {
      //appbar icon
      if (field == "Bar"){
        visibilityBar = visibility;
      }
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Padding(
      //       padding: const EdgeInsets.only(bottom: 7.0,left: 11),
      //       child: Container(
      //         height: 16,
      //         width: 24,
      //         child: Icon(Icons.menu,)
      //       ),
      //     ),
      //     onPressed: () {
      //         visibilityBar ? null : _changed(true, "Bar");
      //       },
      //   ),
      //   title: Padding(
      //     padding: const EdgeInsets.only(right: 50.59),
      //     child: Container(
      //       height: 21.62,
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage('assets/images/oyebeauty.png'),
      //         ),
      //       ),
      //     ),
      //   ),
      //   backgroundColor: Color.fromRGBO(78,78,78,1),
      //   automaticallyImplyLeading: false,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            // visibilityBar ? Container(
            //   color: Color.fromRGBO(255,255,255,1),
            //   child: TopCategories(),
            // ) : Container(),

            //1 container
            // Container(
            //   color: Color.fromRGBO(255,255,255,1),
            //   child: Stack(
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.only(top: 24.1,left: 24.65, right: 24.00),
            //         child: Container(
            //           child: Image.asset(
            //             'assets/images/dis1.png',
            //             fit: BoxFit.contain,
            //             width: double.infinity,
            //           ),
            //         ),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(top: 220.43,left: 85.59,right: 80.29),
            //         child: Container(
            //           height: 96.57,
            //           width: double.infinity,
            //           decoration: BoxDecoration(
            //             color: Color.fromRGBO(255,255,255,1),
            //             boxShadow: [BoxShadow(
            //               color: Color.fromRGBO(0,0,0,0.25),
            //               blurRadius: 2.17,
            //               offset: Offset(0,0.72),
            //             )],
            //           ),
            //           child: Column(
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.only(top: 14.35),
            //                 child: Text(
            //                   'Packages',
            //                   style: GoogleFonts.rochester(
            //                     fontWeight: FontWeight.w400,
            //                     fontSize: 20.25,
            //                     letterSpacing: 1.2,
            //                     color: Color.fromRGBO(0,0,0,1),
            //                   ),
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(top: 15.39),
            //                 child: Text(
            //                   'Your beauty our duty',
            //                   style: GoogleFonts.getFont('Reem Kufi',
            //                     fontWeight: FontWeight.w400,
            //                     fontSize: 14.1,
            //                     letterSpacing: 1.2,
            //                     color: Color.fromRGBO(0,0,0,0.72),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            // //2 container
            // Padding(
            //   padding: const EdgeInsets.all(0.8),
            //   child: Container(
            //     color: Color.fromRGBO(255,255,255,1),
            //     child: Stack(
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.only(top: 50.0,left: 24.65, right: 24.00),
            //           child: Container(
            //             child: Image.asset(
            //               'assets/images/612610_pnivgi_234.png',
            //               fit: BoxFit.contain,
            //               width: double.infinity,
            //             ),
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(top: 220.43,left: 85.59,right: 80.29),
            //           child: Container(
            //             height: 96.57,
            //             width: double.infinity,
            //             decoration: BoxDecoration(
            //               color: Color.fromRGBO(255,255,255,1),
            //               boxShadow: [BoxShadow(
            //                 color: Color.fromRGBO(0,0,0,0.25),
            //                 blurRadius: 2.17,
            //                 offset: Offset(0,0.72),
            //               )],
            //             ),
            //             child: Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.only(top: 14.35),
            //                   child: Text(
            //                     'Professional Courses',
            //                     style: GoogleFonts.rochester(
            //                       fontWeight: FontWeight.w400,
            //                       fontSize: 20.25,
            //                       letterSpacing: 1.2,
            //                       color: Color.fromRGBO(0,0,0,1),
            //                     ),
            //                   ),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsets.only(top: 15.39),
            //                   child: Text(
            //                     'We FAN Your Orders',
            //                     style: GoogleFonts.getFont('Reem Kufi',
            //                       fontWeight: FontWeight.w400,
            //                       fontSize: 13.1,
            //                       letterSpacing: 1.2,
            //                       color: Color.fromRGBO(0,0,0,0.72),
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            // //3 container
            // Padding(
            //   padding: const EdgeInsets.all(0.8),
            //   child: Container(
            //     color: Color.fromRGBO(255,255,255,1),
            //     child: Stack(
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.only(top: 50.0,left: 24.65, right: 24.00),
            //           child: Container(
            //             child: Image.asset(
            //               'assets/images/262144_p4lqvr_961.png',
            //               fit: BoxFit.contain,
            //               width: double.infinity,
            //             ),
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(top: 220.43,left: 85.59,right: 80.29),
            //           child: Container(
            //             height: 96.57,
            //             width: double.infinity,
            //             decoration: BoxDecoration(
            //               color: Color.fromRGBO(255,255,255,1),
            //               boxShadow: [BoxShadow(
            //                 color: Color.fromRGBO(0,0,0,0.25),
            //                 blurRadius: 2.17,
            //                 offset: Offset(0,0.72),
            //               )],
            //             ),
            //             child: Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.only(top: 14.35),
            //                   child: Text(
            //                     'Short courses',
            //                     style: GoogleFonts.rochester(
            //                       fontWeight: FontWeight.w400,
            //                       fontSize: 20.25,
            //                       letterSpacing: 1.2,
            //                       color: Color.fromRGBO(0,0,0,1),
            //                     ),
            //                   ),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsets.only(top: 15.39),
            //                   child: Text(
            //                     'Super Hours',
            //                     style: GoogleFonts.getFont('Reem Kufi',
            //                       fontWeight: FontWeight.w400,
            //                       fontSize: 14.1,
            //                       letterSpacing: 1.2,
            //                       color: Color.fromRGBO(0,0,0,0.72),
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            //4 Container
            Padding(
              padding: const EdgeInsets.only(top: 50.0,left: 23.65,right: 24.35),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255,255,255,1),
                  boxShadow: [BoxShadow(
                    blurRadius: 4.22,
                    color: Color.fromRGBO(0,0,0,0.25),
                    offset: Offset(0,1.06),
                  ),],
                ),
                height: 1167,
                width: double.infinity,
                child: Column(
                  children: [

                    //blog busy lifestyle part
                    Row(
                      children: [

                        //blog
                        Padding(
                          padding: const EdgeInsets.only(top: 29.1,left: 67.97),
                          child: Container(
                            height: 26.38,
                            width: 57.19,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(181,101,167,1),
                              borderRadius: BorderRadius.circular(3.17),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 3.69,bottom: 3.69),
                              child: Text(
                                'BLOG',
                                style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(255,255,255,1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.83,
                                  letterSpacing: 0.24,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),

                        //busy
                        Padding(
                          padding: const EdgeInsets.only(top: 29.1,left: 3.18),
                          child: Container(
                            height: 26.38,
                            width: 57.19,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(181,101,167,1),
                              borderRadius: BorderRadius.circular(3.17),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 3.69,bottom: 3.69),
                              child: Text(
                                'BUSY',
                                style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(255,255,255,1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.83,
                                  letterSpacing: 0.24,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),

                        //lifestyle
                        Padding(
                          padding: const EdgeInsets.only(top: 29.1,left: 3.18),
                          child: Container(
                            height: 26.38,
                            width: 107.32,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(181,101,167,1),
                              borderRadius: BorderRadius.circular(3.17),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 3.69,bottom: 3.69,left: 7.95,right: 7.95),
                              child: Text(
                                'LIFESTYLE',
                                style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(255,255,255,1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.83,
                                  letterSpacing: 0.24,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //title
                    Padding(
                      padding: const EdgeInsets.only(top: 11.52),
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              'My mental health focus is on..',
                              style: GoogleFonts.rochester(
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0,0,0,1),
                                fontSize: 32.05,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 17.0,),
                          child: Container(
                            child: Text(
                              'SEPTEMBER 12, 2017',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.77,
                                letterSpacing: 0.56,
                                color: Color.fromRGBO(130,130,130,1),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17.0,left: 8.35),
                          child: Container(
                            child: Text(
                              '●',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 5.77,
                                letterSpacing: 0.56,
                                color: Color.fromRGBO(130,130,130,1),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17.0,left: 8.25),
                          child: Container(
                            child: Text(
                              '6 COMMENTS',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.77,
                                letterSpacing: 0.56,
                                color: Color.fromRGBO(130,130,130,1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //image
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 27.0,left: 11,right: 11.06),
                    //   child: Container(
                    //     width: double.infinity,
                    //     child: Image.asset('assets/images/464144_pfpxho_327.png',fit: BoxFit.fill,),
                    //   ),
                    // ),

                    //row insta fb etc
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 12.75),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Container(
                    //         child: Text(
                    //           'SHARE : ',
                    //           style: GoogleFonts.poppins(
                    //             fontWeight: FontWeight.w500,
                    //             fontSize: 14.77,
                    //             color: Color.fromRGBO(130,130,130,1),
                    //           ),
                    //           textAlign: TextAlign.center,
                    //         ),
                    //       ),

                    //       //facebook
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 10.35),
                    //         child: Container(
                    //           child: Icon(
                    //             MdiIcons.facebook,
                    //             color: Color.fromRGBO(130,130,130,1),
                    //             size: 20.77,
                    //           ),
                    //         ),
                    //       ),

                    //       //instagram
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 24.05),
                    //         child: Container(
                    //           child: Icon(
                    //             MdiIcons.instagram,
                    //             color: Color.fromRGBO(130,130,130,1),
                    //             size: 20.77,
                    //           ),
                    //         ),
                    //       ),

                    //       //linkedin
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 24.05),
                    //         child: Container(
                    //           child: Icon(
                    //             MdiIcons.linkedin,
                    //             color: Color.fromRGBO(130,130,130,1),
                    //             size: 20.77,
                    //           ),
                    //         ),
                    //       ),

                    //       //twitter
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 24.05),
                    //         child: Container(
                    //           child: Icon(
                    //             MdiIcons.twitter,
                    //             color: Color.fromRGBO(130,130,130,1),
                    //             size: 20.77,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    //text
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 17, right:16,top: 28.37),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'N',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 0,
                                  fontSize: 64,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: 'o word of lie, recent times have been tough on all of us. From the breakout of pandemic to frequent',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' earthquakes,',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' natural calamities and what not, this year isn\'t actually turning out to be as planned. ',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: '\nCleaning constitutes of plethora of branches but in this blog, we\'ll be solely focused on things of actual concern, i.e.',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' sofa',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' cleaning,',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' carpet',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' cleaning,',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' bathroom',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' cleaning,',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' chimney',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' cleaning etc.',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //continue reading
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: TextButton(
                          onPressed: () {
                            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => RMFirst()));
                          },
                          child: Text(
                            'Continue Reading',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.88,
                              color: Color.fromRGBO(0,0,0,1),
                              backgroundColor: Colors.grey[50],
                            ),
                          ),
                        ),
                      ),
                    ),

                    //written by
                    Padding(
                      padding: const EdgeInsets.only(top: 17.29,left: 67, right: 66.01,bottom: 31.62),
                      child: Container(
                        //height: 45.38,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(181,101,167,1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.44,bottom: 10),
                          child: Text(
                            'Written by: Suraj',
                            style: GoogleFonts.rochester(
                              fontWeight: FontWeight.w400,
                              fontSize: 23.22,
                              color: Color.fromRGBO(255,255,255,1),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //5 container 
            Padding(
              padding: const EdgeInsets.only(top: 24.0,left: 23.65,right: 24.35),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255,255,255,1),
                  boxShadow: [BoxShadow(
                    blurRadius: 4.22,
                    color: Color.fromRGBO(0,0,0,0.25),
                    offset: Offset(0,1.06),
                  ),],
                ),
                height: 1147,
                width: double.infinity,
                child: Column(
                  children: [

                    //blog busy lifestyle part
                    Row(
                      children: [

                        //blog
                        Padding(
                          padding: const EdgeInsets.only(top: 29.1,left: 67.97),
                          child: Container(
                            height: 26.38,
                            width: 57.19,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(181,101,167,1),
                              borderRadius: BorderRadius.circular(3.17),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 3.69,bottom: 3.69),
                              child: Text(
                                'BLOG',
                                style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(255,255,255,1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.83,
                                  letterSpacing: 0.24,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),

                        //busy
                        Padding(
                          padding: const EdgeInsets.only(top: 29.1,left: 3.18),
                          child: Container(
                            height: 26.38,
                            width: 57.19,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(181,101,167,1),
                              borderRadius: BorderRadius.circular(3.17),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 3.69,bottom: 3.69),
                              child: Text(
                                'BUSY',
                                style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(255,255,255,1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.83,
                                  letterSpacing: 0.24,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),

                        //lifestyle
                        Padding(
                          padding: const EdgeInsets.only(top: 29.1,left: 3.18),
                          child: Container(
                            height: 26.38,
                            width: 107.32,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(181,101,167,1),
                              borderRadius: BorderRadius.circular(3.17),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 3.69,bottom: 3.69,left: 7.95,right: 7.95),
                              child: Text(
                                'LIFESTYLE',
                                style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(255,255,255,1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.83,
                                  letterSpacing: 0.24,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //title
                    Padding(
                      padding: const EdgeInsets.only(top: 11.52),
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              'Oyebeauty Salon Service stared with best priceses',
                              style: GoogleFonts.rochester(
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0,0,0,1),
                                fontSize: 32.05,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 17.0,),
                          child: Container(
                            child: Text(
                              'SEPTEMBER 12, 2017',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.77,
                                letterSpacing: 0.56,
                                color: Color.fromRGBO(130,130,130,1),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17.0,left: 8.35),
                          child: Container(
                            child: Text(
                              '●',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 5.77,
                                letterSpacing: 0.56,
                                color: Color.fromRGBO(130,130,130,1),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17.0,left: 8.25),
                          child: Container(
                            child: Text(
                              '6 COMMENTS',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.77,
                                letterSpacing: 0.56,
                                color: Color.fromRGBO(130,130,130,1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //image
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 27.0,left: 11,right: 11.06),
                    //   child: Container(
                    //     width: double.infinity,
                    //     child: Image.asset('assets/images/464144_pfpxho_327 (1).png',fit: BoxFit.fill,),
                    //   ),
                    // ),

                    //row insta fb etc
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 12.75),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Container(
                    //         child: Text(
                    //           'SHARE : ',
                    //           style: GoogleFonts.poppins(
                    //             fontWeight: FontWeight.w500,
                    //             fontSize: 14.77,
                    //             color: Color.fromRGBO(130,130,130,1),
                    //           ),
                    //           textAlign: TextAlign.center,
                    //         ),
                    //       ),

                    //       //facebook
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 10.35),
                    //         child: Container(
                    //           child: Icon(
                    //             MdiIcons.facebook,
                    //             color: Color.fromRGBO(130,130,130,1),
                    //             size: 20.77,
                    //           ),
                    //         ),
                    //       ),

                    //       //instagram
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 24.05),
                    //         child: Container(
                    //           child: Icon(
                    //             MdiIcons.instagram,
                    //             color: Color.fromRGBO(130,130,130,1),
                    //             size: 20.77,
                    //           ),
                    //         ),
                    //       ),

                    //       //linkedin
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 24.05),
                    //         child: Container(
                    //           child: Icon(
                    //             MdiIcons.linkedin,
                    //             color: Color.fromRGBO(130,130,130,1),
                    //             size: 20.77,
                    //           ),
                    //         ),
                    //       ),

                    //       //twitter
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 24.05),
                    //         child: Container(
                    //           child: Icon(
                    //             MdiIcons.twitter,
                    //             color: Color.fromRGBO(130,130,130,1),
                    //             size: 20.77,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    //text
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 17, right:16,top: 28.37),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'N',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 0,
                                  fontSize: 64,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: 'o word of lie, recent times have been tough on all of us. From the breakout of pandemic to frequent',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' earthquakes,',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' natural calamities and what not, this year isn\'t actually turning out to be as planned. ',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: '\nCleaning constitutes of plethora of branches but in this blog, we\'ll be solely focused on things of actual concern, i.e.',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' sofa',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' cleaning,',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' carpet',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' cleaning,',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' bathroom',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' cleaning,',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' chimney',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                              TextSpan(
                                text: ' cleaning etc.',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  height: 2.8,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0,0,0,1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //continue reading
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Text(
                          'Continue Reading',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.88,
                            color: Color.fromRGBO(0,0,0,1),
                            backgroundColor: Colors.grey[50],
                          ),
                        ),
                      ),
                    ),

                    //written by
                    Padding(
                      padding: const EdgeInsets.only(top: 17.29,left: 67, right: 66.01,bottom: 31.62),
                      child: Container(
                        //height: 45.38,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(181,101,167,1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.44,bottom: 10),
                          child: Text(
                            'Written by: Suraj',
                            style: GoogleFonts.rochester(
                              fontWeight: FontWeight.w400,
                              fontSize: 23.22,
                              color: Color.fromRGBO(255,255,255,1),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //list of pages
            Padding(
              padding: const EdgeInsets.only(top: 34.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 39.27,
                    width: 28,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(181,101,167,1),
                      borderRadius: BorderRadius.circular(3.78),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 9.0,bottom: 10),
                      child: Text(
                        '1',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.99,
                          color: Color.fromRGBO(255,255,255,1),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 39.27,
                      width: 28,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(51,51,51,1),
                        borderRadius: BorderRadius.circular(3.78),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 9.0,bottom: 10),
                        child: Text(
                          '2',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.99,
                            color: Color.fromRGBO(255,255,255,1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 39.27,
                      width: 28,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(51,51,51,1),
                        borderRadius: BorderRadius.circular(3.78),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 9.0,bottom: 10),
                        child: Text(
                          '3',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.99,
                            color: Color.fromRGBO(255,255,255,1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 39.27,
                      width: 28,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(51,51,51,1),
                        borderRadius: BorderRadius.circular(3.78),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 9.0,bottom: 10),
                        child: Text(
                          '4',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.99,
                            color: Color.fromRGBO(255,255,255,1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 39.27,
                      width: 28,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(51,51,51,1),
                        borderRadius: BorderRadius.circular(3.78),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 9.0,bottom: 10),
                        child: Text(
                          '>>',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.99,
                            color: Color.fromRGBO(255,255,255,1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 39.27,
                      width: 28,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(51,51,51,1),
                        borderRadius: BorderRadius.circular(3.78),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0,bottom: 10),
                        child: Text(
                          '● ● ●',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 3.10,
                            color: Color.fromRGBO(255,255,255,1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 39.27,
                      width: 56.98,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(51,51,51,1),
                        borderRadius: BorderRadius.circular(3.78),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12.0,bottom: 10),
                        child: Text(
                          'LAST>>',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 11.00,
                            color: Color.fromRGBO(255,255,255,1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //6 container enter email
            Padding(
              padding: const EdgeInsets.only(top: 58.73,left: 25.65, right: 22.48),
              child: Container(
                width: double.infinity,
                height: 236.91,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255,255,255,1),
                  boxShadow: [BoxShadow(
                    blurRadius: 3.3,
                    offset: Offset(0,0.82),
                    color: Color.fromRGBO(0,0,0,0.25)
                  )],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 27.99),
                      child: Text(
                        "Subscribe",
                        style: GoogleFonts.rochester(
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(0,0,0,1),
                          fontSize: 24,
                        ),
                      ),
                    ),

                    //enter email address
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0,left: 45.0,right: 43.95),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(31.324),
                          color: Color.fromRGBO(238,238,238,1),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Your Email...',
                            contentPadding: EdgeInsets.only(bottom: 20.98, top: 20, right: 36,left: 37),
                            hintStyle: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.44,
                              color: Color.fromRGBO(78,78,78,1),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //subscribe button
                    Padding(
                      padding: const EdgeInsets.only(top: 7.98,left: 45.0,right: 43.95),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(31.324),
                          color: Color.fromRGBO(181,101,167,1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0,bottom: 18.15,left: 41, right: 41.97),
                          child: Text(
                            'Subscribe',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromRGBO(255,255,255,1),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),


            //list of social media icons
            Padding(
              padding: const EdgeInsets.only(top: 24.0,left: 23.65, right: 24.47),
              child: Container(
                width: double.infinity,
                height: 87.96,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255,255,255,1),
                  boxShadow: [BoxShadow(
                    blurRadius: 3.3,
                    offset: Offset(0,0.82),
                    color: Color.fromRGBO(0,0,0,0.25)
                  )],
                ),
                child: Row(
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 34.49,left: 61.98,bottom: 35.42),
                    //   child: Icon(
                    //     MdiIcons.facebook,
                    //     size: 25.05,
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 34.49,left: 41.3,bottom: 35.42),
                    //   child: Icon(
                    //     MdiIcons.instagram,
                    //     size: 25.05,
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 34.49,left: 41.3,bottom: 35.42),
                    //   child: Icon(
                    //     MdiIcons.linkedin,
                    //     size: 25.05,
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 34.49,left: 41.3,bottom: 35.42),
                    //   child: Icon(
                    //     MdiIcons.twitter,
                    //     size: 25.05,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),

            //recent posts
            Padding(
              padding: const EdgeInsets.only(top: 24.0, left:23.65, right: 24.47),
              child: Container(
                height: 415.83,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255,255,255,1),
                  boxShadow: [BoxShadow(
                    blurRadius: 3.35,
                    offset: Offset(0,0.84),
                    color: Color.fromRGBO(0,0,0,0.25),
                  )],
                ),
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 20.45),
                      child: Text(
                        'Recent Posts',
                        style: GoogleFonts.rochester(
                          fontWeight: FontWeight.w400,
                          fontSize: 25.41,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    
                    //1 line
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 28.24,left: 34.19),
                        //   child: Container(
                        //     height: 70.12,
                        //     width: 90.06,
                        //     child: Image.asset(
                        //       'assets/images/622464_pnw0ux_249.png',
                        //     ),
                        //   ),
                        // ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7.51, right: 13.74,top: 28.09),
                              child: Text(
                                'All things you need to know\nabout cartiredge waxing',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: Color.fromRGBO(0,0,0,1),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 7.51, right: 83.74,top: 2.4),
                              child: Text(
                                'SEPTEMBER 12, 2017',
                                style: GoogleFonts.roboto(
                                  fontSize: 10,
                                  color: Color.fromRGBO(130,130,130,1),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 19.0,left: 28.35,right: 13.34),
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255,255,255,1),
                          boxShadow: [BoxShadow(
                            offset: Offset(0,1.0),
                            color: Color.fromRGBO(235,235,235,1),
                          )]
                        ),
                      ),
                    ),

                    //2 line
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 28.24,left: 34.19),
                        //   child: Container(
                        //     height: 70.12,
                        //     width: 90.06,
                        //     child: Image.asset(
                        //       'assets/images/14259.png',
                        //       fit: BoxFit.fill,
                        //     ),
                        //   ),
                        // ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7.51, right: 13.74,top: 28.09),
                              child: Text(
                                'All things you need to know\nabout cartiredge waxing',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: Color.fromRGBO(0,0,0,1),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 7.51, right: 83.74,top: 2.4),
                              child: Text(
                                'SEPTEMBER 12, 2017',
                                style: GoogleFonts.roboto(
                                  fontSize: 10,
                                  color: Color.fromRGBO(130,130,130,1),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 19.0,left: 28.35,right: 13.34),
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255,255,255,1),
                          boxShadow: [BoxShadow(
                            offset: Offset(0,1.0),
                            color: Color.fromRGBO(235,235,235,1),
                          )]
                        ),
                      ),
                    ),

                    //3 line
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 28.24,left: 34.19),
                        //   child: Container(
                        //     height: 70.12,
                        //     width: 90.06,
                        //     child: Image.asset(
                        //       'assets/images/3611.png',
                        //       fit: BoxFit.fill,
                        //     ),
                        //   ),
                        // ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7.51, right: 13.74,top: 28.09),
                              child: Text(
                                'All things you need to know\nabout cartiredge waxing',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: Color.fromRGBO(0,0,0,1),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 7.51, right: 83.74,top: 2.4),
                              child: Text(
                                'SEPTEMBER 12, 2017',
                                style: GoogleFonts.roboto(
                                  fontSize: 10,
                                  color: Color.fromRGBO(130,130,130,1),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 19.0,left: 28.35,right: 13.34),
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255,255,255,1),
                          boxShadow: [BoxShadow(
                            offset: Offset(0,1.0),
                            color: Color.fromRGBO(235,235,235,1),
                          )]
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            //categories
            Padding(
              padding: const EdgeInsets.only(top: 24,left: 23.65,right: 24.47),
              child: Container(
                width: double.infinity,
                height: 320.87,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255,255,255,1),
                  boxShadow: [BoxShadow(
                    blurRadius: 3.3,
                    offset: Offset(0,0.82),
                    color: Color.fromRGBO(0,0,0,0.25)
                  )],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 19.56),
                      child: Text(
                        'Categories',
                        style: GoogleFonts.rochester(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    //blog
                    Padding(
                      padding: const EdgeInsets.only(top: 37.77,left: 26),
                      child: Container(
                        height: 37.17,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'BLOG',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(0,0,0,1),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.48,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 3.32,left: 20.35,right: 20.34),
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255,255,255,1),
                          boxShadow: [BoxShadow(
                            offset: Offset(0,1.0),
                            color: Color.fromRGBO(235,235,235,1),
                          )]
                        ),
                      ),
                    ),

                    //diy
                    Padding(
                      padding: const EdgeInsets.only(top: 6.25,left: 26),
                      child: Container(
                        height: 37.17,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'DIY',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0,0,0,1),
                            letterSpacing: 0.48,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 3.32,left: 20.35,right: 20.34),
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255,255,255,1),
                          boxShadow: [BoxShadow(
                            offset: Offset(0,1.0),
                            color: Color.fromRGBO(235,235,235,1),
                          )]
                        ),
                      ),
                    ),

                    //lifestyle
                    Padding(
                      padding: const EdgeInsets.only(top: 6.25,left: 26),
                      child: Container(
                        height: 37.17,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'LIFESTYLE',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0,0,0,1),
                            letterSpacing: 0.48,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 3.32,left: 20.35,right: 20.34),
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255,255,255,1),
                          boxShadow: [BoxShadow(
                            offset: Offset(0,1.0),
                            color: Color.fromRGBO(235,235,235,1),
                          )]
                        ),
                      ),
                    ),

                    //uncategorized
                    Padding(
                      padding: const EdgeInsets.only(top: 6.25,left: 26),
                      child: Container(
                        height: 37.17,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'UNCATEGORISED',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0,0,0,1),
                            letterSpacing: 0.48,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 3.32,left: 20.35,right: 20.34),
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255,255,255,1),
                          boxShadow: [BoxShadow(
                            offset: Offset(0,1.0),
                            color: Color.fromRGBO(235,235,235,1),
                          )]
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //search
            Padding(
              padding: const EdgeInsets.only(top: 24,left: 23.65, right: 24.47),
              child: Container(
                width: double.infinity,
                height: 154.94,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255,255,255,1),
                  boxShadow: [BoxShadow(
                    blurRadius: 3.3,
                    offset: Offset(0,0.82),
                    color: Color.fromRGBO(0,0,0,0.25)
                  )],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:18.34),
                      child: Text(
                        'Search',
                        style: GoogleFonts.rochester(
                          fontWeight: FontWeight.w400,
                          fontSize: 26,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 31.79,left: 22.28,right: 22.04),
                      child: Container(
                        height: 45.84,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(238,238,238,1),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'SEARCH AND HIT ENTER...',
                            suffixIcon: Icon(Icons.search,color: Color.fromRGBO(68,68,68,1)),
                            contentPadding: EdgeInsets.only(bottom: 12.92, top: 13,left: 24.7),
                            hintStyle: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.44,
                              color: Color.fromRGBO(78,78,78,1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //popular posts 
            Padding(
              padding: const EdgeInsets.only(top: 24.0, left:23.65, right: 24.47),
              child: Container(
                height: 415.83,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255,255,255,1),
                  boxShadow: [BoxShadow(
                    blurRadius: 3.35,
                    offset: Offset(0,0.84),
                    color: Color.fromRGBO(0,0,0,0.25),
                  )],
                ),
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 20.45),
                      child: Text(
                        'Popular Posts',
                        style: GoogleFonts.rochester(
                          fontWeight: FontWeight.w400,
                          fontSize: 25.41,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    
                    //1 line
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 28.24,left: 34.19),
                        //   child: Container(
                        //     height: 70.12,
                        //     width: 90.06,
                        //     child: Image.asset(
                        //       'assets/images/3618.png',
                        //     ),
                        //   ),
                        // ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7.51, right: 13.74,top: 28.09),
                              child: Text(
                                'All things you need to know\nabout cartiredge waxing',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: Color.fromRGBO(0,0,0,1),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 7.51, right: 83.74,top: 2.4),
                              child: Text(
                                'SEPTEMBER 12, 2017',
                                style: GoogleFonts.roboto(
                                  fontSize: 10,
                                  color: Color.fromRGBO(130,130,130,1),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 19.0,left: 28.35,right: 13.34),
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255,255,255,1),
                          boxShadow: [BoxShadow(
                            offset: Offset(0,1.0),
                            color: Color.fromRGBO(235,235,235,1),
                          )]
                        ),
                      ),
                    ),

                    //2 line
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 28.24,left: 34.19),
                        //   child: Container(
                        //     height: 70.12,
                        //     width: 90.06,
                        //     child: Image.asset(
                        //       'assets/images/2271.png',
                        //       fit: BoxFit.fill,
                        //     ),
                        //   ),
                        // ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7.51, right: 13.74,top: 28.09),
                              child: Text(
                                'All things you need to know\nabout cartiredge waxing',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: Color.fromRGBO(0,0,0,1),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 7.51, right: 83.74,top: 2.4),
                              child: Text(
                                'SEPTEMBER 12, 2017',
                                style: GoogleFonts.roboto(
                                  fontSize: 10,
                                  color: Color.fromRGBO(130,130,130,1),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 19.0,left: 28.35,right: 13.34),
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255,255,255,1),
                          boxShadow: [BoxShadow(
                            offset: Offset(0,1.0),
                            color: Color.fromRGBO(235,235,235,1),
                          )]
                        ),
                      ),
                    ),

                    //3 line
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 28.24,left: 34.19),
                        //   child: Container(
                        //     height: 70.12,
                        //     width: 90.06,
                        //     child: Image.asset(
                        //       'assets/images/17830.png',
                        //       fit: BoxFit.fill,
                        //     ),
                        //   ),
                        // ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7.51, right: 13.74,top: 28.09),
                              child: Text(
                                'All things you need to know\nabout cartiredge waxing',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: Color.fromRGBO(0,0,0,1),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 7.51, right: 83.74,top: 2.4),
                              child: Text(
                                'SEPTEMBER 12, 2017',
                                style: GoogleFonts.roboto(
                                  fontSize: 10,
                                  color: Color.fromRGBO(130,130,130,1),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 19.0,left: 28.35,right: 13.34),
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255,255,255,1),
                          boxShadow: [BoxShadow(
                            offset: Offset(0,1.0),
                            color: Color.fromRGBO(235,235,235,1),
                          )]
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          
            //Tags
             Padding(
              padding: const EdgeInsets.only(top: 24.0, left:23.65, right: 24.47, bottom: 16.02),
              child: Container(
                height: 298,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255,255,255,1),
                  boxShadow: [BoxShadow(
                    blurRadius: 3.35,
                    offset: Offset(0,0.84),
                    color: Color.fromRGBO(0,0,0,0.25),
                  )],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 21.03),
                      child: Text(
                        'Tags',
                        style: GoogleFonts.rochester(
                          fontSize: 25.4,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 14.62,left: 24.34,right: 24.26),
                      child: Row(
                        children: [
                          //Tags(),
                          TagCard(
                            text: "MAKEUP FOUNDATION COURSE",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.6),
                            child: TagCard(
                              text: "WAXING",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.6),
                            child: TagCard(
                              text: "HAIRCUT",
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 24.34,right: 24.26),
                      child: Row(
                        children: [
                          //Tags(),
                          TagCard(
                            text: "MAKE YOUR COURSE",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.6),
                            child: TagCard(
                              text: "ADVANCE COURSE",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.6),
                            child: TagCard(
                              text: "MAKEUP",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 24.34,right: 24.26),
                      child: Row(
                        children: [
                          //Tags(),
                          TagCard(
                            text: "NAIL ARTS & EXTENSION",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.6),
                            child: TagCard(
                              text: "HAIR TREATMENT",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 24.34,right: 24.26),
                      child: Row(
                        children: [
                          //Tags(),
                          TagCard(
                            text: "TATTO DESIGN",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.6),
                            child: TagCard(
                              text: "MEHNDI DESIGN",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.6),
                            child: TagCard(
                              text: "SAREE DRAPING",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 24.34,right: 24.26),
                      child: Row(
                        children: [
                          //Tags(),
                          TagCard(
                            text: "SKIN TREATMENT",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.6),
                            child: TagCard(
                              text: "HAIR STYLING",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.6),
                            child: TagCard(
                              text: "HAIR COLOR",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 24.34,right: 24.26),
                      child: Row(
                        children: [
                          //Tags(),
                          TagCard(
                            text: "AYURVEDIC HAIR",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.6),
                            child: TagCard(
                              text: "GROOMING",
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class TagCard extends StatelessWidget {

  final String text;

  const TagCard({Key? key, required this.text}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26.09,
      //width: 180,
      decoration: BoxDecoration(
        color: Color.fromRGBO(187,187,187,1),
        borderRadius: BorderRadius.circular(4.62),
      ),
      child: Padding(
        padding: const EdgeInsets.only( top:5.55,left: 3.7,right: 3.7),
        child: Text(
          text,
          style: GoogleFonts.getFont(
            'Reem Kufi',
            fontWeight: FontWeight.w400,
            fontSize: 9.93,
            color: Color.fromRGBO(255,255,255,1),
          ),
        textAlign: TextAlign.center,
        ),
      ),
    );
  }
}