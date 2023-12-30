part of '../pages/sell_car_screen.dart';

class _VehicleDataPageView extends StatefulWidget {
  const _VehicleDataPageView({super.key});

  @override
  State<_VehicleDataPageView> createState() => _VehicleDataPageViewState();
}

class _VehicleDataPageViewState extends State<_VehicleDataPageView> {
  final pageController = PageController();
  double currentPage = 0.0;
  List<Widget> pages = [
    const _VehicleInfoFirstPage(
      key: Key('_vehicle_info_first_page'),
    ),
    const _VehicleInfoSecondPage(
      key: Key('_vehicle_info_second_page'),
    ),
    const _VehicleInfoThirdPage(),
  ];

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VehicleDataCubit, VehicleDataState>(
      listener: (context, state) {
        pageController.animateToPage(
          state.currentPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return Transform(
            transform: Matrix4.identity()..rotateX(currentPage - index),
            child: pages[index],
          );
        },
        onPageChanged: (int pageIndex) {
          context.read<VehicleDataCubit>().onPageChanged(pageIndex);
        },
      ),
    );
  }
}
