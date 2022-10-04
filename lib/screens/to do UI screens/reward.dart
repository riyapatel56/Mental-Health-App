import 'package:flutter/material.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({ Key? key }) : super(key: key);

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Flexible(
          child: Text(
            'We encourage you to pick a reward to award yourself. This would reinforce the positive habit of dealing with problems in an actionable manner.',
            style: const TextStyle(
              fontSize: 14,
              height: 1.2,
            ),
          ),
        ),

      ]),
    );
  }
}

