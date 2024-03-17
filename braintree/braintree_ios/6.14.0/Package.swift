// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to
// build this package.

import PackageDescription

let package = Package(
    name: "Braintree",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "BraintreeCore",
            targets: ["BraintreeCore"]
        ),
        .library(
            name: "BraintreeAmericanExpress",
            targets: ["BraintreeAmericanExpress"]
        ),
        .library(
            name: "BraintreeApplePay",
            targets: ["BraintreeApplePay"]
        ),
        .library(
            name: "BraintreeCard",
            targets: ["BraintreeCard"]
        ),
        .library(
            name: "BraintreeDataCollector",
            targets: ["BraintreeDataCollector", "PPRiskMagnes"]
        ),
        .library(
            name: "BraintreeLocalPayment",
            targets: ["BraintreeLocalPayment", "PPRiskMagnes"]
        ),
        .library(
            name: "BraintreePayPal",
            targets: ["BraintreePayPal", "PPRiskMagnes"]
        ),
        .library(
            name: "BraintreePayPalNativeCheckout",
            targets: ["BraintreePayPalNativeCheckout"]
        ),
        .library(
            name: "BraintreeSEPADirectDebit",
            targets: ["BraintreeSEPADirectDebit"]
        ),
        .library(
            name: "BraintreeThreeDSecure",
            targets: ["BraintreeThreeDSecure", "CardinalMobile", "PPRiskMagnes"]
        ),
        .library(
            name: "BraintreeVenmo",
            targets: ["BraintreeVenmo"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "CardinalMobile",
            checksum: "e6b9158bc08308edf667ee0dd3c65ea8b800aa11c3a55517550a3b21ecbe5837"
        ),
        .binaryTarget(
            name: "PPRiskMagnes",
            checksum: "13e2d386e8f3e9c7711e8ebc824663d800b04158c6b15e2e7492fe512ebd2c81"
        ),
        .binaryTarget(
            name: "BraintreeCore",
            checksum: "b61fc0683295a5c9f00cb6da979c79516a07bdeeaf4de62950c229cabdbaf781"
        ),
        .binaryTarget(
            name: "BraintreeAmericanExpress",
            checksum: "83b925b8fc4f8c1a4b9cce56da7299430e607085dcf97824ec18ea10200a7959"
        ),
        .binaryTarget(
            name: "BraintreeApplePay",
            checksum: "85fca5f94fde21f0c81ab6bf1813e0f402d293fd29de1f42e2552b531e3fd271"
        ),
        .binaryTarget(
            name: "BraintreeCard",
            checksum: "c6fca900444efb7eaef49c39acb5c6c7f306d1a5954b0f12a1a3991f1a284cf0"
        ),
        .binaryTarget(
            name: "BraintreeDataCollector",
            checksum: "14e35b8c4f3556ae9daa496bc213992ce77fb3a81a328be6924d71b93a8f5b5c"
        ),
        .binaryTarget(
            name: "BraintreeLocalPayment",
            checksum: "a9ce887b28176ed056a6ae1b590c6a533624b184a82fbb550167147f2bb97d5e"
        ),
        .binaryTarget(
            name: "BraintreePayPal",
            checksum: "b0cde60c9c48515ac308191023d0552c3f04929acd7ca2ae98422a05748aba02"
        ),
        .binaryTarget(
            name: "BraintreePayPalNativeCheckout",
            checksum: "d785338eff59f26197821db1a126020c9d91c4ca06864f9f0a2012070db0288b"
        ),
        .binaryTarget(
            name: "PayPalCheckout",
            checksum: "7c8df80eb88ae377fba34e8f4d9812ba4631043dd33754c6bd265064d2de9143"
        ),
        .binaryTarget(
            name: "BraintreeSEPADirectDebit",
            checksum: "7e5eeaa508f376a7775299dfdaba687db32687c9b026774c800c237f4be838a4"
        ),
        .binaryTarget(
            name: "BraintreeThreeDSecure",
            checksum: "8288ea534ef51848c44d21d13050bd74dfb7a63828b77dcd03a742135e2686f2"
        ),
        .binaryTarget(
            name: "BraintreeVenmo",
            checksum: "ae72ea7c922ccd991d3f67b6edbfc6632b6cd86a30a66eb7e0684067fac3bdc6"
        ),
    ]
)

extension Package {
    static let repoOwner = "braintree"
    static let repoName = "braintree-ios"
    static let version = "6.14.0"
    static let mirrorBaseUrl = "https://github.com/dmhts/binary-artifacts/raw/main"
}

extension Target {

    enum SwiftVersion: String {
        case v5_10 // Xcode 15.3
        case v5_9_2 // Xcode 15.1/15.2
        case v5_9_0 // Xcode 15.0

        var rawValue: String {
            switch self {
            case .v5_10: return "5.10"
            case .v5_9_2: return "5.9.2"
            case .v5_9_0: return "5.9"
            }
        }
    }

    private static func binaryTarget(name: String, checksum: String, swiftVersion: SwiftVersion) -> Target {
        return .binaryTarget(
            name: name,
            url: "\(Package.mirrorBaseUrl)/\(Package.repoName)/\(Package.repoOwner)/\(Package.version)/\(swiftVersion)/\(name).xcframework.zip",
            checksum: checksum
        )
    }

    static func binaryTarget(name: String, checksum: String) -> Target {
#if swift (>=5.10)
        return .binaryTarget(name: name, checksum: checksum, swiftVersion: .v5_10)
#elseif swift (>=5.9.2)
        return .binaryTarget(name: name, checksum: checksum, swiftVersion: .v5_9_2)
#else
        return .binaryTarget(name: name, checksum: checksum, swiftVersion: .v5_9_0)
#endif
    }

}
