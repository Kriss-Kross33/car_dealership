import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:car_dealership/src/core/core.dart';
import 'package:car_dealership/src/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WalkthroughPageView extends StatefulWidget {
  const WalkthroughPageView({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  State<WalkthroughPageView> createState() => _WalkthroughPageViewState();
}

class _WalkthroughPageViewState extends State<WalkthroughPageView> {
  TransformerPageController controller = TransformerPageController();
  final carData = <CarData>[
    CarData(
      position: CarPosition.left,
      imagePath: AssetConsts.walkthroughCar1,
    ),
    CarData(
      position: CarPosition.right,
      imagePath: AssetConsts.walkthroughCar3,
    ),
    CarData(
      position: CarPosition.left,
      imagePath: AssetConsts.walkthroughCar4,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.constraints.maxHeight * 0.15,
        ),
        child: TransformerPageView(
          itemCount: carData.length,
          transformer: ScaleAndFadeTransformer(),
          onPageChanged: (int? index) {
            context.read<WalkthroughCubit>().onPageChanged(index!);
          },
          itemBuilder: (context, index) {
            final data = carData[index];
            return Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  data.position == CarPosition.left
                      ? Positioned(
                          left: widget.constraints.maxWidth * 0.05,
                          child: Container(
                            height: widget.constraints.maxHeight * 0.38,
                            width: widget.constraints.maxWidth * 1.3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(data.imagePath),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        )
                      : Positioned(
                          right: widget.constraints.maxWidth * 0.05,
                          child: Container(
                            height: widget.constraints.maxHeight * 0.38,
                            width: widget.constraints.maxWidth * 1.3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(data.imagePath),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class ScaleAndFadeTransformer extends PageTransformer {
  final double _scale;
  final double _fade;

  ScaleAndFadeTransformer({double fade = 0.3, double scale = 0.8})
      : _scale = scale,
        _fade = fade;

  @override
  Widget transform(Widget child, TransformInfo info) {
    final position = info.position;
    double scaleFactor = (1 - position!.abs()) * (1 - _scale);
    double fadeFactor = (1 - position.abs()) * (1 - _fade);
    double opacity = _fade + fadeFactor;
    double scale = _scale + scaleFactor;
    return AnimatedOpacity(
      opacity: opacity,
      duration: const Duration(milliseconds: 500),
      child: Transform.scale(
        scale: scale,
        child: child,
      ),
    );
  }
}
