import 'package:flutter/material.dart';
import 'package:shopping/screens/constant.dart';
import 'package:shopping/widgets/input.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  get passwordFocusNode => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: CustonInput(
                  hintText: "search",
                  onchanged: (value) {
                    var registeremail = value;
                  },
                  onSubmitted: (value) {
                    passwordFocusNode.requestFocus();
                  },
                  icon: Icon(Icons.search),
                  textinputaction: TextInputAction.search),
            ),
            Text(
              "No Results ",
              style: Constant.SearchTitleStyle,
            ),
          ],
        ),
      ),
    );
  }
}
