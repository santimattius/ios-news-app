[![codecov](https://codecov.io/gh/santimattius/ios-news-app/branch/main/graph/badge.svg?token=LUP0NZmRXG)](https://codecov.io/gh/santimattius/ios-news-app) [![Quality checks](https://github.com/santimattius/ios-news-app/actions/workflows/main.yml/badge.svg)](https://github.com/santimattius/ios-news-app/actions/workflows/main.yml)

# iOS News App
This is a template to build an iOS application applying good practices and using a clean architecture, you will see that the code is super decoupled with external frameworks and even with the same iOS framework, this will help you to model your domain purely in Swift without generating external dependencies.

<p align="center">
  <img width="300" src="https://github.com/santimattius/ios-news-app/blob/main/screenshots/news_home.png?raw=true" alt="Screenshot home"/>
  <img width="300" src="https://github.com/santimattius/ios-news-app/blob/main/screenshots/news_search.png?raw=true" alt="Screenshot home"/>
  <img width="300" src="https://github.com/santimattius/ios-news-app/blob/main/screenshots/new_detail.png?raw=true" alt="Screenshot home"/>
</p>

## Application architecture

<p align="center">
  <img width="600" src="https://github.com/santimattius/ios-arch-template/blob/main/screenshots/clean-arch-diagram.png?raw=true" alt="General architecture"/>
</p>

## Project structure

<p align="left">
  <img src="https://github.com/santimattius/ios-arch-template/blob/main/screenshots/project-structure.png?raw=true" alt="Project structure"/>
</p>

## Setup apiKey
Add in the [Credentials.plist](https://github.com/santimattius/ios-news-app/blob/main/ios-news-app/Credentials.plist) file the following variable apiKey with the key obtained in the [api portal](https://newsapi.org/).

## Slather

Execute `bundle install` and run application tests.

After run this command:

```shell
slather coverage --html
```

## References

- [SwiftUI](https://developer.apple.com/xcode/swiftui/)
- [AsyncImage](https://developer.apple.com/documentation/swiftui/asyncimage)
- [Combine](https://developer.apple.com/documentation/combine)
- [Concurrency](https://docs.swift.org/swift-book/LanguageGuide/Concurrency.html)
- [URLSession](https://developer.apple.com/documentation/foundation/urlsession)

## Tools
- [SwiftLint](https://github.com/realm/SwiftLint)
