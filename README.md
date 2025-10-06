# mone-thak: Bengali Memory Journal & Reminder App (মনে থাক)

## 🌟 Overview
**mone-thak (মনে থাক)** is a mobile application built with Flutter that serves as a culturally-focused personal journal, smart reminder, and digital legacy recorder. It is specifically designed to help the Bengali-speaking community preserve small, meaningful moments—birthdays, medicines, prayers, and personal stories—that often get lost in the hustle of modern life.

The app uses advanced features like Bengali Voice Journaling and Emotion-Tagged Reminders to provide a truly native and intuitive experience.

---

## 💡 Key Features

### 1. 🎤 Bengali Voice/Text Journaling & Auto-Transcription
* **Native Language Support:** Record thoughts and memories naturally in Bengali.
* **Instant Transcription:** Automated Speech-to-Text (STT) converts Bengali voice notes into searchable, editable Bengali text, eliminating the need for manual typing.
* **Voice Note Widget:** A modular widget for quick, one-tap voice recording directly from the home screen.
* **Text Note Widget:** A modular widget for quick, one-tap take note directly from the home screen.

### 2. ❤️ Emotion-Tagged Reminders
* **Meaningful Prompts:** Assign an **Emotion Tag** (e.g., "Joyful," "Urgent," "Family," "Duty") to any reminder.
* **Contextual Alerts:** Notifications are delivered with the assigned emotional context, making the reminder more impactful and memorable (e.g., reminding a user of a "Joyful" anniversary).
* **Reminder Chip:** A modular widget for viewing urgent and emotionally-tagged reminders at a glance.

### 3. 👴 Legacy Mode (উত্তরকাল)
* **Digital Heritage:** A dedicated section to record, structure, and archive life stories, wisdom, and family history for future generations.
* **Guided Prompts:** Uses curated Bengali prompts to help users record rich narratives and anecdotes.
* **Secure Sharing:** Tools to compile and securely export "Legacy Chapters" for family members.

### 4. 🗃️ Robust Data Management
* **Offline First:** Create and access journals and reminders even without an internet connection.
* **Local Backup:** Secure backup and restore options for all data (including voice recordings) to local device storage.
* **Memory Card Widget:** A modular widget that highlights a "Memory of the Day" or a past journal entry, encouraging reflection.

---

## 🏗️ Architecture & Tech Stack

This application is built with a focus on maintainability, scalability, and testability, following the principles of **Clean Architecture**.

| Technology | Purpose |
| :--- | :--- |
| **Flutter** | Cross-platform mobile development (iOS/Android). |
| **Riverpod** | State Management, providing robust dependency injection and reactive state. |
| **Clean Architecture** | Separating business logic (Domain) from the UI (Presentation) and Data layers to ensure modularity. |
| **Firebase** | Backend-as-a-Service (BaaS) for optional Cloud Synchronization, Authentication, and scalable data storage (Firestore). |
| **Platform APIs** | Utilizing native device services for high-quality voice recording, local notifications, and biometric security. |

---

## 📁 Folder Structure

The code adheres to the Clean Architecture standard:

lib/
├── core/             # Shared components (constants, theme, utils)
├── data/             # Data Models, DataSources (Firebase, Local DB), and Repository Implementations
├── domain/           # Core Business Logic (Entities, Abstract Repositories, Use Cases)
├── presentation/     # UI Layer (Screens, Widgets, Riverpod StateNotifiers/Providers)
└── main.dart         # App entry point

---

## 🚀 Getting Started

### Prerequisites

* Flutter SDK (Stable Channel)
* Dart SDK
* Firebase Project configured (Optional, for cloud sync)

### Setup

1.  **Clone the repository:**
    ```bash
    git clone [Your-Repo-Link]
    cd smriti-kotha
    ```

2.  **Get dependencies:**
    ```bash
    flutter pub get
    ```

3.  **Configure Firebase (Optional but Recommended):**
    * Follow the standard FlutterFire CLI instructions to connect your project.
    * Ensure `google-services.json` (Android) and `GoogleService-Info.plist` (iOS) are placed in the correct directories.

4.  **Run the app:**
    ```bash
    flutter run
    ```

---

## 🤝 Contribution

We welcome contributions! If you have suggestions for new Bengali-specific features, better translations, or technical improvements, please feel free to open an issue or submit a Pull Request.

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'feat: Add AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

---

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.

---

## ✉️ Contact


Developer Email: bonyyamin1997@gmail.com