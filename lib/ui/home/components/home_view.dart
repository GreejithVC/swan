import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled11/ui/home/components/promotion_banners.dart';
import 'package:untitled11/ui/home/components/suggested_for_you.dart';

import '../../../constants/app_styles.dart';
import '../../../models/home_model.dart';
import '../../../providers/home_provider.dart';
import 'our_brands.dart';
import 'our_products.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Selector<HomeProvider, HomeModel?>(
          selector: (buildContext, controller) => controller.homeModel,
          builder: (context, data, child) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PromotionBanners(
                  banner: data?.banner1,
                ),
                AppStyles.boxHeightMedium,
                OurBrands(
                  featuredbrands: data?.featuredbrands,
                ),
                OurProducts(
                  ourProducts: data?.ourProducts,
                ),
                SuggestedForYou(
                  suggestedProducts: data?.suggestedProducts,
                ),
                // PopularProductsHeader(),
                // AppStyles.boxHeightSmall,
                // ProductsList(),
                // AppStyles.boxHeightMedium,
              ],
            );
          }),
    );
  }
}
