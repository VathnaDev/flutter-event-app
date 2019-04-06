import 'package:event_app/src/data/model/menu.dart';
import 'package:event_app/src/pages/home/searchbar.dart';
import 'package:event_app/src/style/dimen.dart';
import 'package:event_app/src/widgets/category_menu.dart';
import 'package:event_app/src/widgets/event_card_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
    @required this.menus,
  }) : super(key: key);

  final List<Menu> menus;
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SearchBar(),
            SizedBox(height: 16),
            exploreEventText(),
            SizedBox(height: 8),
            eventThisWeek(),
            SizedBox(height: 16),
            Container(
              height: 300,
              child: ListView.builder(
                itemCount: 30,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => EventCardItem(),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Category To Explore",
              style: TextStyle(
                fontSize: Dimen.TEXT_LARGE,
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: menus.length,
                itemBuilder: (context, index) {
                  return new CategoryMenu(menus[index]);
                },
              ),
            ),
            SizedBox(height: 16),
            Text(
              "From Nearby Location",
              style: TextStyle(
                fontSize: Dimen.TEXT_LARGE,
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 180,
              child: ListView.builder(
                itemCount: 30,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        "https://d3vhc53cl8e8km.cloudfront.net/hello-staging/wp-content/uploads/sites/2/2018/07/19174346/OfficialTrailer.jpg",
                        width: MediaQuery.of(context).size.width - 64,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

   Text eventThisWeek() {
    return Text(
      "Events This Week",
      style: TextStyle(
        color: Colors.grey,
        fontSize: Dimen.TEXT_LARGE,
      ),
    );
  }

  Text exploreEventText() {
    return Text(
      "Explore Events",
      style: TextStyle(
        color: Colors.greenAccent[400],
        fontSize: Dimen.TEXT_XXLARGE,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
