import 'package:flutter/material.dart';

import 'ListViewItem.dart';

class Listpharmaceutical extends StatefulWidget {
  @override
  State<Listpharmaceutical> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Listpharmaceutical> {
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
              child: Text('ارشادات عامة'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyListPage(
                              title: 'إرشادات عامة', titleKey1: 'Addpharmaceutical', titlekey2: '',
                            )));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),


            ElevatedButton(
              child: Text('ارشادات غذائية'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyListPage(
                              title: 'إرشادات غذائية ', titleKey1: 'Addpharmaceutical', titlekey2: '',
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
              child: Text('ارشادات اجتماعية'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyListPage(
                              title: 'إرشادات إجتماعية ', titleKey1: 'Addpharmaceutical', titlekey2: '',
                            )));
              },
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              child: Text('ارشادات نفسية'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyListPage(
                              title: 'إرشادات نفسية  ', titleKey1: 'Addpharmaceutical', titlekey2: '',
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
              child: Text('ارشادات رياضيه'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyListPage(
                              title: 'إرشادات رياضية ', titleKey1: 'Addpharmaceutical', titlekey2: '',
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
