import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BackgroundPainter(),
      child: Card(elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
          
        ),child: CircleAvatar(backgroundColor: Colors.white,
        radius: MediaQuery.of(context).size.width*0.02,),
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.orange[200];
    paint.style = PaintingStyle.fill;
    

    canvas.drawCircle(Offset(size.width/2 , size.height/2), size.width/4, paint);
  }

  @override
  bool shouldRepaint(BackgroundPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BackgroundPainter oldDelegate) => false;
}
