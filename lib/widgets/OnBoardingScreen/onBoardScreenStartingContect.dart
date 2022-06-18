// ignore_for_file: file_names

class OnBoardingScreenStartContent {
  String image;
  String title;

  OnBoardingScreenStartContent({
    required this.image,
    required this.title,
  });
}

List<OnBoardingScreenStartContent> onboardingContent = [
  OnBoardingScreenStartContent(
    image: 'assets/OnBoard/consulation.png',
    title: 'Check If Your Kid Is Autisitc Or Not',
  ),
  OnBoardingScreenStartContent(
    image: 'assets/OnBoard/doctorInAPhone.png',
    title: 'Get Query From Nearby and Best Doctors ',
  ),
  OnBoardingScreenStartContent(
    image: 'assets/OnBoard/sports.png',
    title: 'Get Right Equimpents For Your Child',
  ),
];
