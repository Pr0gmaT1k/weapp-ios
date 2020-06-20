WEAPP-iOS
===============
[![Language: Swift 5](https://img.shields.io/badge/Swift-5-red.svg?style=flat-square)](https://swift.org)
[![CocoaPods](https://img.shields.io/badge/pod-v1.8.4-blue)]()
[![CodeCov](https://codecov.io/gh/Pr0gmaT1k/weapp-ios/branch/develop/graph/badge.svg)](https://codecov.io/gh/Pr0gmaT1k/weapp-ios)
[![Licence](https://img.shields.io/badge/license-GPL-blue)]()


Building the code
-----------------
1. Install the latest [Xcode developer tools](https://developer.apple.com/xcode/downloads/) from Apple.
1. Install [Pods](https://cocoapods.org/)
    ```shell
    sudo gem install cocoapods
    ```
1. Clone the repository:
    ```shell
    git clone https://github.com/Pr0gmaT1k/weapp-ios
    ```
1. Pull in the project dependencies:
    ```shell
    cd weapp-ios
    pod install
    ```
1. Open `weapp-ios.xcworkspace` in Xcode.


Dependencies:
-----------------
## Networking:

## Model & Decode:
* **[RealmSwift](https://github.com/realm/realm-cocoa):** Realm is a mobile database that runs directly inside phones, tablets or wearables. This repository holds the source code for the iOS, macOS, tvOS & watchOS versions of Realm Swift & Realm Objective-C.

## Coding Tools:
* **[SwiftLint](https://github.com/realm/SwiftLint):** A tool to enforce Swift style and conventions, loosely based on GitHub's Swift Style Guide.
* **[SwiftGen](https://github.com/SwiftGen/SwiftGen):** SwiftGen is a tool to auto-generate Swift code for resources of your projects, to make them type-safe to use.

