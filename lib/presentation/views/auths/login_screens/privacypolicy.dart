import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/core/common/button/playButton.dart';
import 'package:playden/core/common/milkContainer.dart';
import 'package:playden/core/constant/playColors.dart';
import 'package:playden/presentation/views/auths/login_screens/loginScreen.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            ///Container of Milk C0lor
            MilkContainer(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 8),
            child: Column(
              crossAxisAlignment:  CrossAxisAlignment.start ,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                                onTap:() {
                                  Navigator.pop(context);
                                   },
                        child: Container(
                          height:32,
                            width: 32,
                            decoration: const BoxDecoration(
                              color: Color(0xffE8E8E8),
                              shape: BoxShape.circle,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(Icons.navigate_before, color: Color(0xFF141B34), size: 12,),
                            )
                        ),
                      ),
                    const SizedBox(width: 8),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Privacy Policy',
                        style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff000000)
                        )
                        ),
                        const SizedBox( height: 2),
                        Text('Last updated 14th of August 2024',
                             style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                                color: const Color(0xff000000)
                                )
                              ),
                      ],
                    )
                  ],
                )
              ],
            )
        )
        ),
            
            const SizedBox(
              width: double.infinity,
                child: Divider(
                  color: Color(0xff000000),
                  thickness: 5,
                )
            ),

            ///BackGround Container
           Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const PrivarcyTextContent(title: 'Office ipsum',
                    subTitle: 'you must be muted. About bed stand organic didn\'t meeting interim big. Strategies including optimize crystallize board run. The us keep today paradigm moments. Also helicopter baseline I quarter looking eye. Socialize reality alarming close other responsible overflow lean launch. ',
                    ),

                  const PrivarcyTextContent(title: 'Overflow marginalised model ',
                    subTitle: 'close on backwards give key spaces closing. Too metal quick-win new price harvest. Loop launch closing boil site drive that\'s latest pole. Let\'s sop across ocean will race crystallize options weeks. Got boardroom boil dear low-hanging accountable. Just shift land angel tomorrow you low optimal here club. Do supervisor let\'s minimize eager. Reinvent what\'s of options catching finish ping horse do the. ',
                  ),

                  const PrivarcyTextContent(title: 'Running managing ',
                    subTitle: 'three like better loss get harvest. Our price criticality zoom event. Moving welcome sexy speed harvest. Meeting ditching winning heads-up don\'t. Explore manager half those loop illustration incentivization out model. Race eco-system on / break give. Enable do users turn net six closing wiggle drawing-board boardroom. Optimize ideal synergy whistles bells happenings invite.',
                  ),

                  const PrivarcyTextContent(
                    title: 'Masking attached sandwich ',
                    subTitle: 'point obviously. Solutionize look deploy barn where boys globalize. Goalposts decisions look feed first-order. So policy key running live know look. So an strategic reach only watches pants when crystallize. Key feature highlights stronger whatever procrastinating kpis. ',
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PlayButton(
                        label: 'I Disagree',
                        onTap: () {
                          Get.to(const loginScreen());
                        },
                        height: 45,
                        width: 171,
                        color: const Color(0xffffffff),
                        border: Border.all(
                          color: const Color(0xFF8F55A2),
                          style: BorderStyle.solid,
                          width: 2,
                        ),
                        borderRadius: 12.0,
                        textStyle: const TextStyle(
                          color: Color(0xFF41244B),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      PlayButton(
                        label: 'I Agree',
                        onTap: () {
                          Get.to(const loginScreen());
                        },
                        height: 45,
                        width: 171,
                        color: playColors.primary,
                        borderRadius: 12.0,
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ]
        )
      ),
    );
  }
}

class PrivarcyTextContent extends StatelessWidget {
  final String title;
  final String subTitle;
  const PrivarcyTextContent({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [

      Text(title, style: GoogleFonts.inter(
        color: const Color(0xFF010C15),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ), ),

      const SizedBox(height: 2,),

      Text(subTitle, style: GoogleFonts.inter(
        color: const Color(0xFF010C15),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
        softWrap: true,
      ),
      const SizedBox(height: 5,),
    ],
                );
  }
}
