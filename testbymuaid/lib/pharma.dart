import 'package:flutter/material.dart';

import 'ListViewItem.dart';

class ListInstructions extends StatefulWidget {
  @override
  State<ListInstructions> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ListInstructions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text(' مسكنات ومنومات'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyListPage(
                              title: 'مسكنات ومنومات', titleKey1: 'Addpharmaceutical', titlekey2: 'user',
                            )));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              child: Text('مضادات'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyListPage(
                              title: 'مضادات ', titleKey1: 'Addpharmaceutical', titlekey2: 'user',
                            )));
              },
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              child: Text('باسط ومرخي عضلات'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyListPage(
                              title: 'باسط ومرخي عضلات',titleKey1: 'Addpharmaceutical', titlekey2: 'user',
                            )));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              child: Text('  فيتامينات ومكملات'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyListPage(
                              title: 'فيتامينات ومكملات',titleKey1: 'Addpharmaceutical', titlekey2: 'user',
                            )));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            ElevatedButton(
              child: Text('منشطات'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyListPage(
                              title: 'منشطات ',titleKey1: 'Addpharmaceutical', titlekey2: 'user',
                            )));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      )), //center
    );
  }
}
