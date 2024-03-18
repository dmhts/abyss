// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to
// build this package.

import PackageDescription

// TODO: Consider type-safe products similar to the targets section.
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
        .binaryTarget(framework: .BraintreeCore),
        .binaryTarget(framework: .CardinalMobile),
        .binaryTarget(framework: .PPRiskMagnes),
        .binaryTarget(framework: .BraintreeAmericanExpress),
        .binaryTarget(framework: .BraintreeApplePay),
        .binaryTarget(framework: .BraintreeCard),
        .binaryTarget(framework: .BraintreeDataCollector),
        .binaryTarget(framework: .BraintreeLocalPayment),
        .binaryTarget(framework: .BraintreePayPal),
        .binaryTarget(framework: .BraintreePayPalNativeCheckout),
        .binaryTarget(framework: .PayPalCheckout),
        .binaryTarget(framework: .BraintreeSEPADirectDebit),
        .binaryTarget(framework: .BraintreeThreeDSecure),
        .binaryTarget(framework: .BraintreeVenmo),
    ]
)

extension Package {
    static let repoOwner = "braintree"
    static let repoName = "braintree_ios"
    static let version = "6.14.0"
    static let mirrorBaseUrl = "https://github.com/dmhts/binary-artifacts/raw/main"
}

// Note: The case naming convention is broken on purpose to simplify the target name transformation logic.
enum XCFramework: String {
    case BraintreeCore
    case CardinalMobile
    case PPRiskMagnes
    case BraintreeAmericanExpress
    case BraintreeApplePay
    case BraintreeCard
    case BraintreeDataCollector
    case BraintreeLocalPayment
    case BraintreePayPal
    case BraintreePayPalNativeCheckout
    case PayPalCheckout
    case BraintreeSEPADirectDebit
    case BraintreeThreeDSecure
    case BraintreeVenmo

    var moduleName: String { rawValue }

    func checksum(for swiftVersion: Target.SwiftVersion) -> String {
        switch swiftVersion {
        case .v5_10_0:
            switch self {
            case .BraintreeCore:
                return "7142b6855095dbf810ac8cae236543e622a96ef6275f66fe0cf895bfd00f08bb"
            case .CardinalMobile:
                return "9b52676dbeacc1e70610860e12a4bddda9b009a1c558f5d8155df953522469ae"
            case .PPRiskMagnes:
                return "8b4157cbf2c83e60d26f289edc32ea402f1c24ab3e7707a1f235e682b1d2fc75"
            case .BraintreeAmericanExpress:
                return "1f6a26aa64563116576cc778da917ed79ea1bab1fa12680d4bbafa10bc47270d"
            case .BraintreeApplePay:
                return "3892f98e05c50499abd5ea7e79bec5e37f6c4bc2457829dfb906d80b0fdae1ed"
            case .BraintreeCard:
                return "08b3a886fb2dd0f88a95da30b6b11e163f92da59195fe67bcf4e75418bcd9ccc"
            case .BraintreeDataCollector:
                return "efc50da33a2dcb3cb757abaada937ebb3b6464b5e52987b14e05b3d3b787c855"
            case .BraintreeLocalPayment:
                return "199a75cb0154ec73ed5555d2062ac8333bef7f4383e42fe6441c1b69094601ff"
            case .BraintreePayPal:
                return "ec85bdb51d8ee01aefeacfa5d8ad7c62cc533e2cbc3206b1b3512f9f9c85337f"
            case .BraintreePayPalNativeCheckout:
                return "818079f3df081cd21347a44cac79179a5796ea20c69464d60b226c71353f6681"
            case .PayPalCheckout:
                return "a3b73330770d2e258c442f5b61c59a2ebac8cbb89260689ac2342b3c5844901e"
            case .BraintreeSEPADirectDebit:
                return "a58d35d8b47c365edfbb9df7ee1837938e222789ce4273d6433b5ad7977361ab"
            case .BraintreeThreeDSecure:
                return "3cf6d5471ccee08ae24b87f4d52b6d98e8e9db8493cfcc07be7e2cb1462f557f"
            case .BraintreeVenmo:
                return "6252b515c8c377b1aeb68174758a4c6897fe615d5788ddfcb645c06a6ab588fa"
            }
        case .v5_9_2:
            switch self {
            case .BraintreeCore:
                return "b61fc0683295a5c9f00cb6da979c79516a07bdeeaf4de62950c229cabdbaf781"
            case .CardinalMobile:
                return "e6b9158bc08308edf667ee0dd3c65ea8b800aa11c3a55517550a3b21ecbe5837"
            case .PPRiskMagnes:
                return "83b925b8fc4f8c1a4b9cce56da7299430e607085dcf97824ec18ea10200a7959"
            case .BraintreeAmericanExpress:
                return "83b925b8fc4f8c1a4b9cce56da7299430e607085dcf97824ec18ea10200a7959"
            case .BraintreeApplePay:
                return "85fca5f94fde21f0c81ab6bf1813e0f402d293fd29de1f42e2552b531e3fd271"
            case .BraintreeCard:
                return "c6fca900444efb7eaef49c39acb5c6c7f306d1a5954b0f12a1a3991f1a284cf0"
            case .BraintreeDataCollector:
                return "14e35b8c4f3556ae9daa496bc213992ce77fb3a81a328be6924d71b93a8f5b5c"
            case .BraintreeLocalPayment:
                return "a9ce887b28176ed056a6ae1b590c6a533624b184a82fbb550167147f2bb97d5e"
            case .BraintreePayPal:
                return "b0cde60c9c48515ac308191023d0552c3f04929acd7ca2ae98422a05748aba02"
            case .BraintreePayPalNativeCheckout:
                return "d785338eff59f26197821db1a126020c9d91c4ca06864f9f0a2012070db0288b"
            case .PayPalCheckout:
                return "7c8df80eb88ae377fba34e8f4d9812ba4631043dd33754c6bd265064d2de9143"
            case .BraintreeSEPADirectDebit:
                return "7e5eeaa508f376a7775299dfdaba687db32687c9b026774c800c237f4be838a4"
            case .BraintreeThreeDSecure:
                return "8288ea534ef51848c44d21d13050bd74dfb7a63828b77dcd03a742135e2686f2"
            case .BraintreeVenmo:
                return "ae72ea7c922ccd991d3f67b6edbfc6632b6cd86a30a66eb7e0684067fac3bdc6"
            }
        case .v5_9_0:
            switch self {
            case .BraintreeCore:
                return ""
            case .CardinalMobile:
                return ""
            case .PPRiskMagnes:
                return ""
            case .BraintreeAmericanExpress:
                return ""
            case .BraintreeApplePay:
                return ""
            case .BraintreeCard:
                return ""
            case .BraintreeDataCollector:
                return ""
            case .BraintreeLocalPayment:
                return ""
            case .BraintreePayPal:
                return ""
            case .BraintreePayPalNativeCheckout:
                return ""
            case .PayPalCheckout:
                return ""
            case .BraintreeSEPADirectDebit:
                return ""
            case .BraintreeThreeDSecure:
                return ""
            case .BraintreeVenmo:
                return ""
            }
        }
    }
}

extension Target {

    enum SwiftVersion: String {
        case v5_10_0 // Xcode 15.3
        case v5_9_2 // Xcode 15.1/15.2
        case v5_9_0 // Xcode 15.0

        var rawValue: String {
            switch self {
            case .v5_10_0: return "5.10.0"
            case .v5_9_2: return "5.9.2"
            case .v5_9_0: return "5.9.0"
            }
        }
    }

    private static func binaryTarget(framework: XCFramework, swiftVersion: SwiftVersion) -> Target {
        return .binaryTarget(
            name: framework.moduleName,
            url: "\(Package.mirrorBaseUrl)/" +
                 "\(Package.repoOwner)/" +
                 "\(Package.repoName)/" +
                 "\(Package.version)/" +
                 "swift-\(swiftVersion.rawValue)/" +
                 "\(framework.moduleName).xcframework.zip",
            checksum: framework.checksum(for: swiftVersion)
        )
    }

    static func binaryTarget(framework: XCFramework) -> Target {
#if swift (>=5.10)
        return .binaryTarget(framework: framework, swiftVersion: .v5_10_0)
#elseif swift (>=5.9.2)
        return .binaryTarget(framework: framework, swiftVersion: .v5_9_2)
#else
        return .binaryTarget(framework: framework, swiftVersion: .v5_9_0)
#endif
    }

}
