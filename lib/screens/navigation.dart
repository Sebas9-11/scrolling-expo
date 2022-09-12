import 'package:flutter/material.dart';

import 'scrollBar.dart';
import 'customScroll.dart';
import 'singleChild.dart';
import 'nestedScroll.dart';
import 'gridView.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Scrolling'),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Scrolling()),
                  );
                },
                child: const Text('ListView'),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CustomScroll()),
                  );
                },
                child: const Text('CustomScroll'),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SingleChild()),
                  );
                },
                child: const Text('SingleChild'),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NestedScroll()),
                  );
                },
                child: const Text('NestedScroll'),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScrollinGrid()),
                  );
                },
                child: const Text('GridView'),
              ),
            ),
          ],
        ));
  }
}
