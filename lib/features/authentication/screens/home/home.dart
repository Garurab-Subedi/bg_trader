import 'package:bg_trader/common/widgets/custom_shapes/container/primary_container.dart';
import 'package:bg_trader/common/widgets/custom_shapes/container/search_container.dart';
import 'package:bg_trader/common/widgets/text/section_heading.dart';
import 'package:bg_trader/features/authentication/screens/home/widgets/homeappbar_widget.dart';

import 'package:bg_trader/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                // --AppBar --

                THomeAppBar(),
                SizedBox(height: TSize.spaceBtwSections),

                // -- SearchBar --
                TSearchContainer(text: 'Search in store '),
                SizedBox(height: TSize.spaceBtwSections),

                // -- Categories Heading--
                TSectionHeading(
                  title: 'Popular Categories',
                  showActionButton: false,
                ),
                SizedBox(
                  height: TSize.spaceBtwItems,
                ),

                // categories
                // ListView.builder(itemBuilder: (_, index) {
                //   return null;
                // }),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
