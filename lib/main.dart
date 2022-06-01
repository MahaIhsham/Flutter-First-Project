import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child:Home(),
        ),
      ),
    );
  }
}
enum SingingCharacter { Linear, compact }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SingingCharacter? _character = SingingCharacter.Linear;
  String dropdownvalue = 'Item 1';
  var items = [
    'softawre',
    'Textile',
    'electrical',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orentation) {
          if (Orientation == Orientation.portrait) {
            return potraitWidget();
          }
          else {
            return landscapeWidget();
          }
        },
      ),
    );
  }


  Widget potraitWidget() {
    return Expanded(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,
              child:

              Text("Name Of Department", style: TextStyle(
                  color: Colors.green, fontWeight: FontWeight.bold)),),
            Container(
              margin: EdgeInsets.all(5),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.05,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.shade200, //shadow for button
                        blurRadius: 5) //blur radius of shadow
                  ]
              ),
              child: DropdownButton(
                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
                hint: Text("Select From the list"),
                icon: const Icon(Icons.keyboard_arrow_down),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),

              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,

              child:
              Text("Distric", style: TextStyle(
                  color: Colors.green, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.shade200, //shadow for button
                        blurRadius: 5) //blur radius of shadow
                  ]

              ),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.05,
              child:
              DropdownButton(

                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(

                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
                hint: Text("Select From the list"),
                icon: const Icon(Icons.keyboard_arrow_down),


              ),
            ),
            Container(
              margin: EdgeInsets.all(5),


              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,

              child: Text("Name of site", style: TextStyle(
                  color: Colors.green, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.all(5),

              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
              ),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.05,

              child: TextField(
                decoration: InputDecoration(

                  hintText: " i.e Govt high School Bhera",
                ),

              ),
            ),
            Container(
              margin: EdgeInsets.all(5),


              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.05,
              child: Text("Planation Type", style: TextStyle(
                  color: Colors.green, fontWeight: FontWeight.bold)),
            ),

            Container(

              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,
              child: Column(
                children: <Widget>[
                  ListTile(

                    title: const Text('Linear'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.Linear,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('compact'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.compact,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,

              child: Text(" Area(Acre/Av.Km/mile)", style: TextStyle(
                  color: Colors.green, fontWeight: FontWeight.bold)),
            ),
            Row(

                children: [SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.05,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.3,
                  child:

                  TextField(
                    decoration: InputDecoration(

                      hintText: " i.e 03 Acre",
                    ),

                  ),),
                ]
            ),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,

              margin: EdgeInsets.all(10),

              child: Text(" Address/Location/Area/Tehsil/Road",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold)),
            ),
            Container(margin: EdgeInsets.all(5),
              alignment: Alignment.centerLeft,


              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
              ),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.05,
              child: TextField(
                decoration: InputDecoration(

                  hintText: " Address/Location/Area/Tehsil/Road",
                ),

              ),),
            Row(
              children: [
                Container(

                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.35,

                  child: Text("No of plants", style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold)),
                ),
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.3,


                  child: Text("Type of plants", style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold)),
                ),


              ],

            ),
            Row(
              children: [
                Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.3,

                    alignment: Alignment.topRight,
                    margin: EdgeInsets.all(5),

                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child:
                    TextField(
                      decoration: InputDecoration(

                        hintText: " i.e 100",
                      ),

                    )

                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.all(5),

                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.5,


                  child: DropdownButton(

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(

                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                    hint: Text("Select From the list"),
                    icon: const Icon(Icons.keyboard_arrow_down),


                  ),
                ),

              ],
            ),
            Row(
              children: [
                Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.all(5),

                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5),
                    ),

                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.3,

                    child:

                    TextField(
                      decoration: InputDecoration(

                        hintText: " i.e 100",
                      ),

                    )

                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.all(5),

                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5),
                  ),


                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.5,


                  child: DropdownButton(

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(

                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                    hint: Text("Select From the list"),
                    icon: const Icon(Icons.keyboard_arrow_down),


                  ),
                ),

              ],
            ),

          ],
        ),


      ),
    );
  }
  Widget landscapeWidget() {
    return Expanded(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,
              child:

              Text("Name Of Department", style: TextStyle(
                  color: Colors.green, fontWeight: FontWeight.bold)),),
            Container(
              margin: EdgeInsets.all(5),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.05,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.shade200, //shadow for button
                        blurRadius: 5) //blur radius of shadow
                  ]
              ),
              child: DropdownButton(
                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
                hint: Text("Select From the list"),
                icon: const Icon(Icons.keyboard_arrow_down),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),

              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,

              child:
              Text("Distric", style: TextStyle(
                  color: Colors.green, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.shade200, //shadow for button
                        blurRadius: 5) //blur radius of shadow
                  ]

              ),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.05,
              child:
              DropdownButton(

                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(

                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
                hint: Text("Select From the list"),
                icon: const Icon(Icons.keyboard_arrow_down),


              ),
            ),
            Container(
              margin: EdgeInsets.all(5),


              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,

              child: Text("Name of site", style: TextStyle(
                  color: Colors.green, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.all(5),

              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
              ),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.05,

              child: TextField(
                decoration: InputDecoration(

                  hintText: " i.e Govt high School Bhera",
                ),

              ),
            ),
            Container(
              margin: EdgeInsets.all(5),


              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.05,
              child: Text("Planation Type", style: TextStyle(
                  color: Colors.green, fontWeight: FontWeight.bold)),
            ),

            Container(

              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,
              child: Column(
                children: <Widget>[
                  ListTile(

                    title: const Text('Linear'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.Linear,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('compact'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.compact,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,

              child: Text(" Area(Acre/Av.Km/mile)", style: TextStyle(
                  color: Colors.green, fontWeight: FontWeight.bold)),
            ),
            Row(

                children: [SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.05,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.3,
                  child:

                  TextField(
                    decoration: InputDecoration(

                      hintText: " i.e 03 Acre",
                    ),

                  ),),
                ]
            ),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,

              margin: EdgeInsets.all(10),

              child: Text(" Address/Location/Area/Tehsil/Road",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold)),
            ),
            Container(margin: EdgeInsets.all(5),
              alignment: Alignment.centerLeft,


              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
              ),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.05,
              child: TextField(
                decoration: InputDecoration(

                  hintText: " Address/Location/Area/Tehsil/Road",
                ),

              ),),
            Row(
              children: [
                Container(

                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.35,

                  child: Text("No of plants", style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold)),
                ),
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.3,


                  child: Text("Type of plants", style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold)),
                ),


              ],

            ),
            Row(
              children: [
                Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.3,

                    alignment: Alignment.topRight,
                    margin: EdgeInsets.all(5),

                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child:
                    TextField(
                      decoration: InputDecoration(

                        hintText: " i.e 100",
                      ),

                    )

                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.all(5),

                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.45,


                  child: DropdownButton(

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(

                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                    hint: Text("Select From the list"),
                    icon: const Icon(Icons.keyboard_arrow_down),


                  ),
                ),

              ],
            ),
            Row(
              children: [
                Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.all(5),

                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5),
                    ),

                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.3,

                    child:

                    TextField(
                      decoration: InputDecoration(

                        hintText: " i.e 100",
                      ),

                    )

                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.all(5),

                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5),
                  ),


                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.45,


                  child: DropdownButton(

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(

                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                    hint: Text("Select From the list"),
                    icon: const Icon(Icons.keyboard_arrow_down),


                  ),
                ),

              ],
            ),

          ],
        ),


      ),
    );
  }


}