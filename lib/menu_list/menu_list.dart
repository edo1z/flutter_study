import 'package:flutter/material.dart';
import 'package:hoge/menu_list/menu_list_item.dart';
import 'package:hoge/menu_list/model/menu.dart';

class MenuList extends StatelessWidget {
  final List<MenuModel> _menuModel;

  MenuList(this._menuModel);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      children: _buildMenuList(),
    );
  }

  List<MenuListItem> _buildMenuList() {
    return _menuModel
        .map((menu) => MenuListItem(menu))
        .toList();
  }
}