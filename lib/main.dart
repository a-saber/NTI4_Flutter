

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

}

// root widget of the application
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

// first page of the app
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          // toolbarHeight: 150,
          leading: Icon(Icons.arrow_back),
          centerTitle: true,
          title: Text("Home Page"),
          actions: [
            Text('data'),
            Icon(Icons.settings),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children:
              [
                Column(),
                // red box
                Text('data'),
                // Spacer(),
                Container(
                  color: Colors.red,
                  height: 100,
                   width: 300,
                ),
                // Spacer(),



              ],
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children:
              [
                Column(),
                // red box
                Text('data'),
                // Spacer(),
                Container(
                  color: Colors.red,
                  height: 100,
                  width: 300,
                ),
                // Spacer(),



              ],
            ),
          ],
        ),



    );
  }
}

// SizedBox(width: 20,),
// Text('data ',
// style: TextStyle(
// fontSize: 30,
// fontWeight: FontWeight.w900,
// color: Colors.black,
// backgroundColor: Colors.white,
// wordSpacing: 5,
// letterSpacing: 5
// ),
// textAlign: TextAlign.start,
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// )