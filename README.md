# ApsEnvironment

Get the current environment for push notifications.

## Installation

Install using Swift Package Manager:

```swift
dependencies: [
    .package(url: "https://github.com/doneservices/ApsEnvironment", from: "1.0.0"),
]
```

## API

### `ApsEnvironment.get() -> String?`

Returns the current environment for push notifications as reported by the [`aps-environment`](https://developer.apple.com/documentation/bundleresources/entitlements/aps-environment) key in the apps entitlements.

If the current environment cannot be determined, `nil` is returned.
