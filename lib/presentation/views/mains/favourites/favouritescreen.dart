import 'package:flutter/material.dart';
import 'package:playden/core/common/purpleContainer.dart';
import 'package:playden/core/constant/playSpacing.dart';
import 'package:playden/presentation/views/mains/favourites/widgets/FavouriteCardContent.dart';
import 'package:playden/presentation/views/mains/favourites/widgets/FavouriteText.dart';
class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFE8E8E8),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PurpleContainer(
              child: Padding(
                padding: playSpacing.paddingWithAppBarHeightSm,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    ///Favourite
                    const FavouriteText(),
                    SizedBox(height: screenHeight * 0.04,),

                    ///DropDownMenu
                    const DropDownMenuFliterBy(),
                  ],
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.01,),


            ///FavouriteCard
            const FavouriteCardContent(),
            SizedBox(height: screenHeight * 0.01,),

            const FavouriteCardContent(),
            SizedBox(height: screenHeight * 0.01,),

            const FavouriteCardContent(),


          ],
        ),
      ),
    );
  }
}















class DropDownMenuFliterBy extends StatelessWidget {
  const DropDownMenuFliterBy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(45),
        border: Border.all(
          color: Colors.white,
          style: BorderStyle.solid,
          width: 2
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: DropdownButton<String>(
          hint: const Text(
            'Filter By',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          icon: const Icon(Icons.arrow_drop_down),
          items: const [
            DropdownMenuItem(
              value: 'filter',
              child: Text('Filter', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),),
            ),
            DropdownMenuItem(
              value: 'size',
              child: Text('Size', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              ),
            ),
            DropdownMenuItem(
              value: 'height',
              child: Text('Height', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              ),
            ),
            DropdownMenuItem(
              value: 'most_view',
              child: Text('Most View', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),),
            ),
          ],
          onChanged: (value) {
            // Handle selection
            print('Selected value: $value');
          },
          isExpanded: true, // Ensures the dropdown takes the full width
          underline: SizedBox(), // Removes the underline
        ),
      ),
    );
  }
}
