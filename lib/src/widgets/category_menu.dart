import 'package:event_app/src/data/model/menu.dart';
import 'package:flutter/material.dart';

class CategoryMenu extends StatelessWidget {
  final Menu menu;
  const CategoryMenu(
    this.menu, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      borderRadius: BorderRadius.circular(4),
      onTap: () {},
      child: Container(
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Material(
              borderRadius: BorderRadius.circular(30),
              elevation: 10,
              shadowColor: Color(menu.backgroundColor),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Color(menu.backgroundColor),
                child: Image.asset(
                  this.menu.icon,
                  fit: BoxFit.scaleDown,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(this.menu.title)
          ],
        ),
      ),
    );
  }
}
