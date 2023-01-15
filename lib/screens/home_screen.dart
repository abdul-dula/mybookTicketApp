import 'package:bookticket/screens/hotel_screen.dart';
import 'package:bookticket/screens/ticket_view.dart';
import 'package:bookticket/utils/app_info_list.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
    final Map<String, dynamic> ticket;
  const HomeScreen({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body:  ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),//التلاعب في المسافه بين الكتابه والصوره
            child: Column(
              children: [
                 const Gap(40), // المسافه العاموديه الي بين الجمله و فوق
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, //خلق المسافه بين الكتابه والصوره

                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, //
                      children: [
                         Text(
                           "Good morning", style: Styles.headLineStyle3,
                         ),
                         const Gap(5),    // المسافه العاموديه الي بين الجملتين
                         Text(
                           "Book Tickets",style: Styles.headLineStyle1,
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
                            image: AssetImage("assets/images/img_1.png")
                        )
                      ),
                    ),
                  ],
                ),
                const Gap(25), // or we can use "SizedBox (height: 25,)"
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),),
                      Text("Search", style: Styles.headLineStyle4,)
                    ],
                  ),
                ),
                const Gap(40),
               const AppDoubleTextWidget(bigText:"Upcoming Flights", smallText: "View all",),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,)).toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:const AppDoubleTextWidget(bigText:"Hotel", smallText: "View all",),

          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: hotelList.map((singlehotel) => HotelScreen(hotel: singlehotel)).toList() //loop
            ),
          ),
        ],
      ),

    );
  }
}
