import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(QuranWidget());
}

class QuranWidget extends StatelessWidget {
  void playsound(int rb3Num) {
    final player = AudioPlayer();
    player.play(AssetSource('music-$rb3Num.mp3'));
  }

  Expanded myButton(int rb3Num, String buttonText) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          onPressed: () {
            playsound(rb3Num);
          },
          style: ElevatedButton.styleFrom(fixedSize: Size(410, 50)),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.start, // وضع المحتويات بجانب بعضها البعض
            children: [
              Image.asset(
                'images/icon.png',
                width: 40, // عرض الأيقونة
                height: 40, // ارتفاع الأيقونة
              ),
              SizedBox(width: 10), // مسافة بين الأيقونة والنص
              Text(
                buttonText,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Amiri',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF9c27b0),
        appBar: AppBar(
          backgroundColor: Color(0xFF7b1fa2),
          title: Text(
            'القرآن الكريم',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Amiri',
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            myButton(1, 'الربع الاول من سوره البقره'),
            myButton(2, 'الربع الثاني من سوره البقره'),
            myButton(3, 'الربع الثالث من سوره البقره'),
            myButton(4, 'الربع الرابع من سوره البقره'),
            myButton(5, 'الربع الخامس من سوره البقره'),
            myButton(6, 'الربع السادس من سوره البقره'),
            myButton(7, 'الربع السابع من سوره البقره'),
          ],
        ),
      ),
    );
  }
}
