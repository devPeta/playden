import 'package:flutter/material.dart';
import 'package:playden/presentation/views/others/successfulbooking/widgets/BookingDetails.dart';


class SuccessfulBookingBookingDetailsList extends StatelessWidget {
  const SuccessfulBookingBookingDetailsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xFF929292).withOpacity(0.4),
            style: BorderStyle.solid,
            width: 1,
          )
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BookingDetails(startText: 'Field Name', endText: 'Ploutos Football Field ',),
            BookingDetails(startText: 'Location', endText: 'Ploutos Football Field ',),
            BookingDetails(startText: 'Choosen Sport', endText: 'Football',),
            BookingDetails(startText: 'Size', endText: '5 x 5',),
            BookingDetails(startText: 'Selected Date', endText: '30/04/2024',),
            BookingDetails(startText: 'Selected Time', endText: '4:00PM-5:00PM ',),
            BookingDetails(startText: 'Payment Medium', endText: 'Online',),
            BookingDetails(startText: 'Amount', endText: '₦9,000'),
            BookingDetails(startText: 'Booking Code', endText: '23456'),
          ],
        ),
      ),
    );
  }
}