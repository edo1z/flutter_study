import 'package:flutter/material.dart';
import 'package:hoge/menu_list/model/menu.dart';

class MenuListItem extends StatelessWidget {
  final MenuModel _menuModel;

  MenuListItem(this._menuModel);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(child: Text(_menuModel.name[0])),
        title: Text(_menuModel.name),
        subtitle: Text(_menuModel.type));
  }
}
