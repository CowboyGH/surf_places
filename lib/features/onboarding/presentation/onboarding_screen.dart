import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:surf_places/assets/strings/app_route_strings.dart';
import 'package:surf_places/assets/strings/app_strings.dart';
import 'package:surf_places/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:surf_places/features/onboarding/presentation/widgets/onboarding_page_widget.dart';
import 'package:surf_places/uikit/buttons/main_button.dart';
import 'package:surf_places/uikit/buttons/text_button_widget.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';
import 'package:surf_places/features/common/presentation/widgets/load_error_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();
  int _currentIndex = 0;

  void _completeOnboarding() => context.read<OnboardingCubit>().completeOnboarding();

  @override
  void initState() {
    context.read<OnboardingCubit>().loadPages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppColorTheme.of(context);
    return Scaffold(
      body: BlocListener<OnboardingCubit, OnboardingState>(
        listener: (context, state) {
          state.maybeWhen(
            completed: () {
              context.go(AppRouteStrings.places);
            },
            error: (failure) {
              debugPrint(failure.message);
            },
            orElse: () {},
          );
        },
        child: SafeArea(
          child: BlocBuilder<OnboardingCubit, OnboardingState>(
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (pages) {
                  bool isLastPage = _currentIndex == pages.length - 1;
                  return Column(
                    children: [
                      // Кнопка пропуска (кроме последней страницы)
                      AnimatedOpacity(
                        opacity: !isLastPage ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 300),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: TextButtonWidget(
                            title: AppStrings.onboardingSkipButton,
                            onPressed: _completeOnboarding,
                          ),
                        ),
                      ),
                      // Карточка в формате страницы
                      Expanded(
                        child: PageView.builder(
                          controller: _controller,
                          itemCount: pages.length,
                          onPageChanged: (index) => setState(() => _currentIndex = index),
                          itemBuilder: (_, index) => AnimatedOpacity(
                            opacity: _currentIndex == index ? 1 : 0,
                            curve: Curves.easeInOut,
                            duration: Durations.medium2,
                            child: OnboardingPageWidget(onboardingPage: pages[index]),
                          ),
                        ),
                      ),
                      // Нижний блок: индикаторы + кнопка
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                pages.length,
                                (index) => AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  height: 8,
                                  width: _currentIndex == index ? 24 : 8,
                                  margin: const EdgeInsets.symmetric(horizontal: 4),
                                  decoration: BoxDecoration(
                                    color: _currentIndex == index
                                        ? colorTheme.accent
                                        : colorTheme.textInactive,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Появление кнопки на последней странице
                          AnimatedOpacity(
                            opacity: isLastPage ? 1.0 : 0.0,
                            duration: const Duration(milliseconds: 300),
                            child: SizedBox(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                child: MainButton(
                                  onPressed: _completeOnboarding,
                                  child: Text(AppStrings.onboardingStartButton),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
                error: (failure) => LoadErrorWidget(),
                orElse: () => SizedBox(),
              );
            },
          ),
        ),
      ),
    );
  }
}
