import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            forceElevated: true,
            // floating: true,
            // opposite of floating
            pinned: true,
            expandedHeight: 90.0,
            leading: IconButton(icon: Icon(Icons.settings), onPressed: (){}),
            flexibleSpace: FlexibleSpaceBar(
            title: Text("Smart Budget"),
            ),
            actions: [
              IconButton(icon: Icon(Icons.add),
                  onPressed: (){}
                  )
            ],
          ),
          
          SliverList(delegate: SliverChildBuilderDelegate((BuildContext context, int index){
            return Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10.0),
              height: 100.0,
            );
          },
            childCount: 10,
          ),
          ),
        ],
      ),
    );
  }
}
