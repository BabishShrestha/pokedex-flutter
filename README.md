# 🎮 Pokédex - Flutter

<div align="center">
  <img src="assets/logo.png" alt="Pokédex Logo" width="150"/>
  
  <p>A comprehensive Pokédex app built with Flutter, featuring 1000+ Pokémon from Gen I-IX with advanced filtering, evolution chains, and offline support.</p>

  [![Flutter](https://img.shields.io/badge/Flutter-3.8.1-02569B?logo=flutter)](https://flutter.dev)
  [![Dart](https://img.shields.io/badge/Dart-3.8.1-0175C2?logo=dart)](https://dart.dev)
  [![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
</div>

---

## 📱 Features

### Core Functionality
- **🔍 Smart Search** - Debounced real-time search with local filtering and API fallback
- **♾️ Infinite Scroll** - Smooth pagination loading 20 Pokémon at a time
- **📊 Pokémon Details** - View stats, abilities, types, height, and weight
- **🔗 Evolution Chains** - Visualize complete evolution paths with requirements
- **⚖️ Compare Mode** - Side-by-side comparison of up to 6 Pokémon

### Advanced Filtering
- **🎯 Generation Filter** - Browse Pokémon by generation (Gen I-IX)
- **🎨 Type Filter** - Multi-select filtering across all 18 Pokémon types
- **🔢 Sort Options** - Sort by ID (ascending/descending) or Name (A-Z/Z-A)
- **🎛️ Combined Filters** - Apply multiple filters simultaneously with intersection logic

### Performance & UX
- **💾 Offline-First** - Hive caching with 7-day TTL for instant loading
- **🎵 Sound Effects** - Interactive audio feedback on user actions
- **🎨 Type-Based Colors** - Dynamic theming based on Pokémon types
- **📱 Responsive Design** - 3-column grid optimized for all screen sizes
- **🔄 Pull-to-Refresh** - Easy data refresh with swipe gesture

---

## 🛠️ Tech Stack

| Category | Technology |
|----------|-----------|
| **Framework** | Flutter 3.8.1 |
| **Language** | Dart 3.8.1 |
| **State Management** | Riverpod 3.0.3 (Notifier + FutureProvider) |
| **API** | [PokéAPI v2](https://pokeapi.co) |
| **HTTP Client** | Dio 5.9.0 |
| **Local Storage** | Hive 2.2.3 + Hive Flutter |
| **Image Caching** | cached_network_image 3.2.3 |
| **Audio** | audioplayers 5.2.1 |
| **Fonts** | Google Fonts (Poppins) |

---

## 🏗️ Architecture

```
lib/
├── core/                        # Shared utilities & services
│   ├── cache/                   # Hive adapters & cache repository
│   ├── dio/                     # HTTP client configuration
│   ├── services/                # Sound & AI services
│   ├── utils/                   # Type colors & helpers
│   └── widgets/                 # Reusable UI components
├── features/                    # Feature-based modules
│   ├── evolution/               # Evolution chain logic
│   ├── home/                    # Main screen & providers
│   │   ├── data/                # Providers & state management
│   │   └── presentation/        # UI screens & widgets
│   ├── pokemon_compare/         # Comparison feature
│   └── pokemon_details/         # Detail screen
└── main.dart                    # App entry point
```

**Design Pattern:** Clean Architecture with feature-first organization  
**State Management:** Riverpod Notifiers for complex state, FutureProvider.family for async data  
**Caching Strategy:** Cache-first with TTL expiration (7 days)

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK 3.8.1 or higher
- Dart SDK 3.8.1 or higher
- Android Studio / VS Code with Flutter extensions
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/pokedex.git
   cd pokedex
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate launcher icons** (optional)
   ```bash
   dart run flutter_launcher_icons
   ```

4. **Generate splash screen** (optional)
   ```bash
   dart run flutter_native_splash:create
   ```

5. **Run the app**
   ```bash
   flutter run
   ```

### Build Release APK
```bash
flutter build apk --release
```

The APK will be available at: `build/app/outputs/flutter-apk/app-release.apk`

---

## 📖 API Usage

This app uses [PokéAPI](https://pokeapi.co) as the authoritative data source:

| Endpoint | Purpose |
|----------|---------|
| `/pokemon?limit=20&offset={offset}` | Paginated Pokémon list |
| `/pokemon/{id}` | Pokémon details |
| `/pokemon/{name-or-id}` | Direct search lookup |
| `/generation/{id}` | Generation-specific Pokémon |
| `/type/{name}` | Type-based Pokémon list |
| `/pokemon-species/{id}` | Species data for evolution |
| `/evolution-chain/{id}` | Complete evolution tree |

**Best Practices Implemented:**
- Cache-first strategy to minimize API calls
- Local filtering for instant search results
- Batch loading with pagination
- 7-day TTL to balance freshness and performance

---

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

### How to Contribute

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. **Make your changes**
4. **Commit your changes**
   ```bash
   git commit -m "Add some amazing feature"
   ```
5. **Push to the branch**
   ```bash
   git push origin feature/amazing-feature
   ```
6. **Open a Pull Request**

### Contribution Ideas
- 🐛 Bug fixes and improvements
- ✨ New features (Favorites, Team Builder, Move Details)
- 🎨 UI/UX enhancements
- 📝 Documentation improvements
- 🌐 Localization/translations
- ♿ Accessibility improvements
- 🧪 Unit and integration tests

### Code Style
- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines
- Use meaningful variable and function names
- Add comments for complex logic
- Format code with `dart format .`

---

## 📸 Screenshots

> **Note:** Add your screenshots here after building the app

```
[Home Screen] [Detail Screen] [Evolution Chain] [Compare Mode]
```

---

## 🗺️ Roadmap

- [ ] Add favorites system with local persistence
- [ ] Implement move details and animations
- [ ] Add Pokémon cries/sound effects
- [ ] Integrate breeding and egg group info
- [ ] Add ability details and effect descriptions
- [ ] Implement team builder with type coverage analysis
- [ ] Add shiny variants toggle
- [ ] Support for regional forms (Alolan, Galarian, etc.)
- [ ] Dark mode support
- [ ] Unit and integration tests

---

## 🐛 Known Issues

- Evolution chains with branching paths may require horizontal scrolling
- Some older generation Pokémon may have incomplete data from API
- Type filter intersection may result in empty lists for rare type combinations

> Found a bug? Please [open an issue](https://github.com/yourusername/pokedex/issues)

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- [PokéAPI](https://pokeapi.co) - The RESTful Pokémon API
- [Flutter](https://flutter.dev) - UI framework
- [Riverpod](https://riverpod.dev) - State management
- Pokémon and all associated names are trademarks of Nintendo, Game Freak, and The Pokémon Company

---

## 📧 Contact

**Your Name** - [@yourtwitter](https://twitter.com/yourtwitter)

Project Link: [https://github.com/yourusername/pokedex](https://github.com/yourusername/pokedex)

---

<div align="center">
  Made with ❤️ and Flutter
  
  ⭐ Star this repo if you found it helpful!
</div>
