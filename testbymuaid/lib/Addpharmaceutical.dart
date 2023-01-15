import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Addpharmaceutical extends StatefulWidget {
  @override
  State<Addpharmaceutical> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<Addpharmaceutical> {
  final databaseReference = FirebaseDatabase.instance.reference();

  TextEditingController countryController = TextEditingController();
  TextEditingController countryController_phone = TextEditingController();
  TextEditingController countryController_phone_user = TextEditingController();
  var netx = false;
  var login_st = true;
  var loading = false;
  var loading2 = false;
  List<String> items = [
    'مسكنات ومنومات',
    'باسط ومرخي عضلات',
    'منشطات ',
    'مضادات ',
    'فيتامينات ومكملات'
  ];

  @override
  initState() {
    super.initState();
  }

  Registrion_use(name_customer, phone, context, user) async {
    setState(() {
      loading = true;
    });

    var myKey = databaseReference.push().key;
    databaseReference
        .child(phone)
        .child(myKey!)
        .set({'id': myKey, "Addpharmaceutical": name_customer, 'user': user});

    Fluttertoast.showToast(
      msg: 'تم الاضافه',
      toastLength: Toast.LENGTH_SHORT,
    );
    Navigator.pop(context);

/*
    var response = await http.post(Uri.parse((AppgetApi.new_customer_ap ),),body: body);
   var jsonresponse=jsonDecode( response.body);
*/

    setState(() {
      loading = false;
    });

/*    if(jsonresponse.length==0){

      Fluttertoast.showToast(msg: 'لم يتم تعرف علي الرقم ',toastLength: Toast.LENGTH_SHORT,);

    }else {
      // Obtain shared preferences.

      loading = false;
      netx = true;
      setState(() {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => MyVerify(lotsrcr: widget.lotsrcr)),
        );

      });
    }


 */
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          extendBodyBehindAppBar: false,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
              ),
            ),
            elevation: 0,
          ),
          body: Container(
            margin: const EdgeInsets.only(left: 25, right: 25),
            alignment: Alignment.center,
            child: SingleChildScrollView(child: Registrion_screen()),
          ),
        ));
  }

  Registrion_screen() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          'http://kash-apps.sd/masarapi/img1.png',
          width: 150,
          height: 150,
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          "الادويه",
          //        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 30,
        ),
        DropdownButtonFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            filled: true,
          ),
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? value) {
            countryController_phone.text = value!;
          },
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 55,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                width: 40,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none, icon: Icon(Icons.person)),
                  enabled: false,
                ),
              ),
              const Text(
                "|",
                //            style: TextStyle(fontSize: 33, color: Colors.grey),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: TextField(
                controller: countryController,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "الاسم الدواء",
                ),
              ))
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 55,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                width: 40,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.access_alarm_outlined)),
                  enabled: false,
                ),
              ),
              const Text(
                "|",
                //            style: TextStyle(fontSize: 33, color: Colors.grey),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: TextField(
                controller: countryController_phone_user,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "استخدام ",
                ),
              ))
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          height: 45,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: (loading)
                  ? () {}
                  : () async {
                      // Registrion_use();

                      if (countryController.text.toString().isEmpty) {
                        Fluttertoast.showToast(
                          msg: 'الرجاء ادخال السؤال  ؟  ',
                          toastLength: Toast.LENGTH_SHORT,
                        );
                      } else if (countryController_phone.text
                          .toString()
                          .isEmpty) {
                        Fluttertoast.showToast(
                          msg: 'الرجاء اختيار المراحلة ؟',
                          toastLength: Toast.LENGTH_SHORT,
                        );
                      } else {
                        Registrion_use(
                            countryController.text.toString(),
                            countryController_phone.text.toString(),
                            context,
                            countryController_phone_user.text.toString());
                      }
                    },
              child: (loading)
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : const Text("اضافه")),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
