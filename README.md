# Translized Over the Air (OTA) SDK for iOS

Publish your translations faster and simpler than ever before.
Create release on Translized dashboard and watch as new translations appear in your iOS app.

## Features
- Over-the-air (OTA) localization
- NSBundle swizzling for seamless integration

## Requirements
- Xcode 12+
- iOS 10.0+

## Setup
### Swift Package Manager
To install using [Swift Package Manager](https://www.swift.org/package-manager/):

a. Add through **File -> Swift Packages -> Add Package Dependency...** action in Xcode. Use https://github.com/translized/iOS-SDK repository URL and the Version: Up to Next Minor starting with 1.0.0 option.

b. Add this line to **dependencies** section of your **Package.swift**:

    .package(name: "Translized", url: "https://github.com/translized/iOS-SDK", .upToNextMinor(from: "1.0.0"))

### Manual (.xcframework)
To install **.xcframework** manually:
1. Download the [Zip archive](https://github.com/translized/iOS-SDK/archive/refs/tags/1.0.0.zip) containing the .xcframework, extract it, and add it to your project.
2. Add it to your targets (embed and link).