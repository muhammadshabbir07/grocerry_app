import 'package:flutter/material.dart';
import 'package:grocery_app/app_assets/app_colors.dart';

class GroceryHomeScreen extends StatelessWidget {
  const GroceryHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List discountCardListViewData = [
      {
        "image": "assets/images/FreshCart_Onboarding_Vector.png",
        "topText": "Get",
        "middleText": "50% OFF",
        "bottomText": "On first 03 order",
      },
      {
        "image": "assets/images/FreshCart_Onboarding_Vector.png",
        "topText": "Get",
        "middleText": "50% OFF",
        "bottomText": "On first 03 order",
      },
      {
        "image": "assets/images/FreshCart_Onboarding_Vector.png",
        "topText": "Get",
        "middleText": "50% OFF",
        "bottomText": "On first 03 order",
      }
    ];

    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 40),
                color: AppColors.appBgColor,
                child: const Padding(
                  padding: EdgeInsets.all(26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hye, Halal",
                        style: TextStyle(
                            color: AppColors.textPrimaryColor, fontSize: 24),
                      ),
                      // Spacer(),
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: AppColors.textPrimaryColor,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 6, right: 26, left: 26),
                color: AppColors.appBgColor,
                child: TextField(
                  style: const TextStyle(color: AppColors.textPrimaryColor),
                  decoration: InputDecoration(
                      hintText: "Search Products or Store",
                      hintStyle:
                          const TextStyle(color: AppColors.textSecondaryColor),
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor: AppColors.textPrimaryColor,
                      filled: true,
                      fillColor: AppColors.searchBarColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 28, right: 26, left: 26, bottom: 16),
                color: AppColors.appBgColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery to".toUpperCase(),
                          style: const TextStyle(
                            color: AppColors.textSecondaryColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        // Spacer(),
                        Text(
                          "with in".toUpperCase(),
                          style: const TextStyle(
                            color: AppColors.textSecondaryColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Green Way 3000, Sylhet",
                            style: TextStyle(
                                color: AppColors.textPrimaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          // Spacer(),
                          Text(
                            "1 Hour",
                            style: TextStyle(
                                color: AppColors.textPrimaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 170, // Set the desired height for your card list
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: discountCardListViewData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Container(
                        width: 250,
                        padding: EdgeInsets.all(10),// Set the desired width for each card
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:
                              AppColors.accentColor, // Customize card background color
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  height: 100,
                                  image: AssetImage(
                                      discountCardListViewData[index]['image']),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  discountCardListViewData[index]['topText'],
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.textPrimaryColor
                                  ),
                                ),
                                Text(
                                  discountCardListViewData[index]['middleText'],
                                  style: const TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.textPrimaryColor,
                                  ),
                                ),
                                Text(
                                  discountCardListViewData[index]['bottomText'],
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.textPrimaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 26),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Recommended',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
