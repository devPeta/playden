import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playden/presentation/views/mains/Notification/widgets/DeleteIcon.dart';
import 'package:playden/presentation/views/mains/Notification/widgets/NoMoreNotificationText.dart';
import 'package:playden/presentation/views/mains/Notification/widgets/NotificationContainer.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ///DeleteIcon
                const DeleteIcon(),
                SizedBox(height: screenHeight * 0.01,),


                ///Container + Text
                const NotificationContainer(descTitle: 'Hi Zak your plutous football pitch booking\nhas been confirmed!',),
                const SizedBox(height: 2,),
                const NotificationContainer(descTitle: 'You have a new unread message!',),
                const SizedBox(height: 2,),
                const NotificationContainer(descTitle: 'Congratulations you have received a reward of\n500 coins Keep it up!!',),
                SizedBox(height: screenHeight * 0.01,),


                ///No More Notifications
                const NoMoreNotificationText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}




