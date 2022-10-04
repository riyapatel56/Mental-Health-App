import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health/screens/detail/detailcategory.dart';

class CategoryCards extends StatelessWidget {
  final String title;
  final String image;
  final Function press;

  const CategoryCards({
    Key? key,
    required this.title, required this.image,
    required this.press,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        //height: 50,
        //padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 92, 2, 89),
              Colors.grey.shade100,
            ],
          ),
          // borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(65), bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5),),
          // boxShadow: [
          //   BoxShadow(
          //     offset: Offset(0, 17),
          //     blurRadius: 17,
          //     spreadRadius: -23,
          //     color: Colors.grey.shade600,
          //   ),
          // ],
          // color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: Colors.grey.shade600,
            ),
          ],
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailsScreen()),
  );
          },
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press(),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      image,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 58, 2, 56)
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
