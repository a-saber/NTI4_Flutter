import 'package:flutter/material.dart';

class TestScroll extends StatelessWidget {
  const TestScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Chats'),
              SizedBox(height: 20,),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                reverse: true,
                itemCount: 10,
                  itemBuilder: (context, index)=> DefaultContainer(
                    color: Colors.blue,
                    text: 'hello ${index+1}',
                  )
              ),
              SizedBox(height: 20,),
              Text('End'),
              SizedBox(height: 20,),
              Container(
                color: Colors.red,
                height: 500,
                width: 300,
              )

            ],
          ),
        ),
      )

    );
  }
}
class DefaultContainer extends StatelessWidget {
  final Color color;
   final String text ;

   const DefaultContainer({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 200,
      width: double.infinity,
      color: color,
      child: Text(text),
    );
  }
}
