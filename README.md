# Fetra - Intermittent fasting

Fetra is a comprehensive Flutter application designed to help users manage their fitness and nutrition goals. The app combines various features including meal planning, fat calculation, workout videos, and personalized training programs.

## Features

- **Authentication System**: Secure user authentication and profile management
- **Fat Calculator**: Advanced tool for body fat percentage calculations
- **Meal Planning**: Comprehensive meal and recipe management system
- **Video Content**: Access to fitness and workout videos
- **Articles**: Health and fitness-related articles
- **Trainers**: Connect with professional fitness trainers
- **Multi-language Support**: Available in English and Arabic

## Project Architecture

The project follows a clean architecture pattern with feature-first organization:

### Core Module
```
core/
├── api/           # API handling and network layer
│   ├── api_consumer.dart
│   ├── api_interceptors.dart
│   ├── dio_consumer.dart
│   ├── end_ponits.dart
│   └── service_locator.dart
├── cache/         # Local storage and caching
├── errors/        # Error handling and exceptions
├── shared/        # Shared components
│   ├── functions/
│   └── widgets/
└── utils/         # Utilities and constants
    ├── app_colors.dart
    ├── app_images.dart
    ├── app_router.dart
    ├── app_styles.dart
    └── app_theme.dart
```

### Features Module
```
features/
├── articles/      # Health and fitness articles
├── auth/          # Authentication (sign in/sign up)
├── fat_calc/      # Fat calculator feature
├── home/          # Home screen
├── layout/        # App layout management
├── meals/         # Meal planning and tracking
├── measure/       # Body measurements
├── on_boarding/   # Onboarding screens
├── profile/       # User profile management
├── recipes/       # Recipe management
├── trainers/      # Trainer connection
└── videos/        # Workout videos
```

Each feature follows a clean architecture pattern with:
- `data/`: Data layer (repositories, models)
- `presentation/`: UI layer (view, view model)

## Internationalization

The app supports multiple languages using Flutter's built-in internationalization:
```
l10n/
├── intl_ar.arb    # Arabic translations
└── intl_en.arb    # English translations
```

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- Android Studio / VS Code
- iOS development setup (for iOS deployment)

### Installation

1. Clone the repository
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

## Tech Stack

- **Framework**: Flutter
- **Language**: Dart
- **State Management**: [Bloc (cubit)]
- **Networking**: Dio with custom interceptors
- **Local Storage**: [shared prefrence & secure storage]
- **Design**: Material Design

## Assets

The app includes various assets:
- Custom fonts (Cairo)
- SVG icons for UI elements
- Image assets for various features

## Platform Support

- Android
- iOS
- Web
- Linux
- macOS
- Windows

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is proprietary software. All rights reserved.
