import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FlipInX(
              child: SizedBox(
                height: 250,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    CustomPaint(
                      size: const Size(
                        double.maxFinite,
                        250,
                      ),
                      painter: RPSCustomPainter(),
                    ),

                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(onPressed: (){}, icon: const Icon(Icons.notifications,color: Colors.white,)),
                              IconButton(onPressed: (){}, icon: const Icon(Icons.menu,color: Colors.white,))

                            ],
                          ),

                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Welcome back",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14),),
                                Text("Ahmed Mohamed",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),


                              ],
                            ),
                          ),


                        ],
                      ),
                    ),

                    FadeIn(
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 155, 108, 108),
                          backgroundImage: NetworkImage("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiYSfjGho8IEoYfw9R6L3mxeEkHUucNaClE5MSF9y8SDN0y0o3Zii6vEur84GJ9VqiitJj2xwMmLJFBXJ8n4cfx2fX9fyV_a6TqSVAOZCvjKRWcEbndma6phy6zXlVhDwAXJA8YerABUDtCU6uqVNLtJkXga7u7wuFff-LxbW6hxXAs7mcjPTQ03wcUMw/s16000/deepakiya.jpg"),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
}



class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 155, 108, 108)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.9991667,size.height*0.0014286);
    path_0.quadraticBezierTo(size.width*1.0070833,size.height*0.6441571,size.width*0.9816667,size.height*0.7415714);
    path_0.cubicTo(size.width*0.9377000,size.height*0.8973429,size.width*0.7495833,size.height*0.7864286,size.width*0.6658333,size.height*0.7871429);
    path_0.cubicTo(size.width*0.5789667,size.height*0.7878000,size.width*0.5957083,size.height*0.9419429,size.width*0.5002667,size.height*0.9430857);
    path_0.cubicTo(size.width*0.4037750,size.height*0.9448857,size.width*0.4267500,size.height*0.7862571,size.width*0.3350000,size.height*0.7842857);
    path_0.cubicTo(size.width*0.2514583,size.height*0.7835714,size.width*0.0418417,size.height*0.8868714,size.width*0.0174250,size.height*0.7471429);
    path_0.quadraticBezierTo(size.width*-0.0062667,size.height*0.5760714,size.width*0.0008333,0);
    path_0.lineTo(size.width*0.9991667,size.height*0.0014286);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);




    // Layer 1

    Paint paintFill1 = Paint()
      ..color = const Color.fromARGB(255, 201, 37, 37)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_1 = Path();
    path_1.moveTo(size.width*0.9470333,size.height*0.0030286);
    path_1.cubicTo(size.width*0.8461333,size.height*0.6736571,size.width*0.2857250,size.height*0.1111571,size.width*0.0186583,size.height*0.7360429);
    path_1.quadraticBezierTo(size.width*-0.0020583,size.height*0.5999143,size.width*0.0003333,size.height*-0.0021000);
    path_1.quadraticBezierTo(size.width*0.2223167,size.height*0.0004714,size.width*0.9470333,size.height*0.0030286);
    path_1.close();

    canvas.drawPath(path_1, paintFill1);





  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}


