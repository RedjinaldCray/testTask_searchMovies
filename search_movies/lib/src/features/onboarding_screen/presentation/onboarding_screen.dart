import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_movies/src/core/router/app_router.gr.dart';
import 'package:search_movies/src/features/onboarding_screen/bloc/onboarding_screen_bloc.dart';
import 'package:search_movies/src/presentation/components/app_scale_animation.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  Key keyStack = const Key('keyOnboardingKey');
  late OnboardingScreenBLoC _bLoC;
  late CarouselController _carouselController;

  @override
  void initState() {
    _carouselController = CarouselController();
    _bLoC = OnboardingScreenBLoC()..add(const OnboardingScreenEvent.init());
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BlocProvider.value(
        value: _bLoC,
        child: BlocConsumer<OnboardingScreenBLoC, OnboardingScreenState>(
          listener: (context, state) {
            if (state.pushButtonToSearchMovies) {
              AutoRouter.of(context).replace(const SearchRoute());
            }
          },
          builder: (context, state) => Scaffold(
            body: LayoutBuilder(
                builder: (context, constraints) => FittedBox(
                      child: Container(
                        color: Colors.black,
                        constraints: constraints,
                        child: Stack(
                          key: keyStack,
                          children: [
                            CarouselSlider(
                                carouselController: _carouselController,
                                items: state.moviesPosters
                                    .map((image) => Image.asset(
                                          image,
                                          fit: BoxFit.cover,
                                        ))
                                    .toList(),
                                options: CarouselOptions(
                                  height: constraints.maxHeight,
                                  aspectRatio: 16 / 9,
                                  viewportFraction: 1,
                                  initialPage: 0,
                                  enableInfiniteScroll: true,
                                  reverse: false,
                                  autoPlay: true,
                                  autoPlayInterval: const Duration(seconds: 5),
                                  autoPlayAnimationDuration:
                                      const Duration(milliseconds: 800),
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  enlargeCenterPage: true,
                                  enlargeFactor: 0.3,
                                  scrollDirection: Axis.horizontal,
                                )),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, bottom: 190),
                                child: AppScaleAnimation(
                                  onTap: () {
                                    _bLoC.add(const OnboardingScreenEvent
                                        .pushToSearchMovies());
                                  },
                                  child: SizedBox(
                                    height: 70,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color:
                                              const Color.fromARGB(255, 6, 4, 4)
                                                  .withOpacity(0.85),
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: const Center(
                                        child: Text(
                                          'To Search',
                                          style: TextStyle(
                                              fontSize: 21,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
          ),
        ),
      );
}
