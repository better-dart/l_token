import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:l_token/config/actions.dart';
import 'package:l_token/config/states.dart';
import 'package:l_token/view/list/switch_list_item_widget.dart';

class SettingsPage extends StatelessWidget {
  static const String routeName = "/settings";

  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(
      builder: (context, store) {
        return Scaffold(
            appBar: AppBar(
              title: new Text('Settings'),
            ),
            body: new Container(
              color: store.state.theme.themeData.primaryColor,
              child: new Center(
                child: new SwitchListItemWidget(
                  title: 'Theme Mode',
                  isChecked: !store.state.theme.isDark(),
                  valueChanged: (isChecked){
                    store.dispatch(Action.ChangeTheme);
                  },
                ),
              ),
            ));
      }
    );
//    return Scaffold(
//        appBar: AppBar(
//          title: new Text('Settings'),
//        ),
//        body: new Container(
//          color: theme.primaryColor,
//          child: new Center(
//            child: new SwitchListItemWidget(
//              title: 'Theme Mode',
//              isChecked: true,
//            ),
//          ),
//        ));
  }
}