import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
          useMaterial3: true,
        ),
        home: myAppContent(),
    );
  }
}
class myAppContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    double blockHeight = height / 4;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Basic UI"),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.blue,
                width: width / 2,
                height: blockHeight,
              ),
              Container(
                color: Colors.red,
                width: width / 2,
                height: blockHeight,
              )
            ],
          ),
          Container(
            color: Colors.green,
            width: width,
            height: blockHeight,
          ),
          Row(
            children: [
              Container(
                color: Colors.blue,
                width: width / 3,
                height: blockHeight,
              ),
              Container(
                color: Colors.black,
                width: width / 3,
                height: blockHeight,
              ),
              Column(
                children: [
                  Container(
                    color: Colors.yellow,
                    width: width / 3,
                    height: blockHeight / 4,
                  ),
                  Container(
                    color: Colors.pink,
                    width: width / 3,
                    height: blockHeight / 4,
                  ),
                  Container(
                    color: Colors.purple,
                    width: width / 3,
                    height: blockHeight / 4,
                  ),
                  Container(
                    color: Colors.orange,
                    width: width / 3,
                    height: blockHeight / 4,
                  ),
                ],
              )
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.brown,
            ),
          ),
        ],
      ),

    );
  }
}

