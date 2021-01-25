import 'package:flutter/material.dart';
import 'package:shoe_shop/Data/Product.dart';
import 'package:shoe_shop/Screen/listPage.dart';
import 'detailPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "My Shop",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              CircleAvatar(
                  radius: 50,
                  child: Image.network(
                      "https://avatarfiles.alphacoders.com/163/163641.jpg")),
              ListTile(
                onTap: () {},
                title: Text("Home Page"),
                leading: Icon(
                  Icons.home,
                  color: Color(0xFFEC0645),
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text("Your Orders"),
                leading: Icon(
                  Icons.format_list_numbered,
                  color: Color(0xFFEC0645),
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text("Favorites"),
                leading: Icon(
                  Icons.favorite,
                  color: Color(0xFFEC0645),
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text("Profile"),
                leading: Icon(
                  Icons.person,
                  color: Color(0xFFEC0645),
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  color: Color(0xFFEC0645),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Our Products",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "Sort by",
                      style: TextStyle(fontSize: 13, color: Colors.blue),
                    )
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 600,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: shopFor.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => ListDetails(shopFor[index])));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                                //color: Colors.red,
                                border: Border.all(color: Colors.red, width: 2),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.center, //.spaceEvenly,
                              children: <Widget>[
                                Image.network(shopFor[index].image),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  shopFor[index].category,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Latest Arrival",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(fontSize: 13, color: Colors.blue),
                    )
                  ],
                ),
              ),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  //reverse: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: shoeList.length,
                  itemBuilder: (context, index) {
                    Color c = shoeList[index].backColor;
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Details(shoeList[index])));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 1100,
                          width: 200,
                          decoration: BoxDecoration(
                            color: c,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40.0),
                                // bottomRight: Radius.circular(40.0),
                                //topLeft: Radius.circular(40.0),
                                bottomLeft: Radius.circular(40.0)),
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      height: 25,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Center(
                                        child: Text(
                                          "30%",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    IconButton(icon: Icon(Icons.favorite))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 3, right: 3, bottom: 3),
                                child: Container(
                                  width: 80,
                                  height: 40,
                                  child: Image.network(
                                    shoeList[index].image,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(shoeList[index].name,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                              Text("£${shoeList[index].price}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: List.generate(5, (i) {
                                  return Icon(
                                    i < shoeList[index].rating
                                        ? Icons.star
                                        : Icons.star_border,
                                    color: Colors.amber,
                                  );
                                }),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })
            ],
          ),
        ));
  }
}
