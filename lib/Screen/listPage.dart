import 'package:flutter/material.dart';
import 'package:shoe_shop/Data/Product.dart';
import 'package:shoe_shop/Screen/detailPage.dart';

class ListDetails extends StatefulWidget {
  final Shop catObject;
  ListDetails(this.catObject);
  @override
  _ListDetailsState createState() => _ListDetailsState();
}

class _ListDetailsState extends State<ListDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List of Product"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                //reverse: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: widget.catObject.list.length,
                itemBuilder: (context, index) {
                  Color c = widget.catObject.list[index].backColor;
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  Details(widget.catObject.list[index])));
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
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
                                  widget.catObject.list[index].image,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Text(widget.catObject.list[index].name,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                            Text("£${widget.catObject.list[index].price}",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: List.generate(5, (i) {
                                return Icon(
                                  i < widget.catObject.list[index].rating
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
                })));
  }
}
