import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.cloud),
        title: Text("Mi ARBNB"),
        actions: [Icon(Icons.menu)],
      ),
      body: Column(
        children: [
          Row(
            children: [Text("Titulo"), Text("Navegación")],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          Expanded(
            flex: 56,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [Container(color: Colors.blue, height: 200)],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [Container(color: Colors.black, height: 200)],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(height: 200, width: 200, color: Colors.black),
                        Container(height: 200, width: 200, color: Colors.blue),
                      ],
                    ),
                    Column(
                      children: [
                        Container(height: 200, width: 200, color: Colors.blue),
                        Container(height: 200, width: 200, color: Colors.black),
                      ],
                    ),
                    Column(
                      children: [
                        Container(height: 200, width: 200, color: Colors.black),
                        Container(height: 200, width: 200, color: Colors.blue),
                      ],
                    ),
                  ],
                ),

                Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                        ),
                    itemCount: 12,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Colors.amber,
                        child: Center(child: Text('$index')),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
