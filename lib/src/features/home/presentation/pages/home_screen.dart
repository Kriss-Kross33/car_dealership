import 'package:car_dealership/src/core/core.dart';
import 'package:car_dealership/src/features/features.dart';
import 'package:car_dealership/src/features/home/presentation/bloc/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = <Widget>[
    const DashboardScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavBarCubit>(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: ColorConsts.primaryColor,
              onTap: (index) =>
                  context.read<NavBarCubit>().onTabSelected(index),
              type: BottomNavigationBarType.fixed,
              currentIndex: state.index,
              selectedLabelStyle: const TextStyle(
                color: ColorConsts.primaryColor,
                fontWeight: FontWeight.w500,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    AssetConsts.home,
                    height: 25,
                    width: 25,
                  ),
                  activeIcon: Image.asset(
                    AssetConsts.home,
                    height: 25,
                    width: 25,
                    color: ColorConsts.primaryColor,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    AssetConsts.sellCar,
                    height: 25,
                    width: 25,
                  ),
                  activeIcon: Image.asset(
                    AssetConsts.sellCar,
                    height: 25,
                    width: 25,
                    color: ColorConsts.primaryColor,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    AssetConsts.fav,
                    height: 25,
                    width: 25,
                  ),
                  activeIcon: Image.asset(
                    AssetConsts.fav,
                    height: 25,
                    width: 25,
                    color: ColorConsts.primaryColor,
                  ),
                  label: 'Favourites',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    AssetConsts.message,
                    height: 25,
                    width: 25,
                  ),
                  activeIcon: Image.asset(
                    AssetConsts.message,
                    height: 25,
                    width: 25,
                    color: ColorConsts.primaryColor,
                  ),
                  label: 'Messages',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    AssetConsts.profile,
                    height: 25,
                    width: 25,
                  ),
                  activeIcon: Image.asset(
                    AssetConsts.profile,
                    height: 25,
                    width: 25,
                    color: ColorConsts.primaryColor,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
            body: IndexedStack(
              index: state.index,
              children: screens,
            ),
          );
        },
      ),
    );
  }
}
