# flutter_clean_architecture

Flutter Clean Architecture Project

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

##

Để tạo một project Flutter theo kiến trúc Clean Architecture, bạn cần thực hiện các bước sau:

Bước 1: Tạo project Flutter mới

Đầu tiên, bạn cần tạo một project Flutter mới bằng cách sử dụng lệnh sau trên terminal:

lua
Copy code
flutter create --org com.example.myapp myapp


Bước 2: Tạo các thư mục

Sau khi tạo project, bạn cần tạo các thư mục cho kiến trúc Clean Architecture. Trong project của bạn, hãy tạo các thư mục sau:

lib/core: Chứa các thành phần cốt lõi của ứng dụng, bao gồm các lớp entity, repository, use case, và interface.
lib/data: Chứa các lớp và đối tượng liên quan đến dữ liệu, bao gồm các lớp data source, repository implementation, và mapper.
lib/presentation: Chứa các thành phần giao diện người dùng, bao gồm các widget, bloc, và các file liên quan đến giao diện người dùng.
lib/utils: Chứa các hàm tiện ích, hàm chung cho toàn bộ ứng dụng.

Bước 3: Thêm các thư viện cần thiết

Sau khi đã tạo các thư mục, bạn cần thêm các thư viện cần thiết cho kiến trúc Clean Architecture. Trong file pubspec.yaml, hãy thêm các thư viện sau:

yaml
Copy code
dependencies:
flutter:
sdk: flutter

# Thư viện hỗ trợ viết kiến trúc Clean Architecture
equatable: ^2.0.0
get_it: ^6.1.1
injectable: ^1.1.1
json_annotation: ^4.0.0
dio: ^4.0.0

# Thư viện hỗ trợ viết kiến trúc Clean Architecture cho Flutter
flutter_bloc: ^8.0.0
freezed: ^1.1.1
flutter_modular: ^3.2.0

dev_dependencies:
flutter_test:
sdk: flutter

# Thư viện hỗ trợ viết kiến trúc Clean Architecture
build_runner: ^2.1.4
json_serializable: ^4.1.0


Bước 4: Cấu trúc mã nguồn

Sau khi đã tạo thư mục và thêm các thư viện cần thiết, bạn cần cấu trúc mã nguồn theo kiến trúc Clean Architecture.

Trong thư mục core, hãy tạo các thư mục entity, repository, usecase, và interface, và định nghĩa các lớp entity, repository, use case, và interface tương ứng.
Trong thư mục data, hãy tạo các thư mục model, remote, và repository_impl, và định nghĩa các lớp

## 2- run this command to reset version
```
dart pub upgrade --null-safety
```
