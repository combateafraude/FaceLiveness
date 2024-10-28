![Caf](https://github.com/combateafraude/iOS/raw/main/images/caf_icon.png)

# FaceLiveness SDK for iOS

## Current Version

### Stable

| SDK            | Version |
| -------------- | ------- |
| FaceLiveness   | 6.2.0   |

#### Requirements

| Deployment Info | Version       |
| --------------- | ------------- |
| iOS Target      | 13.0+         |
| Xcode           | 15.4+         |
| Swift           | 5.10+         |

- A valid [CAF mobileToken](https://docs.caf.io/sdks/access-token).
- Swift Package Manager installed and integrated in your Xcode project.

#### Camera Usage Description

Make sure to add an NSCameraUsageDescription entry to your app's Info.plist file, explaining why your app requires camera access. For example: `"To scan and verify identity documents."`

## Swift Package Manager (SPM) SDK Installation

To add **FaceLiveness 6.2.0** to your project using **Swift Package Manager**:

1. Open your Xcode project.
2. Navigate to **File > Add Packages**.
3. In the search bar, paste the URL of this repository:
```console
https://github.com/combateafraude/FaceLiveness.git
```
4. Select the version `6.2.0` or choose "Up to Next Major" option to ensure that your project will automatically get future compatible updates.

5. Complete the steps, and Xcode will automatically integrate the **FaceLiveness** SDK into your project.

## Usage

To import and use **FaceLiveness** in your app, add the following import statement at the top of your Swift files:

```swift
import FaceLiveness
```

## Privacy Policy and Terms & Conditions of Use

When using our SDKs, please make sure that you agree with our [Privacy Policy](https://en.caf.io/politicas/politicas-de-privacidade) and our [Terms and Conditions of Use](https://en.caf.io/politicas/termos-e-condicoes-de-uso).
