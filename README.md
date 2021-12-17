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

a. Add through **File -> Add Packages...** action in Xcode. Use https://github.com/translized/iOS-SDK repository URL and the Version: Up to Next Minor starting with 1.0.0 option.

b. Add this line to **dependencies** section of your **Package.swift**:

    .package(name: "Translized", url: "https://github.com/translized/iOS-SDK", .upToNextMinor(from: "1.0.0"))

### Manual (.xcframework)
To install **.xcframework** manually:
1. Download the [Zip archive](https://github.com/translized/iOS-SDK/archive/refs/tags/1.0.0.zip) containing the .xcframework, extract it, and add it to your project.
2. Add it to your targets (embed and link).

## Getting started

Before start make sure you have **projectId** and **otaToken**, which you can find in Project/Release and Account/API Access, and to make a release on Translized Dashboard/Project/Release.

### Usage
**Configuring the SDK**
We recomment configuring Translized SDK within the AppDelegate function - `func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool`

    Translized.shared.setup(projectId: "Project ID", otaToken: "Ota token")
    Translized.shared.swizzleMainBundle()

**Checking for updates**

To get new translations you need to call the `checkForUpdates:` method. A good place for this is in the `applicationDidBecomeActive:` method of your App delegate. It will be called every time application is launched or restored from the background.

    func applicationDidBecomeActive(_ application: UIApplication) {
        Translized.shared.checkForUpdates { (updated, error) in
            print("Updated: \(updated)\nError: \(error)")
        }
    }

**Updating UI**

Translized posts the TranslizedDidUpdateLocalization when the localization files are updated. Subscribe to it in any view controller or model in order to react and update your UI.

    NotificationCenter.default.addObserver(
            self,
            selector: #selector(translizedRefresh(_:)),
            name: Notification.Name.TranslizedDidUpdateLocalization,
            object: nil)

**Referring keys**

There is no need to update your code with swizzling enabled, refer to the keys as usual:

    NSLocalizedString("key", comment: "comment")
    NSLocalizedString("key", tableName: "tableName", comment: "comment")

If you have not enabled bundle swizzling, you can refer to the keys using the Translized SDK directly:

    Translized.shared.localisedString(key: "key", value: "default value", table: "tableName")

## Support
Contact us through email: **info@translized.com**