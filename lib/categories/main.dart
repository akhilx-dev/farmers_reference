import 'package:farmers_reference/utils/wrapper.dart';
import 'package:flutter/material.dart';

main(context){
  final List<Map<String, dynamic>> items = [{"category":"Agriculture","categories":["Cereals","Tuber Crops","Plantation Crops","Spices","Vegetables","Fruit Crops","Ornamental Crops","Medicinal Plants","Pulses","Oil Seeds","Cash Crops","Forage Crops"]}];
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
                  onTap: () => {
                    Navigator.of(context).pushNamed('/category',arguments: {
                    "category":items[index]['category'],
                    "categories":items[index]['categories']
                  })
                  },
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
                      child: Text(items[index]["category"],
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

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrapper.wrap(context, main(context),"Categories");
  }

}
