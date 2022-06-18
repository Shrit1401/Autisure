// ignore_for_file: file_names

class TestSingleContent {
  num id;
  String question;
  String info;
  TestSingleContent({
    required this.id,
    required this.question,
    required this.info,
  });
}

List<TestSingleContent> testContent = [
  TestSingleContent(
      id: 1,
      question: 'Does Your child have problem in walking?',
      info:
          'Does Your child have problem in walking, or have not been walking for long time'),
  TestSingleContent(id: 2, question: 'ShritOp', info: 'dopz'),
  TestSingleContent(
      id: 3,
      question: 'Do your child speak normally?',
      info:
          'does your child have any problem in speaking or is not been speaking for a long time?'),
];
