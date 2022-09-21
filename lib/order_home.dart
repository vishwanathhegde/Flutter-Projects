import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OrderHome extends StatefulWidget {
  const OrderHome({Key? key}) : super(key: key);

  @override
  State<OrderHome> createState() => _OrderHomeState();
}

class _OrderHomeState extends State<OrderHome> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomCard(
            image:
                'https://imagevars.gulfnews.com/2022/04/04/classic-masala-dosa-recipe_17ff4cfe004_large.jpg',
            hotelName: 'Hotel Kediyoor Gokula Krishna',
            description: 'South Indian,North Indian,Shake',
            rating: 2),
        SizedBox(
          height: 10,
        ),
        CustomCard(
            image:
                'https://fastly.4sqi.net/img/general/600x600/13186316_dKCwwCeIVi0Q0vD2K4T6Shc6NuTwjQILDFFFXLX0PIk.jpg',
            hotelName: 'Kyoto',
            description: 'Chainese,Asian,Japnese',
            rating: 5),
        SizedBox(
          height: 10,
        ),
        CustomCard(
            image:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb5xRE-FfTkw3g_OAQiCibE7XVD76-9_5D8A&usqp=CAU',
            hotelName: "Woodlands Restaurent",
            description: 'South Indian,North Indian,Shake',
            rating: 4),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

class CustomCard extends StatefulWidget {
  String image;
  String hotelName;
  String description;
  double rating;
  CustomCard(
      {required this.image,
      required this.hotelName,
      required this.description,
      required this.rating});
  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            offset: Offset(
              0,
              8,
            ),
            blurStyle: BlurStyle.outer,
            blurRadius: 5.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 210,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Image.network(
                widget.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 10),
              width: double.infinity,
              child: Text(widget.hotelName,
                  style: Theme.of(context).textTheme.headline6)),
          Container(
            padding: EdgeInsets.only(left: 10, top: 5),
            width: double.infinity,
            child: Text(widget.description,
                style: Theme.of(context).textTheme.subtitle1),
          ),
          Container(
            child: RatingBar.builder(
              initialRating: widget.rating,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ),
        ],
      ),
    );
  }
}
