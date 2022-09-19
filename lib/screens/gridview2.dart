import 'package:flutter/material.dart';

class GridView2 extends StatelessWidget {
  const GridView2({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: GridViewClass(),
    );
  }
}

class GridViewClass extends StatefulWidget {
  const GridViewClass({Key? key}) : super(key: key);

  @override
  State<GridViewClass> createState() => _GridViewClass();
}

class _GridViewClass extends State<GridViewClass> {
  final List<Map> myProducts =
      List.generate(100000, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'gridView',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          // implement GridView.builder
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: myProducts.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(myProducts[index]["name"]),
                );
              }),
        ));
  }
}
