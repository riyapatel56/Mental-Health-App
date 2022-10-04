import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health/models/wbh.dart';
import 'package:mental_health/pages/homepage.dart';
import 'package:mental_health/screens/articles.dart';
import 'package:mental_health/screens/detail/detailcategory.dart';
import 'package:mental_health/screens/loginscreen.dart';
import 'package:mental_health/screens/video/v.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/categorymodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _savedName;
  final TextEditingController _nameController = TextEditingController();

  // Retrieve the saved name if it exists

  Future<void> _retrieveName() async {
    final prefs = await SharedPreferences.getInstance();

    // Check where the name is saved before or not
    if (!prefs.containsKey('name')) {
      return;
    }

    setState(() {
      _savedName = prefs.getString('name');
    });
  }

  Future<void> _saveName() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('name', _nameController.text);
    setState(() {
      _savedName = _nameController.text;
    });
    Navigator.pop(context);
  }

  Future<void> _clearName() async {
    final prefs = await SharedPreferences.getInstance();
    // Check where the name is saved before or not
    if (!prefs.containsKey('name')) {
      return;
    }

    await prefs.remove('name');
    setState(() {
      _savedName = null;
    });
    Navigator.pop(context);
  }

  //greeeting
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning!';
    }
    if (hour < 17) {
      return 'Good Afternoon!';
    }
    return 'Good Evening!';
  }

  @override
  void initState() {
    super.initState();
    _retrieveName();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; // give us total height and width of our device
    return Scaffold(
      backgroundColor: //Color.fromRGBO(230, 232, 242, 1),
          Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: IconButton(
              icon: const Icon(
                Icons.article,
                color: Color.fromRGBO(184, 185, 251, 1),
              ),
              onPressed: () {
                Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Discover(),));
              }),
        ),
        //profile
        actions: [
          GestureDetector(
            onTap: () => showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Center(child: Text("Enter Your Nickname!")),
                  content: Builder(
                    builder: (context) {
                      return Container(
                          height: 150,
                          child: _savedName == null
                              ? Column(
                                  children: [
                                    TextField(
                                      controller: _nameController,
                                      decoration: const InputDecoration(
                                          labelText: 'Your Name'),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ElevatedButton(
                                      onPressed: _saveName,
                                      child: const Text('Save'),
                                    )
                                  ],
                                )
                              : Column(children: [
                                  Text(
                                    '$_savedName',
                                    style: const TextStyle(fontSize: 30),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ElevatedButton(
                                      onPressed: _clearName,
                                      child: const Text('Reset'))
                                ]));
                    },
                  ),
                );
              },
            ),
            child: CircleAvatar(
              child: Image.asset(
                'assets/OIP.png',
                fit: BoxFit.fitHeight,
              ),
              radius: 40,
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      //height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            //Color.fromARGB(255, 208, 241, 178),
                            //Color.fromARGB(255, 133, 200, 231),
                            // Color.fromARGB(255, 246, 195, 255),
                            Colors.grey.shade100,
                            Colors.grey.shade200,
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            if (_savedName != null)
                              Text(
                                "Hey $_savedName,",
                                style: GoogleFonts.openSans(
                                  color: Colors.black45,
                                  letterSpacing: 0.4,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            if (_savedName == null)
                              Text(
                                "Hey,",
                                style: GoogleFonts.openSans(
                                  color: Colors.black45,
                                  letterSpacing: 0.4,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              greeting(),
                              style: GoogleFonts.openSans(
                                color: Colors.black45,
                                letterSpacing: 0.4,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              '“I understand your pain. Trust me, I do. I’ve seen people go from the darkest moments in their lives to living a happy, fulfilling life. You can do it too. I believe in you. You are not a burden. You will NEVER BE a burden.”',
                              style: GoogleFonts.openSans(
                                color: Colors.black,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Exercises",
                        style: GoogleFonts.lato(
                          color: Color.fromARGB(255, 8, 120, 172),
                          letterSpacing: 0.4,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    //exercise
                    Container(
                      height: 165,
                      child: GridView.count(
                        scrollDirection: Axis.horizontal,
                        crossAxisCount: 1,
                        childAspectRatio: 1.40,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        children: <Widget>[
                          CategoryCard(
                            title: "Meditate",
                            image: "assets/meditate.png",
                            press: () {},
                          ),
                          CategoryCard(
                            title: "Jogging",
                            image: "assets/jogging.png",
                            press: () {},
                          ),
                          CategoryCard(
                            title: "Yoga",
                            image: "assets/yoga.png",
                            press: () {},
                          ),
                          CategoryCard(
                            title: "Excercise",
                            image: "assets/meditate.png",
                            press: () {},
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 22.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePages(
                                            opendrawer: () {},
                                          )));
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2.4,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 233, 164, 245),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 100,
                              child: Center(
                                child: Text(
                                  'Motivational\nVideos',
                                  style: GoogleFonts.lato(
                                    color: Colors.white,
                                    letterSpacing: 0.4,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePages(
                                            opendrawer: () {},
                                          )));
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2.4,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(233, 148, 207, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 100,
                              child: Center(
                                child: Text(
                                  'Challenges',
                                  style: GoogleFonts.lato(
                                    color: Colors.white,
                                    letterSpacing: 0.4,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "Podcasts & Music",
                        style: GoogleFonts.lato(
                          color: Color.fromARGB(255, 58, 2, 56),
                          letterSpacing: 0.4,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),

                    Container(
                      height: 165,
                      child: GridView.count(
                        scrollDirection: Axis.horizontal,
                        crossAxisCount: 1,
                        childAspectRatio: 1.40,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        children: <Widget>[
                          CategoryCards(
                            title: "Sadhguru",
                            image: "assets/download.jpg",
                            press: () {},
                          ),
                          CategoryCards(
                            title: "Dangal",
                            image: "assets/images.jpg",
                            press: () {},
                          ),
                          CategoryCards(
                            title: "Sandeep Maheshwari",
                            image: "assets/download (1).jpg",
                            press: () {},
                          ),
                          CategoryCards(
                            title: "Soulful",
                            image: "assets/meditate.png",
                            press: () {},
                          ),
                        ],
                      ),
                    ),

                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 19.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePages(
                                            opendrawer: () {},
                                          )));
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 231, 143, 157),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 100,
                              child: Center(
                                child: Text(
                                  'Rewards',
                                  style: GoogleFonts.lato(
                                    color: Colors.white,
                                    letterSpacing: 0.4,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                  'assets/stock-vector-trophy-winner-golden-cup-vector-icon-1597342384-removebg-preview.png')),
                        ),
                      ],
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
