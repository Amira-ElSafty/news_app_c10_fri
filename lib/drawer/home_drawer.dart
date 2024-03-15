import 'package:flutter/material.dart';
import 'package:flutter_app_news_c10_fri/my_theme.dart';

class HomeDrawer extends StatelessWidget {
  static const int categories = 1 ;
  static const int settings = 2 ;
  Function onSideMenuClick ;
  HomeDrawer({required this.onSideMenuClick});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical:
          MediaQuery.of(context).size.height*0.1),
          // height: MediaQuery.of(context).size.height*0.2,
          child: Text('News App!',
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,),
          color: MyTheme.primaryLightColor,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: (){
              onSideMenuClick(categories);
            },
            child: Row(
              children: [
                Icon(Icons.list),
                SizedBox(width: 8,),
                Text('Categories',
                style: Theme.of(context).textTheme.titleMedium,)
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: (){
              onSideMenuClick(HomeDrawer.settings);
            },
            child: Row(
              children: [
                Icon(Icons.settings),
                SizedBox(width: 8,),
                Text('Settings',
                style: Theme.of(context).textTheme.titleMedium,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}