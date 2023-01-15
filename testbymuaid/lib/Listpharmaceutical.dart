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
                  child: Text('اشادات غذائيه'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyListPage(title: 'إرشادات عامة',titleKey1: 'Addpharmaceutical', titlekey2: 'user',)));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(height: 8,),
                ElevatedButton(
                  child: Text('اشادات اختماعه'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),

                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyListPage(title: 'إرشادات غذائية ',
                              titleKey1: 'Addpharmaceutical', titlekey2: 'user',)));
                  },

                ),
                SizedBox(height: 8,),

                ElevatedButton(
                  child: Text('اشادات نفسيه'),

                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyListPage(title: 'اشادات نفسيه',titleKey1: 'Addpharmaceutical', titlekey2: 'user',)));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),

                ),



                SizedBox(height: 8,),

                ElevatedButton(
                  child: Text('اشادات رياضيه'),

                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyListPage(title: 'اشادات رياضيه', titleKey1: 'Addpharmaceutical', titlekey2: 'user',)));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),

                ),

                SizedBox(height: 8,),


              ],
            ),
          )
      ), //center

    );
  }
}
