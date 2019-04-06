import 'package:event_app/src/style/dimen.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfffbfcff),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          searchHeader(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                eventType(),
                allCategories(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget searchHeader() {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      height: 150,
      color: Colors.greenAccent[400],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 40,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: TextField(
                decoration: InputDecoration(
                  hintText: "Search For...",
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.white),
                ),
                style: TextStyle(color: Colors.white, fontSize: 32)),
          ),
        ],
      ),
    );
  }

  Widget eventType() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Event Type",
            style: TextStyle(
              fontSize: Dimen.TEXT_LARGE,
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10),
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                eventTypeItem("Today"),
                eventTypeItem("Tomorrow", isSelected: true),
                eventTypeItem("This Week"),
                eventTypeItem("This Month"),
                eventTypeItem("This This Year"),
                eventTypeItem("This This Season"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget allCategories() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Event Type",
            style: TextStyle(
              fontSize: Dimen.TEXT_LARGE,
            ),
          ),
          Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10),
              height: 60,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20.0),
                crossAxisSpacing: 10.0,
                crossAxisCount: 2,
                children: <Widget>[
                  const Text('He\'d have you all unravel at the'),
                  const Text('Heed not the rabble'),
                  const Text('Sound of screams but the'),
                  const Text('Who scream'),
                  const Text('Revolution is coming...'),
                  const Text('Revolution, they...'),
                ],
              ))
        ],
      ),
    );
  }

  Widget eventTypeItem(String title, {isSelected = false}) {
    var textColor = Colors.black;
    var backgroudColor = Colors.white;
    if (isSelected) {
      textColor = Colors.white;
      backgroudColor = Colors.greenAccent[400];
    }
    return Row(
      children: <Widget>[
        Material(
          elevation: 2,
          color: backgroudColor,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(color: textColor),
            ),
          ),
        ),
        SizedBox(width: 8),
      ],
    );
  }
}
