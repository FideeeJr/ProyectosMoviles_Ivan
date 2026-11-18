import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.MenuOptions[index].icon, color: Colors.blue),
          title: Text(AppRoutes.MenuOptions[index].name),
          onTap: () {
            //final route = MaterialPageRoute(
            // builder: (context) => Listview1Screen(),
            Navigator.pushNamed(context, AppRoutes.MenuOptions[index].route);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: AppRoutes.MenuOptions.length,
      ),
    );
  }
}
