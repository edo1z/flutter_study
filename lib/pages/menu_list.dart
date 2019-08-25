import 'package:flutter/material.dart';
import 'package:hoge/menu_list/menu_list.dart';
import 'package:hoge/menu_list/model/menu.dart';

class MenuListScreen extends StatelessWidget {
  _buildMenuList() {
    return <MenuModel>[
      const MenuModel(type: 'FOOD', name: '焼きそば', price: 400),
      const MenuModel(type: 'FOOD', name: 'たこ焼き', price: 500),
      const MenuModel(type: 'DRINK', name: '生ビール', price: 400),
      const MenuModel(type: 'DRINK', name: 'ウーロン茶', price: 150),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MenuList(_buildMenuList()));
  }
}
