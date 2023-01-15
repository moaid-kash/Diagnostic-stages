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
                  child: Text('مسكنات'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyListPage(title: 'مسكنات',titleKey1: 'Addpharmaceutical', titlekey2: 'user',)));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(height: 8,),
                ElevatedButton(
                  child: Text('مضاد حيوي'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),

                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyListPage(title: 'مضاد حيوي',titleKey1: 'Addpharmaceutical', titlekey2: 'user',)));
                  },

                ),
                SizedBox(height: 8,),

                ElevatedButton(
                  child: Text('مضاد اكتئاب'),

                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyListPage(title: 'مضاد اكتئاب',titleKey1: 'Addpharmaceutical', titlekey2: 'user',)));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),

                ),



                SizedBox(height: 8,),

                ElevatedButton(
                  child: Text('فيتامينات'),

                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>MyListPage(title: 'فيتامينات',titleKey1: 'Addpharmaceutical', titlekey2: 'user',)));
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
