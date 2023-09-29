import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(

        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors:
            [

              Color(0xff233D78),
              Color(0xff172d77),
              Color(0xff83C8EF),
              Color(0xffC6EAFA),


            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 2,),

            Container(
                height: 200,
                width: 200,
                child: Image(image: AssetImage('assets/weather.png') )),
            Spacer(flex: 1,),
            Text('Discover the Weather in your City',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),textAlign: TextAlign.center),

            SizedBox(height: 20,),

            Text('it is provided easy way to know the weather details',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),

            Spacer(flex: 2,),


            GestureDetector(
              onTap: ()
              {
                Navigator.pushNamed(context,'SearchPage');
              },
              child: Container(

                decoration: BoxDecoration(

                  color: Colors.blue,
                  borderRadius:BorderRadius.circular(20) ,
                ),
                height: 60,
                width: double.infinity,
                child: Center(child: Text('Get Started',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
            ),
            Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}
