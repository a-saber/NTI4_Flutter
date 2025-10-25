

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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [

            // Card
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(20),

              ),
              child: Row(
                children:
                [
                  // circle
                  // Container(
                  //   height: 50,
                  //   width: 50,
                  //   decoration: BoxDecoration(
                  //     color: Colors.red,
                  //     shape: BoxShape.circle,
                  //   ),
                  //   child: Icon(Icons.add),
                  // ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 30,
                    child: Icon(Icons.person),
                  ),
                  SizedBox(width: 10,),

                  // column as text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text('Ahmed'),
                      Text('Ahmed@gmail.com'),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 30,),
            // info Text
            Text('Info'),
            SizedBox(height: 30,),

            // age
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Text('Age'),
                Text('23'),

              ],
            ),

            Spacer(),

            // save btn
            Center(
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blueAccent
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Save')),
              ),
            ),
            SizedBox(height: 50,)
          ],
        ),
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