import 'package:flutter/material.dart';
import 'package:grocery_app/app_assets/app_colors.dart';
import 'package:grocery_app/views/groceryHomeScreen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController onboardingController = PageController();
  List onBoardingData = [
    {
      "title": "Your holiday shopping delivered to Screen one",
      "description":
          "There's something for everyone to enjoy with Sweet Shop Favourites Screen 1",
      "image": "assets/images/FreshCart_Onboarding_Vector.png",
    },
    {
      "title": "Your holiday shopping delivered to Screen one",
      "description":
          "There's something for everyone to enjoy with Sweet Shop Favourites Screen 1",
      "image": "assets/images/FreshCart_Onboarding_Vector.png",
    }
  ];

  int currentpage = 0;

  onChanged(int index) {
    setState(() {
      currentpage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBgColor,
      body: Stack(children: [
        _buildPageView(),
      ]),
    );
  }

  Widget _buildPageView() {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      controller: onboardingController,
      itemCount: onBoardingData.length,
      onPageChanged: onChanged,
      itemBuilder: (context, index) {
        return Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  // color: Colors.pink,
                  padding: const EdgeInsets.only(top: 60),
                  child: Text(
                    onBoardingData[index]["title"],
                    style: const TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimaryColor),
                  ),
                ),
                Container(
                  // color: Colors.yellow,
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    onBoardingData[index]["description"],
                    style: const TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textSecondaryColor),
                  ),
                ),
                Container(
                    // color: Colors.yellow,
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children:
                          List<Widget>.generate(onBoardingData.length, (index) {
                        return AnimatedContainer(
                          duration: const Duration(
                            milliseconds: 200,
                          ),
                          height: 4,
                          width: (index == currentpage) ? 28 : 18,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 5,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: (index == currentpage)
                                  ? AppColors.textPrimaryColor
                                  : AppColors.textSecondaryColor),
                        );
                      }),
                    )),
                Container(
                  // color: Colors.yellow,
                  padding: const EdgeInsets.only(top: 20),
                  child: Image(
                      height: 300,
                      image: AssetImage(onBoardingData[index]['image'])),
                ),
                Container(
                  // color: Colors.yellow
                  padding: const EdgeInsets.only(top: 50),
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const GroceryHomeScreen(),));
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.only(
                              top: 20, bottom: 20, right: 50, left: 50),
                        ),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        backgroundColor: MaterialStateProperty.all(
                            AppColors.textPrimaryColor),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min, // Adjust to your needs
                        children: [
                          Text('Get Started'),
                          SizedBox(
                              width:
                                  38), // Adjust the spacing between text and icon
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
