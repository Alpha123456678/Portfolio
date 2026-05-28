class Project {
  final String? title, description;

  Project({this.title, this.description});
}

List<Project> demo_projects = [
  Project(
    title: "Meal App - Flutter UI and State Management",
    description:
        "The Meals App is a mobile application built using Flutter, designed to help users explore meal categories, view detailed recipes, and manage favorites. The app is structured using modern development practices, including state management with the provider package and a modular, scalable architecture.",
  ),
  Project(
    title: "Chat App - Flutter UI and Firebase Integration",
    description:
        "This Flutter application is a real-time chat app that uses Firebase Authentication and Cloud Firestore to enable users to sign up, log in, and send messages. It features a user-friendly interface with a chat screen that displays messages in a list format, allowing users to communicate seamlessly.",
  ),
  Project(
    title: "Game App - Flutter UI (Bubble Trouble)",
    description:
        "Bubble Trouble is a Flutter-based 2D action game where a player likely shoots or avoids bouncing balls using missiles or buttons. The project is still in early stages, but the file structure suggests a classic arcade-style gameplay with interactive elements.",
  ),

  Project(
    title: "Whatsapp Clone App - Flutter UI",
    description:
        "This Flutter project is a UI clone of WhatsApp, aiming to replicate the look and feel of the popular messaging app. It includes structured screens for chats, calls, statuses, communities, and camera, following tab-based navigation.",
  ),
  Project(
    title: "News App - Flutter UI and REST API",
    description:
        "This Flutter project is a REST API-integrated news application, aiming to replicate the look and feel of the popular news app. It includes structured screens for news feeds, categories, bookmarks, and settings, following tab-based navigation.",
  ),
];
