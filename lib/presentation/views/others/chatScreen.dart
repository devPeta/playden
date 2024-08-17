import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<String> _messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _messages.add(_controller.text);
        _controller.clear();
      });
    }
  }


  Widget _buildMessage(String message) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: const CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage('assets/images/OnBoarding/logo1.png'), // Add your image path here
              ),
            ),
            Flexible(
              child: Container(
                padding:  const EdgeInsets.all(10),
                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.3),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  message,
                  style: const TextStyle(fontSize: 16, color: Color(0xff000000), fontWeight: FontWeight.w500,),
                  softWrap: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 8),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
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
                const SizedBox(width: 4,),
                Text('PlayDen Support', style: GoogleFonts.inter(
                  fontWeight : FontWeight.w600,
                  fontSize: 16,
                  color: const Color(0xff010C15),
                ),)
              ],
            ),
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return _buildMessage(_messages[index]);
                },
              ),
            ),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: "Type a message",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: _sendMessage,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
