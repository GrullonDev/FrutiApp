import 'package:flutter/material.dart';
import 'package:fruti_app/features/home/bloc/home_bloc.dart';
import 'package:fruti_app/features/home/widgets/module_card.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HomeBloc>();

    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount;
        double padding;

        if (constraints.maxWidth < 600) {
          crossAxisCount = 2;
          padding = 16.0;
        } else if (constraints.maxWidth < 1200) {
          crossAxisCount = 3;
          padding = 34.0;
        } else {
          crossAxisCount = 4;
          padding = 32.0;
        }

        return GridView.count(
          crossAxisCount: crossAxisCount,
          padding: EdgeInsets.all(padding),
          children: <Widget>[
            ModuleCard(
              title: 'Sumas',
              icon: Icons.add,
              color: Colors.green,
              onTap: () => bloc.sendArguments(),
            ),
            ModuleCard(
              title: 'Restas',
              icon: Icons.remove,
              color: Colors.red,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Abriendo módulo')),
                );
              },
            ),
            ModuleCard(
              title: 'Multiplicación',
              icon: Icons.close,
              color: Colors.orange,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Abriendo módulo ')),
                );
              },
            ),
            ModuleCard(
              title: 'Operaciones \n      Varias',
              icon: Icons.calculate,
              color: Colors.orange,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Abriendo módulo ')),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
