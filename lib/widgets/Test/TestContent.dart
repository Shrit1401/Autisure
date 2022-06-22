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
      question: "Does your child have limited speech",
      info: 'non-verbal or speaks in only short phrases'),
  TestSingleContent(
      id: 2,
      question:
          "Does your child tend to give random answers to questions, or make random comments",
      info: ''),
  TestSingleContent(
      id: 3, question: "Does your child not respond to their name", info: ''),
  TestSingleContent(
      id: 4, question: "Does your child avoid eye contact", info: ''),
  TestSingleContent(
      id: 5,
      question: "Does your child not engage",
      info: 'play with other children'),
  TestSingleContent(
      id: 6,
      question:
          "Does your child struggle to understand other people's feelings",
      info: ''),
  TestSingleContent(
      id: 7,
      question: "Does your child easily upset by small changes",
      info: 'starts crying or crying excessively'),
  TestSingleContent(
      id: 8, question: "Does your child have obsessive interests", info: ''),
  TestSingleContent(
      id: 9,
      question: "Does your child engage in repetitive behaviors",
      info: 'hand-flapping, toe-walking, pacing, or lining up objects'),
  TestSingleContent(
      id: 10,
      question: "Does your child engage in repetitive behaviors",
      info: 'hand-flapping, toe-walking, pacing, or lining up objects'),
  TestSingleContent(
      id: 11,
      question:
          "Is your child over or under-sensitive to smells, tastes, or touch",
      info: ''),
  TestSingleContent(
      id: 12,
      question: "Does your child struggle to socialize with other children",
      info: ''),
  TestSingleContent(
      id: 13, question: "Does your child avoid physical contact", info: ''),
  TestSingleContent(
      id: 14,
      question: "Does your child show little awareness of dangerous situations",
      info: ''),
  TestSingleContent(
      id: 15,
      question: "Does your child don't come up to you spontaneously for a chat",
      info: ''),
];
