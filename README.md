# Bookly 📚

A Flutter application for discovering and exploring books using the Google Books API. Browse featured books, search for titles, and view detailed information about each book.

## Features ✨
- **Book Discovery**: Browse newest and featured books.
- **Search Functionality**: Find books by title, author, or category.
- **Book Details**: View descriptions, ratings, author info, and preview links.
- **Similar Books**: Get recommendations based on current book categories.
- **Responsive UI**: Adaptive design for all screen sizes.
- **Error Handling**: Clear feedback for API failures and network issues.

---
## Usage 📱

1. **Home Screen**:  
   - Browse featured and newest books in horizontal lists.
   - Tap any book to view details.

2. **Book Details Screen**:  
   - View descriptions, authors, ratings, and preview options.
   - Explore similar books in the same category.

3. **Search Screen**:  
   - Search for books by keywords (e.g., "Programming").
   - Tap results to view details.

4. **Preview Books**:  
   - Tap "Free" or "Preview" to open web reader or external links.

---

## Installation 🛠️

### Prerequisites
- Flutter SDK (version 3.0.0 or higher)
- Google Books API key (free tier)

### Steps
1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/bookhub.git
   cd bookhub
   ```

2. **Add your API key**:
   - Replace the placeholder in `api_service.dart` (if applicable) with your Google Books API key.

3. **Install dependencies**:
   ```bash
   flutter pub get
   ```

4. **Run the app**:
   ```bash
   flutter run
   ```

---

## Project Structure 📁

```
lib/
├── core/
│   ├── constants/          # App constants (styles, assets, API config)
│   ├── errors/             # Custom error handling (failures)
│   ├── network/            # API client (DioHelper, ApiService)
│   └── utils/              # Utilities (launch URLs, progress loader)
├── features/
│   ├── home/               # Home screen (newest/featured books)
│   │   ├── data/           # Data layer (models, repos)
│   │   ├── presentation/   # UI (views, widgets, cubits)
│   ├── search/             # Search functionality
│   └── splash/             # Splash screen
└── main.dart               # App entry point
```

---

## Dependencies 📦

| Package              | Usage                                  |
|----------------------|----------------------------------------|
| `flutter_bloc`       | State management (Cubit)               |
| `dio`                | HTTP requests                          |
| `equatable`          | Simplify object comparisons            |
| `go_router`          | Declarative navigation                 |
| `url_launcher`       | Open book preview links                |
| `cached_network_image`| Cache book covers                     |

---



## Architecture 🏗️

- **BLoC/Cubit**:  
  - State management for fetching books (`FeatureBooksCubit`, `NewsetBooksCubit`).
- **Layered Architecture**:  
  - Separation of data (repos), business logic (cubits), and presentation (UI).
- **API Integration**:  
  - Google Books API for fetching book data.
- **Error Handling**:  
  - Custom failures (`ServerFailure`) and error widgets.

---

### Key Notes for Developers:
1. **API Integration**:  
   - Replace `ApiService` endpoints with your Google Books API key.
   - Example endpoint: `volumes?Filtering=free-ebooks&q=Programming`.

2. **State Management**:  
   - Cubits (`FeatureBooksCubit`, `SearchCubit`) handle data fetching and state updates.

3. **Navigation**:  
   - Uses `go_router` for declarative routing (e.g., `AppRouter.kBookDetailsView`).

4. **UI Components**:  
   - Reusable widgets like `CustomBookImage`, `BookRating`, and `CustomBottom`.

5. **Error Handling**:  
   - Graceful error states with `CustomErrorWidget` and retry logic.
