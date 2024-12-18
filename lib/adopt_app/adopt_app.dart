import 'package:firstflutterapp/adopt_app/bloc/animal_bloc.dart';
import 'package:firstflutterapp/adopt_app/widget/adopt_appbar.dart';
import 'package:firstflutterapp/adopt_app/widget/adopt_filter.dart';
import 'package:firstflutterapp/adopt_app/widget/adopt_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdoptAppPage extends StatelessWidget {
  const AdoptAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnimalBloc()..add(LoadAnimals()),
      child: Scaffold(
        backgroundColor: const Color(0xFFDBE8DF),
        body: const Column(
          children: [
            AdoptAppBarWidget(),
            AdoptFilterWidget(),
            AdoptListWidget(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_rounded),
              label: "Favoritos",
            ),
          ],
        ),
      ),
    );
  }
}


// backgroudColor: #DBE8DF
// orange: #EE6D2D
// brow: #3C2F20
// browLight: #8E8E81
// blueLight: #91C9B9