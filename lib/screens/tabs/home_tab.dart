import 'package:flutter/material.dart';
import 'package:shopping/category_data/mobiles.dart';
import 'package:shopping/data/category.dart';
import 'package:shopping/models/category_models.dart';
import 'package:shopping/screens/constant.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<CategoryModels> categories = <CategoryModels>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "STORE",
                    style: Constant.MainStyle,
                  ),
                ],
              ),
            )),
        body: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.only(
            left: 10,
            right: 10,
            bottom: 16,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Categories",
                    style: Constant.TopHeadStyle,
                  ),
                ),
              ),
              Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return CategoryTile(
                        imageUrl: categories[index].imageUrl,
                        categoryName: categories[index].categoryName,
                      );
                    }),
              ),
            ],
          ),
        )));
  }
}

class CategoryTile extends StatelessWidget {
  final String imageUrl;
  final String categoryName;
  // final GestureDetector url;
  CategoryTile({required this.categoryName, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(
          top: 12.0,
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: Image.asset(
                imageUrl,
                width: MediaQuery.of(context).size.width,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: Colors.black26,
              ),
              child: Text(
                categoryName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
