import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pelmeniy_czech/models/category_model.dart';
import 'package:pelmeniy_czech/models/product_model.dart';

import 'package:pelmeniy_czech/widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
const HomePage();
static const String routeName = '/';

static Route route(){
  return MaterialPageRoute(
    settings: const RouteSettings(name: routeName),
    builder: (_) => const HomePage(),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
       body: Column(
         children: [
         ],
       ),
    );
  }
}
