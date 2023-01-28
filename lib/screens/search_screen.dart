import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:payvel/utilis/app_layout.dart';

import '../utilis/app_styles.dart';
import '../widgets/app_icon_text.dart';
import '../widgets/double_text_widget.dart';
import '../widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(Applayout.getHeight(40)),
          Text('what are \n you looking for?',
              style: Styles.headline1.copyWith(fontSize: 35)),
          Gap(Applayout.getHeight(20)),
          AppTicketTabs(firstTab: 'Airline Tickets', secondTab: 'Hotels'),
          Gap(Applayout.getHeight(25)),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(Applayout.getHeight(15)),
          AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(Applayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xD91130CE)),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.textStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Gap(Applayout.getHeight(40)),
          const AppDoubleTextWidget(
              bigText: 'Upcoming Flights', smallText: 'View all'),
          Gap(Applayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 425,
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1),
                    ],
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('Images/images/sit.jpg')),
                      ),
                    ),
                    Gap(12),
                    Text(
                        '20% discount on early booking on this flight , Dont miss.',
                        style: Styles.headline2)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: 210,
                        decoration: BoxDecoration(
                          color: Color(0xFF3ABBB8),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headline2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(30),
                            Text(
                              'Take the survey about our services and get discount',
                              style: Styles.headline2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: Color(0xFF189999)),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  const Gap(15),
                  Container(
                    width: size.width * 0.44,
                    height: 210,
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          style: Styles.headline2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(5),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😎',
                                style: TextStyle(fontSize: 38),
                              ),
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: '🥳',
                                style: TextStyle(fontSize: 38),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
