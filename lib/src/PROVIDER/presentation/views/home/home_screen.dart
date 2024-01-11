import 'package:flutter/material.dart';
import 'package:flutter_nest/src/PROVIDER/config/menu/menu_item.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('WAR CORP APP'),
        ),
        body: const _HomeView());
  }
}

///////////////////////////// _HomeView /////////////////////////////
class _HomeView extends StatelessWidget {
  const _HomeView();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
      },
      itemCount: appMenuItems.length,
    );
  }
}
///282
class _CustomListTile extends StatelessWidget {
  const _CustomListTile({

    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      onTap: () {
        //todo: navegar a la otra pantalla
      },
    );
  }
}
