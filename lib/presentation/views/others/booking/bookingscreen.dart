import 'package:flutter/material.dart';
import 'package:playden/presentation/views/others/booking/widgets/About%20Pitch%20Tabs.dart';
import 'package:playden/presentation/views/others/booking/widgets/BookingContainer.dart';
import 'package:playden/presentation/views/others/booking/widgets/BookingFieldNameAndRating.dart';
import 'package:playden/presentation/views/others/booking/widgets/OpenHoursText.dart';
import 'package:playden/presentation/views/others/booking/widgets/Reviews%20Tabs.dart';
import 'package:playden/presentation/views/others/booking/widgets/StackThumbNails.dart';
class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen>  with SingleTickerProviderStateMixin
{

  late TabController tabController = TabController(length: 2, vsync: this);

  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///ThumbNails
            const StackThumbNails(),
            SizedBox(height: screenHeight * 0.01,),



            ///Booking FieldName And Rating
            const BookingFieldNameAndRating(),
            const SizedBox(height: 2,),

            ///OpenHours Text
            const OpenHoursText(),
            const SizedBox(height: 4,),

            ///Container 10,000 text and border Side
            const BookingContainer(),
            SizedBox(height: screenHeight * 0.01,),


            ///TapBar
            TabBar(
              controller: tabController,
              tabs: const [
                Tab(
                  text: 'About Pitch',
                ),

                Tab(
                  text: 'Reviews',
                ),
              ],
              unselectedLabelColor: const Color(0xFF6C6C6C),
              labelColor: const Color(0xFF8F55A2),
              indicatorWeight: 2,
            ),
            const SizedBox(height: 4,),


            ///TapBarView
            SizedBox(
              width: double.maxFinite,
              height: 800,
              child: TabBarView(
                 controller: tabController,
                  children: const [
              AboutPitchTabs(),
              ReviewsTabs(),
                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
