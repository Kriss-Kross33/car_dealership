part of '../pages/dashboard_screen.dart';

class _CarRecommentationSection extends StatefulWidget {
  const _CarRecommentationSection({required this.constraints});

  final BoxConstraints constraints;

  @override
  State<_CarRecommentationSection> createState() =>
      _CarRecommentationSectionState();
}

class _CarRecommentationSectionState extends State<_CarRecommentationSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.constraints.maxHeight * 0.64,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cars.length,
        itemBuilder: (context, index) {
          final car = cars[index];
          return Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 10,
              bottom: 29,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(),
              height: widget.constraints.maxHeight * 0.45,
              width: widget.constraints.maxWidth * 0.8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.red.withOpacity(0.1),
                  boxShadow: kElevationToShadow[6]
                  //  [
                  //   BoxShadow(
                  //     color: Colors.black.withOpacity(0.5),
                  //     blurRadius: 15.0,
                  //     spreadRadius: -2,
                  //     offset: const Offset(0.0, 3),
                  //   )
                  // ],
                  ),
              child: Stack(
                children: [
                  Container(
                    height: widget.constraints.maxHeight * 0.28,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          car.images.first,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    right: 20,
                    top: widget.constraints.maxHeight * 0.3,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Honda Hatchback',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            const Spacer(),
                            Image.asset(
                              AssetConsts.star,
                              color: ColorConsts.gold,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4.7',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      AssetConsts.car,
                                      height: 28,
                                      width: 28,
                                      color: ColorConsts.primaryColor,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '115K KM',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      AssetConsts.gasoline,
                                      height: 24,
                                      width: 24,
                                      color: ColorConsts.primaryColor,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Gasoline',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      AssetConsts.location,
                                      height: 24,
                                      width: 24,
                                      color: ColorConsts.primaryColor,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '540 HP',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      AssetConsts.carRepair,
                                      height: 24,
                                      width: 24,
                                      color: ColorConsts.primaryColor,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Automatic',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 15,
                    right: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '21.11.2023',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          'Ghs120,000',
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: ColorConsts.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    left: 20,
                    right: 20,
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
