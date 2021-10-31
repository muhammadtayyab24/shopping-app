import 'package:flutter/material.dart';

class BottomTabs extends StatefulWidget {
  final int selectedTab;
  final Function(int) tabpressed;
  BottomTabs({
    required this.selectedTab,
    required this.tabpressed,
  });
  @override
  State<BottomTabs> createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    _selectedTab = widget.selectedTab;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              spreadRadius: 1.0,
              blurRadius: 30.0,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomBtn(
            icon: Icon(Icons.home),
            // imagepath: "assets/images/bottom-home-b.png",
            selected: _selectedTab == 0,
            onpressed: () {
              widget.tabpressed(0);
            },
          ),
          BottomBtn(
            icon: Icon(Icons.favorite),
            // imagepath: "assets/images/search-icon1.png",
            selected: _selectedTab == 1,
            onpressed: () {
              widget.tabpressed(1);
            },
          ),
          BottomBtn(
            icon: Icon(Icons.search),
            // imagepath: "assets/images/fav.png",
            selected: _selectedTab == 2,
            onpressed: () {
              widget.tabpressed(2);
            },
          ),
          BottomBtn(
            icon: Icon(Icons.person),
            // imagepath: "assets/images/bottom-user-b.png",
            selected: _selectedTab == 3,
            onpressed: () {
              widget.tabpressed(3);
            },
          ),
          BottomBtn(
            icon: Icon(Icons.save),
            // imagepath: "assets/images/bottom-user-b.png",
            selected: _selectedTab == 4,
            onpressed: () {
              widget.tabpressed(4);
            },
          ),
        ],
      ),
    );
  }
}

class BottomBtn extends StatelessWidget {
  // final String imagepath;
  final Icon icon;
  final bool selected;
  final Function() onpressed;
  BottomBtn(
      {
      // required this.imagepath,
      required this.icon,
      this.selected = false,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    bool _selected = selected;
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: _selected
                  ? Theme.of(context).accentColor
                  : Colors.transparent,
              width: 2.0,
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 18.0,
          horizontal: 14.0,
        ),
        child: Icon(
          icon.icon,
          color: _selected ? Theme.of(context).accentColor : Colors.black,
        ),
        // Image(
        //   width: 26.0,
        //   height: 26.0,

        //   // image: AssetImage(imagepath),
        // )
      ),
    );
  }
}
