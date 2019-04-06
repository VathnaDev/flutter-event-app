import 'package:event_app/src/data/model/menu.dart';
import 'package:event_app/src/pages/home/home.dart';
import 'package:event_app/src/pages/search/search.dart';
import 'package:event_app/src/style/color.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final menus = List<Menu>();

  int selectedIndex = 0;

  HomePage homePage;

  @override
  void initState() {
    super.initState();

    this.menus.add(Menu("assets/icons/ic_vector.png", "Design",
        backgroundColor: AppColor.DARK_PINK));
    this.menus.add(Menu("assets/icons/ic_coding.png", "Development",
        backgroundColor: AppColor.RED));
    this.menus.add(Menu("assets/icons/ic_creativity.png", "Arts",
        backgroundColor: AppColor.BLUE));
    this.menus.add(Menu("assets/icons/ic_goal.png", "Career",
        backgroundColor: AppColor.LIGHT_BLUE));
    this.menus.add(Menu("assets/icons/ic_suitcase.png", "Business",
        backgroundColor: AppColor.DARK_BLUE));
    this.menus.add(Menu("assets/icons/ic_trophy.png", "Sports",
        backgroundColor: AppColor.GREEN));
    this.menus.add(Menu("assets/icons/ic_music_player.png", "Music",
        backgroundColor: AppColor.LIGHT_PURPLE));
    this.menus.add(Menu("assets/icons/ic_video_player.png", "Movies",
        backgroundColor: AppColor.PURPLE));
    this.menus.add(Menu("assets/icons/ic_love.png", "Charity",
        backgroundColor: AppColor.YELLOW));
    this.menus.add(Menu("assets/icons/ic_reading.png", "Learning",
        backgroundColor: AppColor.PINK));

    this.homePage = new HomePage(menus: this.menus);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: SafeArea(
          child: selectedIndex == 0 ? homePage : SearchPage(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Material(
        borderRadius: BorderRadius.circular(99),
        elevation: 15,
        shadowColor: Colors.greenAccent[400],
        child: FloatingActionButton(
          backgroundColor: Colors.greenAccent[400],
          child: Icon(
            Icons.add,
            size: 42,
          ),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: CircularNotchedRectangle(),
          child: Container(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark,
                    color: Colors.greenAccent[400],
                    size: 28,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.map,
                    color: Colors.grey,
                    size: 28,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.home,
                    size: 0,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 28,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.dehaze,
                    color: Colors.grey,
                    size: 28,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
