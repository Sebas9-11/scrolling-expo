import 'package:flutter/material.dart';

class Scrolling extends StatelessWidget {
  const Scrolling({super.key});

  static const String _title = 'Scroll and listView';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Row(
        children: <Widget>[
          SizedBox(
              width: constraints.maxWidth,
              child: Scrollbar(
                thumbVisibility: true,
                child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('item : $index',
                            style: const TextStyle(
                              fontSize: 20,
                            )),
                      );
                    }),
              )),
        ],
      );
    });
  }
}
