import 'package:first_app/screens/home_Page.dart';
import 'package:first_app/screens/onboardData.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _controller = PageController();
  bool lastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (v){
              setState(() {
                     lastPage = (v==2);
              });
         

            },
            controller: _controller,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //onboarding1
                  Image.asset(
                    onboarding[0].Image,
                    height: 220,
                  ),
                 
                  Divider(
                    endIndent: 50,
                    indent: 50,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(onboarding[0].title,style: TextStyle(fontSize: 25,color: Colors.teal),),
                  Text(onboarding[0].subtitle,style: TextStyle(fontSize: 15,color: Colors.black),),

                ],
              ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //onboarding1
                  Image.asset(
                    onboarding[1].Image,
                    height: 220,
                  ),
                  
                  Divider(
                    endIndent: 50,
                    indent: 50,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    
                    onboarding[1].title,
                  
                    style:
                     TextStyle(fontSize: 25,color: Colors.teal,),),
                  Text(  textAlign: TextAlign.center,
                    onboarding[1].subtitle,style: TextStyle(fontSize: 15,color: Colors.black),),

                ],
              ),
                 Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //onboarding1
                  Image.asset(
                    onboarding[2].Image,
                    height: 220,
                  ),
                
                  Divider(
                    endIndent: 50,
                    indent: 50,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(onboarding[2].title,style: TextStyle(fontSize: 25,color: Colors.teal),),
                  Text(onboarding[2].subtitle,style: TextStyle(fontSize: 15,color: Colors.black),),

                ],
              )
            ],
          ),
          Positioned(
            bottom: 50,
            left: 155,
              child: SmoothPageIndicator(controller: _controller, count: 3,effect: SwapEffect(
                dotWidth: 10,
                dotHeight: 10,
                dotColor: Colors.teal
              ),)),

              lastPage?
              Positioned(
                bottom: 45,
                right: 50,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));

                  },
                child: Text("Done",style: TextStyle(fontSize: 17,color: Colors.teal),),
              ))
              : Container()
        ]
      ),
    );
  }
}
