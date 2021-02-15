import 'package:demo/screen/MemorizePlan.dart';
import 'package:demo/screen/audioNew.dart';
import 'package:flutter/material.dart';

class Control extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
                color: Colors.amber,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Memorize()),
                  );
                },
                child: Text('Memorize')),
            FlatButton(
                color: Colors.amber,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AudioNew()),
                  );
                },
                child: Text('Audio')),
          ],
        ),
      ),
    );
  }
}
