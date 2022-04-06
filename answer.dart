import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 2.0,
                    ),
                    child: Text('⚫'),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(color: Colors.black.withOpacity(0.3));
                },
              ),
            ],
          ),
        ),
      );
  }
}
