import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ImageFieldNameAndFieldLocation extends StatelessWidget {
  const ImageFieldNameAndFieldLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ///Field Image
        Image.asset('assets/images/sfield.png', height: 100, width: 95,),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 15,),
              ///FieldName
              Text('Ploutos Football Field', style: GoogleFonts.poppins(
                color: const Color(0xFF000000),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              ),
              const SizedBox(height: 4,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 2,),
                  //Icon
                  Image.asset('assets/images/location-03.png', height: 12,),
                  ///Address
                  Text('45A, Unguwan, Rimi Road,\nCity Centre, Kaduna', style: GoogleFonts.inter(
                    color: const Color(0xFF929292),
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                  ),),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}