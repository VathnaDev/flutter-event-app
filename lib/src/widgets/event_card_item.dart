import 'package:event_app/src/style/dimen.dart';
import 'package:flutter/material.dart';

class EventCardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Stack(
        children: <Widget>[
          Card(
            child: Container(
              padding: EdgeInsets.only(left: 16, top: 0, right: 16),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Dribble Meetup 2018",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Dimen.TEXT_LARGE,
                          decorationStyle: TextDecorationStyle.dotted,
                        ),
                      ),
                      IconButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        alignment: AlignmentDirectional.centerEnd,
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        color: Colors.grey,
                        icon: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "11:00 am - 4:30am",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Today",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.network(
                      "https://d3vhc53cl8e8km.cloudfront.net/hello-staging/wp-content/uploads/2017/12/22223742/Events-1200x630.jpg",
                      fit: BoxFit.cover,
                      height: 150,
                      width: double.infinity,
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          top: 0,
                          child: CircleAvatar(
                            child: Text("H"),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 0,
                          child: CircleAvatar(
                            child: Text("F"),
                            backgroundColor: Colors.red,
                          ),
                        ),
                        Positioned(
                          left: 40,
                          top: 0,
                          child: CircleAvatar(
                            child: Text(
                              "+75",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            backgroundColor: Colors.greenAccent[400],
                          ),
                        ),
                        Positioned(
                          left: 90,
                          top: 10,
                          child: Text(
                            "Others checked as going",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 125,
            right: 0,
            child: Container(
              height: 40,
              padding: EdgeInsets.only(left: 16, right: 8),
              decoration: BoxDecoration(
                  color: Colors.greenAccent[400],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50))),
              child: Row(
                children: <Widget>[
                  Text(
                    "Going",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
