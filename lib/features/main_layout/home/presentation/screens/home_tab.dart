import 'dart:async';
import 'package:ecommerce_c13_friday/core/resources/assets_manager.dart';
import 'package:ecommerce_c13_friday/di.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/presentation/bloc/home_bloc.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/presentation/widgets/custom_ads_widget.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/presentation/widgets/custom_category_widget.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/presentation/widgets/custom_section_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int _currentIndex = 0;
  late Timer _timer;

  final List<String> adsImages = [
    ImageAssets.carouselSlider1,
    ImageAssets.carouselSlider2,
    ImageAssets.carouselSlider3,
  ];

  @override
  void initState() {
    super.initState();
    _startImageSwitching();
  }

  void _startImageSwitching() {
    _timer = Timer.periodic(const Duration(milliseconds: 2500), (Timer timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % adsImages.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              CustomAdsWidget(
                adsImages: adsImages,
                currentIndex: _currentIndex,
                timer: _timer,
              ),
              Column(
                children: [
                  CustomSectionBar(
                      sectionNname: 'Categories', function: () {}),
                  SizedBox(
                    height: 270.h,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CustomCategoryWidget(
                          title: state.model?.data?[index].name ?? "",
                          image: state.model?.data?[index].image ?? "",
                        );
                      },
                      itemCount: state.model?.data?.length ?? 0,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                    ),
                  ),
                  // SizedBox(height: 12.h),
                  // CustomSectionBar(sectionNname: 'Brands', function: () {}),
                  // SizedBox(
                  //   height: 270.h,
                  //   child: GridView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     itemBuilder: (context, index) {
                  //       return const CustomBrandWidget();
                  //     },
                  //     itemCount: 20,
                  //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //       crossAxisCount: 2,
                  //     ),
                  //   ),
                  // ),
                  // CustomSectionBar(
                  //   sectionNname: 'Most Selling Products',
                  //   function: () {},
                  // ),
                  // SizedBox(
                  //   child: SizedBox(
                  //     height: 360.h,
                  //     child: ListView.builder(
                  //       scrollDirection: Axis.horizontal,
                  //       itemBuilder: (context, index) {
                  //         return const ProductCard(
                  //           title: "Nike Air Jordon",
                  //           description:
                  //               "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories",
                  //           rating: 4.5,
                  //           price: 1100,
                  //           priceBeforeDiscound: 1500,
                  //           image: ImageAssets.categoryHomeImage,
                  //         );
                  //       },
                  //       itemCount: 20,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 12.h),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
