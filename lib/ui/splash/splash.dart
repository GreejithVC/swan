import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_enums.dart';
import '../../constants/app_strings.dart';
import '../../constants/app_styles.dart';
import '../../constants/app_text.dart';
import '../../main.dart';
import '../../providers/app_provider.dart';
import '../../utils/widget_utils.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final AppProvider _appProvider =
      Provider.of<AppProvider>(navigatorKey.currentContext!, listen: false);

  @override
  void initState() {
    super.initState();
    _appProvider.fetchAppDetails(context);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => WidgetUtils.showExitPopUp(context),
      child: Scaffold(
        body: _buildBodyWidget(context),
      ),
    );
  }

  Widget _buildBodyWidget(BuildContext context) {
    return Selector<AppProvider, PageStatus>(
        selector: (buildContext, controller) => controller.pageStatus,
        builder: (context, data, child) {
          return data == PageStatus.loadingFailed
              ? WidgetUtils.errorWidget("Something went wrong",
                  color: AppColors.textBlackColor)
              : _buildContentWidget();
        });
  }

  Widget _buildContentWidget() {
    return DecoratedBox(
      decoration: BoxDecoration(gradient: AppStyles.gradientLoginScreen),
      child: Center(
          child: TextPOP28W800(
        AppStrings.appName.toUpperCase(),
        textAlign: TextAlign.center,
        color: AppColors.secondary,
      )),
    );
  }
}
