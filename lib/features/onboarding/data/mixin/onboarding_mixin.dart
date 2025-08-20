import '../../../../core/constants/exports.dart';
import '../model/onboarding_model.dart';

mixin OnboardingMixin {
 final List<OnboardingModel> list = [
    OnboardingModel(
      id: 0,
      title: "Where do you want to discover?",
      subTitle:
      "We’ve got everything you need "
          "to go big in 2023.",
      image: AppImages.onboarding_1,
    ),
    OnboardingModel(
      id: 1,
      title: "Which places are you eager to explore?",
      subTitle:
      "We’ve got everything you need "
          "to go big in 2023.",
      image: AppImages.onboarding_2,
    ),
    OnboardingModel(
      id: 2,
      title: "Where do you want to go next?",
      subTitle:
      "We’ve got everything you need "
          "to go big in 2023.",
      image: AppImages.onboarding_3,
    ),
  ];
}


