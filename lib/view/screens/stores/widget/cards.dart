import 'package:efood_multivendor/util/images.dart';
import 'package:efood_multivendor/view/base/rating_bar.dart';
import 'package:flutter/material.dart';

class CardStore extends StatelessWidget {
  const CardStore({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          clipBehavior: Clip.antiAlias,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 1)
              ]),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Image.asset(
                  Images.storespng,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "STORES 1",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                                color: Colors.red),
                          ),
                          Text(
                            "El Hegaz Square Heliopolis",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                                color: Theme.of(context).primaryColor),
                          ),
                          RatingBar(
                            size: 16,
                            rating: 4.5,
                            ratingCount: 2,
                          )
                        ],
                      ),
                      Text("You Can Order At 12:00 Pm",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                              color: Theme.of(context).primaryColor)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
