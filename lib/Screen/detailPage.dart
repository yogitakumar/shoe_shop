import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe_shop/Data/Product.dart';

class Details extends StatefulWidget {
  final Product object;
  const Details(this.object);
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final List<Color> colors = <Color>[Colors.red, Colors.blue, Colors.amber];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: widget.object.backColor,
          elevation: 0,
        ),
        body: Container(
          color: widget.object.backColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, //.end,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 240,
                height: 190,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(widget.object.image),
                )),
              ),
              Container(
                  height: 400,
                  width: 410,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 35,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  widget.object.name,
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: List.generate(5, (i) {
                                    return Icon(
                                      i < widget.object.rating
                                          ? Icons.star
                                          : Icons.star_border,
                                      color: Colors.amber,
                                    );
                                  }),
                                )
                              ],
                            ),
                            Text(
                              widget.object.description,
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Size Options",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18),
                            ),
                            Container(
                              height: 40,
                              //width: 100,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      widget.object.availableSizes.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 20,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        child: Center(
                                            child: Text(
                                          "UK ${widget.object.availableSizes[index]}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        )),
                                      ),
                                    );
                                  }),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Color Options",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18),
                            ),
                            Container(
                              height: 40,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      widget.object.availbleColors.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: widget
                                              .object.availbleColors[index]),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 420,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.0),
                            topRight: Radius.circular(40.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "£ ${widget.object.price}.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 50,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: widget.object.backColor,
                                  borderRadius: BorderRadius.circular(40)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Icon(Icons.shopping_cart),
                                  Text(
                                    "ADD TO CART",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
