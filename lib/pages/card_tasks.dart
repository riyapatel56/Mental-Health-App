import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/note.dart';


class CardTasks extends StatelessWidget {
  Note taskuser;
  bool isActive;

  int Index;
  final colorIcon = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.orange
  ];
  ValueChanged<Note> onSelected;

  CardTasks(
      {Key? key,
      required this.taskuser,
      required this.isActive,
      required this.Index,
      // required this.animation,
      required this.onSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = colorIcon[Index % colorIcon.length];
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        if(isActive)
        Stack(
          children: [
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/confetti-sticker.gif',fit:  BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Center(
                      child: Text(
                        'Wohooaa! You Recieve A Reward',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          color: Color.fromARGB(255, 231, 14, 87),
                          letterSpacing: 0.4,
                          fontWeight: FontWeight.w600,
                          fontSize: 26,
                        ),
                      )
                    ),
                    // SizedBox(height: 20,),
                    // Center(
                    //   child: Text(
                    //     'Go For A Shopping',
                    //     textAlign: TextAlign.center,
                    //     style: GoogleFonts.lato(
                    //       color: Color.fromARGB(255, 231, 14, 87),
                    //       letterSpacing: 0.4,
                    //       fontWeight: FontWeight.w600,
                    //       fontSize: 20,
                    //     ),
                    //   )
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),

        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            width: we * 0.9,
            height: he * 0.09,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: InkWell(
                      onTap: () => onSelected(taskuser),
                      child: isActive
                          ? const Icon(Icons.check_circle_outlined,
                              color: Colors.grey)
                          :  Icon(
                              Icons.circle_outlined,
                              color: color,
                            ),
                    )),
                SizedBox(
                  width: we * 0.025,
                ),
                Expanded(
                    child: Text(taskuser.description,
                        maxLines: 20,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w500,
                          // ignore: unrelated_type_equality_checks
                          decoration: isActive
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        )))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
