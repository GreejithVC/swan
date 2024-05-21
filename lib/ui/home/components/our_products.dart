import 'package:flutter/material.dart';
import 'package:untitled11/constants/app_text.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_config.dart';
import '../../../constants/app_styles.dart';
import '../../../models/home_model.dart';
import '../../../widgets/viewers/network_image.dart';

class OurProducts extends StatelessWidget {
  final List<OurProductsModel>? ourProducts;
  const OurProducts({Key? key, this.ourProducts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppStyles.boxHeightMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: TextPOP18W500("Our Products", textAlign: TextAlign.left,)),
              TextPOP14W400("View All",textDecoration: TextDecoration.underline,
                  color: AppColors.primary, textAlign: TextAlign.right),
            ],
          ),
          AppStyles.boxHeightSmall,
          SizedBox(
            height: 150,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: ourProducts?.length,
              itemBuilder: (BuildContext context, int index) {
                return _ourProducts(ourProducts?.elementAt(index).image ?? "");
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _ourProducts(String url) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: NetworkImageWidget(
        url:"${AppConfig.productImageUrl}$url",
        width: 114,
        height: 150,
      ),
    );
  }

}
