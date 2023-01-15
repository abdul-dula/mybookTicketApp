import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:bookticket/widgets/column_layout.dart';
import 'package:bookticket/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/platform/platform.dart';

import '../widgets/layout_builder_widget.dart';

class TicketView extends StatelessWidget {
   final Map<String, dynamic> ticket;
   final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85, //0.85 تتحكم في حجم التكت نفسها
      height: AppLayout.getHeight(GetPlatform.isAndroid==true?173:175),
      child: Container(
        margin:  EdgeInsets.only(right:AppLayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration:  BoxDecoration(
                  color: isColor==null? Color(0xFF526799):Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)),
                  ),
                ),
              padding:  EdgeInsets.all(AppLayout.getHeight(16),),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                        style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                      Expanded(child: Container()),
                      ThickContainer(isColor:true),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                                height: AppLayout.getHeight(24),
                                child: const AppLayoutBuilderWidget(sections: 6,),

                                /*LayoutBuilder(
                                  builder: (BuildContext context,
                                      BoxConstraints constraints) {
                                    print("the width ${constraints.constrainWidth()}");
                                    return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          (constraints.constrainWidth() / 6).floor(), (index) => SizedBox(
                                                width: AppLayout.getWidth(3),
                                                height: AppLayout.getHeight(1),
                                                child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color: isColor==null? Colors.white:Colors.grey.shade300
                                                  ),
                                                ),
                                              )),
                                    );
                                  },
                                )*/
                            ),
                            Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded,
                              color: isColor==null? Colors.white:Color(0xFF8ACCF7),
                              ),
                            )),
                          ],
                        ),
                      ),
                      ThickContainer(isColor:true),
                      Expanded(child: Container()),
                      Text(ticket['to']['code'], style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child:
                      Text(ticket['from']['name'], style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),),
                      Text(ticket['flying_time'], style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child:
                      Text(ticket['to']['name'], textAlign: TextAlign.end, style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: isColor==null?Styles.orangeColor:Colors.white,
              child: Row(
                children: [
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null?const Color(0xFFeeedf2):Colors.grey.shade200,
                        borderRadius:  BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                   Expanded(
                    child: Padding(padding: const EdgeInsets.all(12),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate((constraints.constrainWidth()/15).floor(), (index) =>  SizedBox(
                              width: 5, height: 1,
                              child: DecoratedBox(decoration: BoxDecoration(
                                          color: isColor==null?Colors.white:Colors.grey.shade300,
                                        ),
                                      ),
                                    )),
                          );
                        },
                      ),
                    ),
                  ),
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null?const Color(0xFFeeedf2):Colors.grey.shade200,
                        borderRadius:  BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(10)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: isColor==null?Styles.orangeColor:Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor==null?21:0),
                      bottomRight: Radius.circular(isColor==null?21:0))),
              padding: const EdgeInsets.only(left:16,top: 10,right: 16,bottom: 16),
              child: Column(
                children: [
                  // Row(
                  //   children: [
                  //     Text(
                  //       "1 May",
                  //       style:
                  //       Styles.headLineStyle3.copyWith(color: Colors.white),
                  //     ),
                  //     Expanded(child: Container()),
                  //
                  //     Text(
                  //       "08:00AM",
                  //       style:
                  //       Styles.headLineStyle3.copyWith(color: Colors.white),
                  //     ),
                  //
                  //     Expanded(child: Container()),
                  //     Text(
                  //       "23",
                  //       style:
                  //       Styles.headLineStyle3.copyWith(color: Colors.white),
                  //     ),
                  //   ],
                  // ),
                  // const Gap(3),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     SizedBox(
                  //       width: 100,
                  //       child: Text(
                  //         'Date',
                  //         style: Styles.headLineStyle4
                  //             .copyWith(color: Colors.white),
                  //       ),
                  //     ),
                  //     Text(
                  //       "Departure time",
                  //       style:
                  //       Styles.headLineStyle4.copyWith(color: Colors.white),
                  //     ),
                  //     SizedBox(
                  //       width: 100,
                  //       child: Text(
                  //         'Number',
                  //         textAlign: TextAlign.end,
                  //         style: Styles.headLineStyle4
                  //             .copyWith(color: Colors.white),
                  //       ),
                  //     ),
                  //   ],
                  // )
                  //مايمديك ترتبهم بشكل عامودي لازم بشكل طولي
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: ticket['date'], secondText: "Date", alignment: CrossAxisAlignment.start, isColor:isColor ),
                      AppColumnLayout(firstText: ticket['departure_time'], secondText: "Departure time", alignment: CrossAxisAlignment.center, isColor:isColor ),
                      AppColumnLayout(firstText: ticket['number'].toString(), secondText: "Number", alignment: CrossAxisAlignment.end, isColor:isColor ),
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
//children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,)).toList(), //   لازم تحولها الى toList() لانه داخل Row