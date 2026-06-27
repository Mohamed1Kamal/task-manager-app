<div align="center">

# 📋 Task Manager App

### A Clean Architecture Flutter Task Management Solution

**Flutter Technical Assessment for Electro Pi**

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![BLoC](https://img.shields.io/badge/State%20Management-BLoC%2FCubit-blueviolet?style=for-the-badge)](https://bloclibrary.dev)
[![Dio](https://img.shields.io/badge/Networking-Dio-13B9FD?style=for-the-badge)](https://pub.dev/packages/dio)
[![Clean Architecture](https://img.shields.io/badge/Architecture-Clean-success?style=for-the-badge)](https://en.wikipedia.org/wiki/Clean_architecture)
[![JSON Server](https://img.shields.io/badge/Backend-JSON%20Server-000000?style=for-the-badge&logo=json&logoColor=white)](https://github.com/typicode/json-server)

</div>

---

## 📑 Table of Contents

- [Introduction](#-introduction)
- [Technical Assessment](#-technical-assessment)
- [Features](#-features)
- [Project Structure](#-project-structure)
- [Tech Stack](#-tech-stack)
- [Installation](#-installation)
- [Run Mock API](#-run-mock-api)
- [Run the App](#-run-the-app)
- [Screenshots](#-screenshots)
- [Demo](#-demo)
- [Future Improvements](#-future-improvements)
- [Contributing](#-contributing)
- [Author](#-author)

---

## 📖 Introduction

**Task Manager App** is a complete, production-style mobile application developed as a **Flutter Technical Assessment for Electro Pi**.

The project demonstrates the implementation of a fully functional task management system following **Clean Architecture** principles and **BLoC/Cubit** state management, with a strong focus on scalability, separation of concerns, and maintainable code structure.

Instead of consuming a live production API, the app communicates with a **JSON Server mock backend**, simulating real-world REST API interactions including authentication, projects, and tasks management.

---

## ✅ Technical Assessment

This project was built to fulfill the requirements of the Electro Pi Flutter Technical Assessment, covering:

| Requirement | Status |
|---|---|
| 🔐 Authentication (Login & Register) | ✅ Implemented |
| 🔁 Auto Login with Secure Token Storage | ✅ Implemented |
| 📁 Projects Listing & Details | ✅ Implemented |
| ✅ Tasks Management | ✅ Implemented |
| ➕ Add New Task | ✅ Implemented |
| 🚪 Logout | ✅ Implemented |
| 🧠 State Management (BLoC/Cubit) | ✅ Implemented |
| 🌐 API Integration (Dio + Retrofit) | ✅ Implemented |
| 📱 Responsive UI | ✅ Implemented |

---

## ✨ Features

<details>
<summary><strong>🔐 Authentication</strong></summary>

- User **Login** with email/password
- User **Registration** for new accounts
- **Secure token storage** using `flutter_secure_storage`
- **Auto Login** on app relaunch if a valid session exists
- Form validation and clear error feedback

</details>

<details>
<summary><strong>📁 Projects</strong></summary>

- Browse the list of available projects
- View detailed information for each selected project
- Clean, card-based project presentation

</details>

<details>
<summary><strong>✅ Tasks</strong></summary>

- View tasks associated with a project
- **Add new tasks** through a dedicated form
- Task status and details displayed clearly

</details>

<details>
<summary><strong>👤 Profile</strong></summary>

- Display authenticated user information
- **Logout** functionality with secure session clearing

</details>

<details>
<summary><strong>🏗️ Architecture</strong></summary>

- Built using **Clean Architecture** (Presentation – Domain – Data layers)
- **BLoC/Cubit** for predictable, testable state management
- **Dependency Injection** via `GetIt`
- **Freezed** & **JSON Serializable** for immutable models and serialization
- **Retrofit** + **Dio** for type-safe API communication

</details>

<details>
<summary><strong>⚠️ Error Handling</strong></summary>

- Centralized error handling across the network layer
- Dedicated **loading**, **success**, and **error** states for every screen
- User-friendly error messages instead of raw exceptions

</details>

<details>
<summary><strong>🧭 Navigation</strong></summary>

- Declarative routing using **GoRouter**
- Route guarding for authenticated/unauthenticated states
- Smooth navigation between Auth, Projects, Tasks, and Profile flows

</details>

<details>
<summary><strong>📱 Responsive Design</strong></summary>

- Fully responsive layouts using **Flutter ScreenUtil**
- Consistent UI across different screen sizes and resolutions

</details>

---

## 📂 Project Structure

```
task-manager-app/
├── flutter_app/          # Flutter application (Clean Architecture)
│   └── lib/
│       ├── core/         # Shared utilities, constants, theming, DI setup
│       ├── data/         # Data sources, models, repository implementations
│       ├── domain/       # Entities, repository interfaces, use cases
│       └── presentation/ # Screens, widgets, Cubits/BLoCs, routing
│
└── mock_api/             # JSON Server mock backend
    └── db.json           # Mock database (users, projects, tasks)
```

### 🏛️ Architecture Overview

The Flutter application follows **Clean Architecture**, structured into three primary layers:

- **Presentation Layer** — UI screens, widgets, and Cubits responsible for state management and rendering.
- **Domain Layer** — Business logic, entities, and use cases, fully independent of any framework or external dependency.
- **Data Layer** — Repository implementations, remote data sources (Dio/Retrofit), and data models, responsible for fetching and persisting data.

This separation ensures the codebase remains **scalable**, **testable**, and **easy to maintain** as the application grows.

---

## 🛠️ Tech Stack

| Package | Purpose |
|---|---|
| `flutter_bloc` | State management using BLoC/Cubit pattern |
| `dio` | HTTP client for API communication |
| `retrofit` | Type-safe REST client generation on top of Dio |
| `json_serializable` | Automatic JSON (de)serialization of models |
| `freezed` | Immutable data classes and union types |
| `get_it` | Dependency Injection / Service Locator |
| `go_router` | Declarative navigation and routing |
| `flutter_secure_storage` | Secure storage for authentication tokens |
| `flutter_screenutil` | Responsive UI scaling across devices |
| `json-server` | Mock REST API backend for local development |

---

## 🚀 Installation

**1. Clone the repository**

```bash
git clone https://github.com/Mohamed1Kamal/task-manager-app.git
```

**2. Navigate to the Flutter project**

```bash
cd task-manager-app/flutter_app
```

**3. Install dependencies**

```bash
flutter pub get
```

---

## 🧪 Run Mock API

The application relies on **JSON Server** to simulate a real backend using the `db.json` file.

```bash
cd ../mock_api
npm install
npx json-server db.json
```

By default, JSON Server runs on `http://localhost:3000`.

> ⚠️ **Note:** Make sure the Flutter app's configured **base URL** (in the app's network/config files) matches the address where JSON Server is running. If you're testing on an Android emulator, you may need to use `http://10.0.2.2:3000` instead of `localhost`.

---

## ▶️ Run the App

Once the mock API is running, launch the Flutter application:

```bash
flutter run
```

---

## 📸 Screenshots

<div align="center">

| Login | Home |
|---|---|
| ![Login Screen](https://via.placeholder.com/250x500?text=Login+Screen) | ![Home Screen](https://via.placeholder.com/250x500?text=Home+Screen) |

| Project Details | Add Task |
|---|---|
| ![Project Details](https://via.placeholder.com/250x500?text=Project+Details) | ![Add Task](https://via.placeholder.com/250x500?text=Add+Task) |

| Profile |
|---|
| ![Profile Screen](https://via.placeholder.com/250x500?text=Profile+Screen) |

</div>

---

## 🎬 Demo

See the Task Manager App in action, showcasing the authentication flow, project management, task management, and navigation.

<div align="center">

[![Watch Demo Video](https://img.shields.io/badge/▶️%20Watch-Demo%20Video-red?style=for-the-badge)](https://drive.google.com/file/d/1QV0FlOqMhPlQzfPy97qTUsxGm68fkpX5/view?usp=sharing)

</div>

> 📹 **Direct Link:**  
> https://drive.google.com/file/d/1QV0FlOqMhPlQzfPy97qTUsxGm68fkpX5/view?usp=sharing

---

## 🔮 Future Improvements

The following enhancements are planned for upcoming iterations of this project:

- ✏️ Edit Project
- 🗑️ Delete Project
- ✏️ Edit Task
- 🗑️ Delete Task
- 🔍 Search functionality
- 🧰 Filtering options
- 📄 Pagination for large lists
- 🌙 Dark Mode support
- 📴 Offline Support (local caching)
- 🧪 Unit & Widget Testing
- ⚙️ CI/CD Pipeline integration
- 🔐 Real Backend Authentication (replacing JSON Server)

---

## 🤝 Contributing

Contributions, suggestions, and feedback are always welcome!

1. **Fork** the repository
2. Create a new branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add: your feature description"
   ```
4. Push to your branch:
   ```bash
   git push origin feature/your-feature-name
   ```
5. Open a **Pull Request** describing your changes

Please make sure your code follows the existing architecture and style conventions before submitting a PR.

---

## 👤 Author

**Mohamed Kamal**

- GitHub: [@Mohamed1Kamal](https://github.com/Mohamed1Kamal)
- LinkedIn: [Add your LinkedIn URL here]

---

<div align="center">

Made with ❤️ using Flutter

⭐ If you found this project helpful, consider giving it a star!

</div>
