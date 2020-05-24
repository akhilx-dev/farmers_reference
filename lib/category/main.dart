import 'package:farmers_reference/utils/wrapper.dart';
import 'package:flutter/material.dart';

main(context,subcategories) {
  return Scaffold(
    body: GridView.builder(
      gridDelegate:
      new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: subcategories.length,
      itemBuilder: (context, index) {
        return Container(
          height: 100,
          padding: EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                  onTap: () => {
                  //   Navigator.of(context).pushNamed('/category',arguments: {
                  //   "category":subcategories[index]
                  // })
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
                      child: Text(subcategories[index],
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

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routes =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    return Wrapper.wrap(context, main(context,routes["categories"]), routes["category"]);
  }
}
