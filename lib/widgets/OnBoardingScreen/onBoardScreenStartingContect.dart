// ignore_for_file: file_names

class OnBoardingScreenStartContent {
  String image;
  String desc;
  String title;

  OnBoardingScreenStartContent({
    required this.image,
    required this.desc,
    required this.title,
  });
}

List<OnBoardingScreenStartContent> onboardingContent = [
  OnBoardingScreenStartContent(
    image: 'assets/OnBoard/aut.png',
    title: 'What is Autism?',
    desc:
        'Autism is a group of disorders that affect the development and functioning of the brain. It is a complex disorder that can be diagnosed and treated by specialists.',
  ),
  OnBoardingScreenStartContent(
    image: 'assets/OnBoard/consulation.png',
    title: 'Check If Your Kid Is Autisitc Or Not',
    desc:
        'we have a list of autism tests that you can use to check if your kid is autistic or not',
  ),
  OnBoardingScreenStartContent(
    image: 'assets/OnBoard/doctorInAPhone.png',
    title: 'Get Query From Nearby and Best Doctors ',
      desc:
          'we have variety of diffrent types of doctor for any kind of kind of query your child might have'
  ),
  OnBoardingScreenStartContent(
    image: 'assets/OnBoard/sports.png',
    title: 'Get Right Equimpents For Your Child',
      desc:
          'from the whole web we have made it easy for you to get the right toys and medcines for your child'
  ),
  OnBoardingScreenStartContent(
      image: 'assets/OnBoard/doc.png',
      desc:
          "We, from hundreds maybe thousand websites have created an detailed explaination about autism and it's symptoms ",
      title: 'Detailed Mentions of Autism'),
];
