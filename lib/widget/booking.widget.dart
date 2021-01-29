import 'package:booking/Bookingv1_icons.dart';
import 'package:booking/model.dart';
import 'package:flutter/material.dart';

class BookingCard extends StatelessWidget {
  final Booking item;

  const BookingCard({
    Key key,
    @required this.item,
  }) : super(key: key);

  static const _height = 240.0;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: _height,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(20),
        // ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              item.imageUrl,
              fit: BoxFit.cover,
            ),
            Container(
              height: _height,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "\$ ${item.price}",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(width: 15),
                              Text(
                                "${item.distance} Km away ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Material(
                        color: Colors.transparent,
                        child: IconButton(
                          icon: Icon(MyIcons.dots),
                          onPressed: () {},
                          color: Colors.white,
                          splashColor: Colors.red,
                          splashRadius: 24,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        MyIcons.sunny,
                        color: Colors.yellowAccent.withOpacity(0.7),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        "${item.weather.temperature}º",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      const Spacer(),
                      Material(
                        color: Colors.transparent,
                        child: IconButton(
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          splashRadius: 24,
                          icon: Icon(
                            MyIcons.hearth,
                            color: Colors.white.withOpacity(0.8),
                            size: 18,
                          ),
                        ),
                      ),
                      // const SizedBox(width: 12),
                      Text(
                        "${item.likes}",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      const SizedBox(width: 25),
                      Material(
                        color: Colors.transparent,
                        child: IconButton(
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          splashRadius: 24,
                          icon: Icon(
                            MyIcons.comments,
                            color: Colors.white.withOpacity(0.8),
                            size: 18,
                          ),
                        ),
                      ),
                      // const SizedBox(width: 12),
                      Text(
                        "${item.comments}",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
