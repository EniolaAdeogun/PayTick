import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payvel/utilis/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Container(
      padding: const EdgeInsets.all(3.5),
      child: Row(
        children: [
          /*
                  airline Ticket
                   */
          Container(
            width: size.width * .44,
            padding: EdgeInsets.symmetric(vertical: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
              color: Colors.white,
            ),
            child: Center(
              child: Text(firstTab),
            ),
          ),
          /*
                 hotels
                  */
          Container(
            width: size.width * .44,
            padding: EdgeInsets.symmetric(vertical: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
              color: Colors.transparent,
            ),
            child: Center(
              child: Text(secondTab),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color(0xFFF4F6FD)),
    );
  }
}
