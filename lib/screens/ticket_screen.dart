import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:payvel/screens/ticketview.dart';
import 'package:payvel/utilis/app_layout.dart';

import '../utilis/app_styles.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: [
              Gap(40),
              Text('Ticket', style: Styles.headline1),
              Gap(20),
              AppTicketTabs(firstTab: 'Upcoming ', secondTab: 'Previous'),
              Gap(20),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Ticketview(
                      ticket: {},
                    ),
                    Ticketview(
                      ticket: {},
                    ),
                    Ticketview(
                      ticket: {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
