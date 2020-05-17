import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List items = List<String>.generate(10000, (i) => "Item $i");

    return Scaffold(
      body: GridView.builder(
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            padding: EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                    onTap: () => {Navigator.of(context).pushNamed('/category')},
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundImage:
                          ExactAssetImage('assets/images/jondoe.jpg'),
                      backgroundColor: Colors.transparent,
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: InkWell(
                        onTap: () => {
                              Navigator.of(context).pushNamed('/category',
                                  arguments: "Data passed in")
                            },
                        child: Text("Category",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold))))
              ],
            ),
          );
        },
      ),
    );
  }
}
