class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendations = [
  Recommendation(
    name: "Maximilian Schwarzmüller",
    source: "Udemy",
    text:
        "I have been following Maximilian's courses for a long time now, and I can say that he is one of the best instructors out there. His teaching style is clear, concise, and engaging. He has a unique ability to break down complex concepts into easy-to-understand pieces, making learning enjoyable and effective.",
  ),
  Recommendation(
    name: "Mitch Koko",
    source: "YouTube",
    text:
        "Mitch is an excellent instructor who has a deep understanding of Flutter and Dart. His videos are well-structured, informative, and easy to follow. He covers a wide range of topics, from beginner to advanced, making it suitable for all levels of learners. I highly recommend his channel for anyone looking to improve their Flutter skills.",
  ),
  Recommendation(
    name: "Codepur",
    source: "YouTube",
    text:
        "Codepur is a fantastic resource for anyone interested in learning Flutter. The channel offers a variety of tutorials that are both practical and insightful. The projects covered are relevant and help solidify the concepts learned. The instructor's passion for teaching shines through, making the learning experience enjoyable.",
  ),
   Recommendation(
    name: "Hadi Kachmar",
    source: "Udemy",
    text:
        "Hadi is a knowledgeable and experienced instructor who provides comprehensive Flutter courses. His teaching approach is methodical, ensuring that students grasp the fundamentals before moving on to more complex topics. The course materials are well-organized, and Hadi's enthusiasm for Flutter is contagious. I highly recommend his courses to anyone looking to master Flutter development.",
  ),
];