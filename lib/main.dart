import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:from_css_color/from_css_color.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Poppins',
          textTheme: TextTheme(
              bodyText2: TextStyle(
            color: Colors.purple,
          )),
          iconTheme: const IconThemeData(color: Colors.white)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage ({key, required this.title});
  final String title;

  @override State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      // app here start from this
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 448.6,
                    height: 55.5,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child:Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 120,
                                  height: 120,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'http://picsum.photos/seed/0/600',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'Hello, Ann'
  
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  )
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.transparent,
              ),
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              ),
              Divider(
                height: 30,
                color: Colors.transparent,
              ),
              Container(
                color: Colors.green,
                child: Material(
                  child: CheckboxListTile(
                    tileColor: Colors.red,
                    title: const Text('CheckboxListTile with red background'),
                    value: true,
                    onChanged:(bool? value) { },
                     ),
                     ),
                     ),
                     Divider(
                      height: 30,
                      color: Colors.transparent,
                     ),
                     Container(
                      color: Colors.green,
                      child: Material(
                        child: CheckboxListTile(
                          tileColor: Colors.red,
                          title: const Text('CheckboxListTile with red background'),
                          value: true,
                          onChanged:(bool? value) { },
                          ),
                          ),
                          ),
                          Divider(
                            height: 55,
                            color: Colors.transparent,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const <Widget>[
                              Icon(
                                Icons.add,
                                color: Colors.pink,
                                size: 24.0,
                                semanticLabel: 'Text to announce in accessibility modes',
                                 ),
            ],
          ),

            ],
      ),
    );
  }
}


