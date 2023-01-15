import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

class MyListPage extends StatefulWidget {
  const MyListPage({super.key, required this.title, required this.titleKey1, required this.titlekey2});

  final String title;
 final String titleKey1;
 final String titlekey2;

  @override
  State<MyListPage> createState() => _MyMyListPage();
}

class _MyMyListPage extends State<MyListPage> {
  int _counter = 0;

  getData() {
    final databaseReference = FirebaseDatabase.instance.ref(widget.title);
    return FirebaseAnimatedList(
      query: databaseReference,
      itemBuilder: (BuildContext context, DataSnapshot snapshot,
          Animation<double> animation, int index) {
        return Card(
            child: ListTile(
              subtitle: widget.titlekey2==''?Container():Text(snapshot.child(widget.titlekey2).value.toString()),
                title: Text(snapshot.child(widget.titleKey1).value.toString()),
                leading: GestureDetector(
                  child: const Icon(
                    Icons.delete_forever,
                    color: Colors.red,
                  ),
                  onTap: () {
                    databaseReference
                        .child(snapshot.child('id').value.toString())
                        .remove();
                    Fluttertoast.showToast(
                      msg: 'تم الحذف ',
                      toastLength: Toast.LENGTH_SHORT,
                    );
                  },
                )));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Expanded(child: getData())
              ],
            )));
  }
}
