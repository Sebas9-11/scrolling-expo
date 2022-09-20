import 'package:flutter/material.dart';

class SingleChild extends StatelessWidget {
  const SingleChild({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 200,
              child: const Center(
                child: Text('Top'),
              ),
            ),
            Container(
              color: Colors.amber,
              height: 200,
              child: const Center(
                child: Text('Top'),
              ),
            ),
            Container(
              color: Colors.red,
              height: 200,
              child: const Center(
                child: Text('Top'),
              ),
            ),
            Container(
              color: Colors.amber,
              height: 200,
              child: const Center(
                child: Text('Top'),
              ),
            ),
            Container(
              color: Colors.red,
              height: 200,
              child: const Center(
                child: Text('Top'),
              ),
            ),
            Container(
              color: Colors.amber,
              height: 200,
              child: const Center(
                child: Text('Top'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
