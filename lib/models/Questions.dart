class Question{
  final int id, answer;
  final String question;
  final List<String> options;
  Question(this.id, this.question, this.answer, this.options);
}
const List sample_data = [
  {
    "id": 1,
    "question": "Flutter is an open-source UI software developement kit created by _____",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "when google release Flutter.",
    "options": ['Jun 2017', 'Jan 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  }
];