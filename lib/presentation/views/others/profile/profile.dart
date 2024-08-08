import 'package:flutter/material.dart';
import 'package:playden/core/constant/playSpacing.dart';
import 'package:playden/presentation/views/others/profile/widget/CircleAvatarProfile.dart';
import 'package:playden/presentation/views/others/profile/widget/GroupContainer.dart';
import 'package:playden/presentation/views/others/profile/widget/GroupText.dart';
import 'package:playden/presentation/views/others/profile/widget/IconText.dart';
import 'package:playden/presentation/views/others/profile/widget/ProfileDetails.dart';
import 'package:playden/presentation/views/others/profile/widget/SettingTile.dart';
import 'package:playden/presentation/views/others/profile/widget/UsernameText.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Padding(
            padding: playSpacing.paddingWithAppBarHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///HeaderAlignment ICon
            const IconText(),
            SizedBox(height: screenHeight * 0.01,),


            ///Circle Avatar
            const CircleAvatarProfile(),
            SizedBox(height: screenHeight * 0.01,),


            ///User Name And Phone Number Text
            const UserrnameText(),
            SizedBox(height: screenHeight * 0.01,),


            ///Upcoming, Games And Bookings
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileDetails(title: '12', subTitle: 'Upcoming',),
                VerticalDivider(color: Color(0xFF929292), width: 3,),
                ProfileDetails(title: '0', subTitle: 'Games',),
                VerticalDivider(color: Color(0xFF929292),width: 3, ),
                ProfileDetails(title: '0', subTitle: 'Booking',),
              ],
            ),
            SizedBox(height: screenHeight * 0.01,),

            ///My Group Text
            const GroupText(),
            SizedBox(height: screenHeight * 0.02,),


            ///My Group Text Container
            const GroupContainer(),
            SizedBox(height: screenHeight * 0.02,),

            ///Setting List Tile
            const SettingTile(text: 'My Bookings', icon: Icons.calendar_today,),
            SizedBox(height: screenHeight * 0.01,),

            const SettingTile(text: 'Cancellation/Reschedule', icon: Icons.cancel_outlined,),
            SizedBox(height: screenHeight * 0.01,),

            const SettingTile(text: 'FAQs', icon: Icons.help_outline_outlined,),
            SizedBox(height: screenHeight * 0.01,),

            const SettingTile(text: 'Help and support', icon: Icons.person_outlined,),
            SizedBox(height: screenHeight * 0.01,),

            const SettingTile(text: 'Settings', icon: Icons.settings_outlined,),
            SizedBox(height: screenHeight * 0.01,),

          ],
        ),),
      ),
    );
  }
}













