import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utilis/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('Images/images/img_1.png'))),
              ),
              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headline1,
                  ),
                  Gap(2),
                  Text('New york',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500)),
                  Gap(8),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFFFEF4F3)),
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFF526799),
                          ),
                          child: Icon(
                            Icons.shield,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(5),
                        Text(
                          'Premium Status',
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('You are Tapped');
                    },
                    child: Text('Edit',
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w400)),
                  )
                ],
              ),
            ],
          ),
          Gap(8),
          Divider(color: Colors.grey.shade300),
          Gap(8),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(18)),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: Color(0xFF264CD2),
                      ),
                    ),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.lightbulb,
                          color: Styles.primaryColor, size: 27),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve got a new award',
                          style: Styles.headline2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'You have 95 flights in a year',
                          style: Styles.headline2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Gap(25),
          Text(
            'Accumulated miles',
            style: Styles.headline2,
          ),
          Container(
            child: Column(
              children: [
                Gap(15),
                Text(
                  '53820',
                  style: TextStyle(
                    fontSize: 45,
                    color: Styles.textcolor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accrrued ',
                      style: Styles.headline4.copyWith(fontSize: 16),
                    ),
                    Text('4th May 2023',
                        style: Styles.headline4.copyWith(fontSize: 16))
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1800',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                        Gap(5),
                        Text('miles',
                            style: Styles.headline4.copyWith(fontSize: 16))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Arik Air',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.8))),
                        Gap(5),
                        Text('Received from',
                            style: Styles.headline4.copyWith(fontSize: 16))
                      ],
                    )
                  ],
                ),
                Gap(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '24',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                        Gap(5),
                        Text('miles',
                            style: Styles.headline4.copyWith(fontSize: 16))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Virgin Atlantic',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.8))),
                        Gap(5),
                        Text('Received from',
                            style: Styles.headline4.copyWith(fontSize: 16))
                      ],
                    )
                  ],
                ),
                Gap(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '52000',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                        Gap(5),
                        Text('miles',
                            style: Styles.headline4.copyWith(fontSize: 16))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Qatar',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.8))),
                        Gap(5),
                        Text('Received from',
                            style: Styles.headline4.copyWith(fontSize: 16))
                      ],
                    )
                  ],
                ),
                Gap(15),
                Text(
                  'How to get more miles',
                  style: TextStyle(
                      color: Styles.primaryColor, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
