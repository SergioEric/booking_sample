import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:booking/data.dart';

import 'Bookingv1_icons.dart';
import 'widget/booking.widget.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Booking app',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

const onTopOf = Color(0xff2a2e3b);

const appBarIconColor = Color(0xff666b77);

const primaryColor = Color(0xffe5103e);

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          elevation: 20,
          shadowColor: Colors.black26,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              MyIcons.menu,
              color: appBarIconColor,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                MyIcons.notifications,
                // color: appBarIconColor,
              ),
              // splashColor: primaryColor,
              color: primaryColor,
              splashRadius: 30,
            ),
            const SizedBox(width: 25),
            IconButton(
              onPressed: () {},
              icon: Icon(
                MyIcons.search,
                color: appBarIconColor,
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: const Header(),
          ),
          Expanded(
            child: Scrollbar(
              child: ListView.builder(
                itemCount: bookings.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    child: BookingCard(
                      item: bookings[index],
                    ),
                  );
                },
              ),
            ),
          ),
          const BottomAppBar(),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text(
                  "Bookings",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff343845),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "${bookings.length} ITEMS",
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff717580),
                  ),
                ),
              ],
            ),
          ],
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text(
            "Filters   ",
            style: TextStyle(),
          ),
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}

class BottomAppBar extends StatelessWidget {
  const BottomAppBar();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MenuItem(icon: MyIcons.fly),
          MenuItem(icon: MyIcons.location),
          MenuItem(
            icon: MyIcons.saved,
            isActive: true,
          ),
          MenuItem(
            icon: MyIcons.messages,
          ),
          MenuItem(
            icon: MyIcons.user,
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: Offset(0, -7),
            blurRadius: 5,
          ),
        ],
      ),
    );
  }
}

const inactiveMenuItem = Color(0xffadb2bc);

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key key,
    this.isActive = false,
    @required this.icon,
  }) : super(key: key);

  final bool isActive;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        color: Colors.transparent,
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: isActive ? primaryColor : inactiveMenuItem,
            size: 30,
          ),
          splashColor: Color(0xff999ea8),
          // splashRadius: 23,
        ),
      ),
    );
  }
}
