# clean_kit_flutter

```
lib/
├── core/ # Global infrastructure and cross-cutting concerns (e.g., DI, Networking)
│ ├── constants/ # Global constants, paths, themes
│ ├── di/ # Dependency Injection setup (using get_it/injectable)
│ ├── error_handling/# Custom exceptions and failure models
│ ├── networking/ # ApiService (Dio) setup and interceptors
│ │ ├── api_service.dart # Base Dio instance
│ │ └── auth_interceptor.dart # 401 retry, token rotation logic
│ ├── router/ # Central GoRouter configuration
│ │ ├── app_router.dart
│ │ └── router_observer.dart
│ └── services/ # Global singletons (e.g., CachingService, Logger)
│ └── caching/
│ └── caching_service.dart # Wrapper for flutter_secure_storage

├── features/ # Independent, modular business components
│ ├── authentication/# Example Feature: Login, Signup, Token Refresh
│ │ ├── presentation/ # UI and State Management
│ │ │ ├── bloc/
│ │ │ │ ├── auth_bloc.dart # Manages authentication state
│ │ │ │ └── auth_event.dart, auth_state.dart
│ │ │ └── pages/
│ │ │ └── login_page.dart # Thin UI component
│ │ ├── domain/ # Business Logic (Pure Dart)
│ │ │ ├── entities/
│ │ │ │ └── user_entity.dart # Core immutable data model
│ │ │ ├── repositories/
│ │ │ │ └── auth_repository.dart # Interface definition (Abstraction)
│ │ │ └── usecases/
│ │ │ ├── login_usecase.dart # Single business operation
│ │ │ └── refresh_token_usecase.dart
│ │ └── data/ # Implementation details (APIs, Storage)
│ │ ├── datasources/
│ │ │ ├── auth_api_datasource.dart # Remote (API calls)
│ │ │ └── auth_local_datasource.dart # Local (Caches/Storage)
│ │ └── repositories/
│ │ └── auth_repository_impl.dart # Concrete implementation of the Domain interface

├── shared/ # Reusable UI widgets and extensions (e.g., Button, Loading Indicator)
├── router/ # Central GoRouter configuration (sometimes kept here instead of core/)
└── main.dart # Entry point, initializes DI, Router, and App configuration

```