import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/core/constant/playTextStyles.dart';
import 'package:intl/intl.dart';
class ScheduleBooking extends StatefulWidget {
  const ScheduleBooking({Key? key}) : super(key: key);

  @override
  State<ScheduleBooking> createState() => _ScheduleBookingState();
}

class _ScheduleBookingState extends State<ScheduleBooking> {
  TextEditingController _date = TextEditingController();
  String _notes = '';

  // List of available time ranges
  final List<String> _timeRanges = [
    '09:00 AM to 12:00 PM',
    '01:00 PM to 03:00 PM',
    '03:00 PM to 05:00 PM',
  ];


  /// Function to update Note range
  void _updateNotes(String notes) {
    setState(() {
      _notes = notes;
    });
  }

  @override
  Widget build(BuildContext context) {
    double scrHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        centerTitle: false,
        title: Text('Ploutos Football Field', style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top:8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                ///Select Date
                const SelectDateText(),
                const SizedBox(height: 2,),
                TextField(
                  readOnly: true,
                  style: payTextStyles.playBodyTextFieldFilled,
                  controller: _date,
                  onTap: () async {
                    DateTime? pickeddate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101),
                    );
                    if(pickeddate!= null){
                      setState(() {
                        _date.text = DateFormat('yyyy-mm-dd').format(pickeddate);
                      });
                    }
                  },
                  decoration: InputDecoration(
                    // hintText: '24/04/2024',
                    // hintStyle: payTextStyles.playHintTextField,
                    suffixIcon: const Icon(Icons.calendar_month_outlined, color: Color(0xFF41244B),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 1,
                        color: const Color(0xFF6C6C6C).withOpacity(0.5),
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: scrHeight * 0.02,),


                ///Select Time
                const SelectTimeSlotText(),
                const SizedBox(height: 2,),
                TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: '09:00am to 12:04pm',
                    hintStyle: payTextStyles.playHintTextField,
                    suffixIcon: const Icon(Icons.access_time_rounded, color: Color(0xFF41244B),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 1,
                        color: const Color(0xFF6C6C6C).withOpacity(0.5),
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: scrHeight * 0.02,),


                ///Select Tournament
                const TournamentText(),
                const SizedBox(height: 2,),
                const RequestTournamentButton(),
                SizedBox(height: scrHeight * 0.02,),


                ///Note Optional
                const OptionalNoteText(),
                const SizedBox(height: 2,),
                TextField(
                  style: payTextStyles.playBodyTextFieldFilled,
                  decoration:InputDecoration(
                    hintText: 'Enter your notes here',
                    hintStyle: payTextStyles.playHintTextField,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(width: 1, 
                        color: const Color(0xFF6C6C6C).withOpacity(0.5),
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  maxLines: 9,
                  onChanged: _updateNotes,
                ),
              ],
            ),
          )
      ),
    );
  }
}

class OptionalNoteText extends StatelessWidget {
  const OptionalNoteText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Note(Optional)', style: GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: const Color(0xFF01031A),
    ),
    );
  }
}

class TournamentText extends StatelessWidget {
  const TournamentText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Tournament', style: GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: const Color(0xFF01031A),
    ),
    );
  }
}

class RequestTournamentButton extends StatelessWidget {
  const RequestTournamentButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(132, 40), // Set the width and height
        backgroundColor: const Color(0xFF41244B),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: Text('Request tournament',
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: const Color(0xFFffffff),
        ),
      ),
    );
  }
}

class SelectTimeSlotText extends StatelessWidget {
  const SelectTimeSlotText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Select Time Slot',
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: const Color(0xFF01031A),
      ),
    );
  }
}

class SelectDateText extends StatelessWidget {
  const SelectDateText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Select Date', style: GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: const Color(0xFF01031A),
    ),
    );
  }
}

class TimerTile extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const TimerTile({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF929292), width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          title: Text(text, style: const TextStyle(
            color: Color(0xFF929292),
            fontWeight: FontWeight.w400,
            fontSize: 14
          ),),
          onTap: onTap,
        ),
        ),
      ],
    );
  }
}


