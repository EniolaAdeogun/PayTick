import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:payvel/screens/hotel_screens.dart';
import 'package:payvel/screens/ticketview.dart';
import 'package:payvel/utilis/app_info_list.dart';
import 'package:payvel/utilis/app_styles.dart';

import '../widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: Styles.headline3,
                        ),
                        const Gap(5),
                        Text(
                          'Book tickets',
                          style: Styles.headline1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('Images/images/img_1.png')),
                      ),
                    )
                  ],
                ),
                Gap(25),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        'Search',
                        style: Styles.headline4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                AppDoubleTextWidget(
                    bigText: 'Upcoming Flights', smallText: 'View all'),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Ticketview(
                  ticket: {},
                ),
                Ticketview(
                  ticket: {},
                ),
              ],
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                AppDoubleTextWidget(bigText: 'Hotels', smallText: 'View all'),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: hotelList
                    .map((Singlehotel) => Hotelscreen(hotel: Singlehotel))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
