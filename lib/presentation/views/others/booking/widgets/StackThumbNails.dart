import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playden/presentation/views/others/booking/BookingController.dart';
import 'package:playden/presentation/views/others/booking/widgets/BookingSmoothDotIndicator.dart';

class StackThumbNails extends StatelessWidget {
  const StackThumbNails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BookingController());
    return Container(
      height: 246,
      color: Colors.transparent,
      child: Stack(
        children: [
          SizedBox(
            height: 246,
            child: PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children:  [
                Image.asset( 'assets/images/bookingfoot.png', fit: BoxFit.fill, height: 246,),
                Image.asset( 'assets/images/bookingfoot.png', fit: BoxFit.fill, height: 246,),
                Image.asset( 'assets/images/bookingfoot.png', fit: BoxFit.fill, height: 246,),
              ],
            ),
          ),


          Positioned(
            left: 16,
            top: 25,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(Icons.navigate_before, color: Colors.black87,),
                )),
            ),
            ),

          Positioned(
            right: 16,
            top: 25,
            child: Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(Icons.favorite, color: Colors.black87,),
                  ),
                ),

                const SizedBox( width: 4,),

                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(Icons.share_rounded, color: Colors.black87,),
                  ),
                ),
              ],
            ),
          ),

          const Positioned(
              bottom: 10,
              child: Center(
                  child: BookingSmoothDot()
              ),
          ),
        ],
      ),
    );
  }
}