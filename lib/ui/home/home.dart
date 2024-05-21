import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled11/constants/app_styles.dart';

import '../../constants/app_drawables.dart';
import '../../main.dart';
import '../../providers/app_provider.dart';
import '../../providers/home_provider.dart';
import '../../utils/widget_utils.dart';
import 'components/home_view.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AppProvider appProvider =
      Provider.of<AppProvider>(navigatorKey.currentContext!, listen: false);
  final HomeProvider homeProvider =
      Provider.of<HomeProvider>(navigatorKey.currentContext!, listen: false);

  @override
  void initState() {
    // TODO: implement initState
    homeProvider.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => WidgetUtils.showExitPopUp(context),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(),
        body: HomeView(),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(Drawables.logo),
          Spacer(),
          Image.asset(
            Drawables.searchIcon,
            width: 24,
            height: 24,
          ),
          AppStyles.boxWidthExtraSmall,
          Image.asset(
            Drawables.favIcon,
            width: 24,
            height: 24,
          ),
          AppStyles.boxWidthExtraSmall,
          Image.asset(
            Drawables.cartIcon,
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}
