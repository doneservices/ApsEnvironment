import Foundation

public struct ApsEnvironment {
    public static func get() -> String? {
        guard
            let filePath = Bundle.main.path(forResource: "embedded", ofType:"mobileprovision"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: filePath)),
            let open = data.range(of: "<plist".data(using: .ascii)!),
            let close = data.range(of: "</plist>".data(using: .ascii)!, options: [], in: open.lowerBound..<data.endIndex),
            let plist = try? PropertyListSerialization.propertyList(from: data[open.lowerBound..<close.upperBound], options: [], format: nil) as? [String: AnyObject],
            let entitlements = plist["Entitlements"] as? [String: AnyObject],
            let environment = entitlements["aps-environment"] as? String else {
                return nil
        }

        return environment
    }
}
