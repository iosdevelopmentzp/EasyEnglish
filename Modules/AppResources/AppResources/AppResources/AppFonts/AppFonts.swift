// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
    import AppKit.NSFont
    public typealias Font = NSFont
#elseif os(iOS) || os(tvOS) || os(watchOS)
    import UIKit.UIFont
    public typealias Font = UIFont
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Fonts

// swiftlint:disable identifier_name line_length type_body_length
public enum AppFonts {
    public enum GlacialIndifference {
        public static let bold = FontConvertible(name: "GlacialIndifference-Bold", family: "Glacial Indifference", path: "GlacialIndifference-Bold.ttf")
        public static let regular = FontConvertible(name: "GlacialIndifference-Regular", family: "Glacial Indifference", path: "GlacialIndifference-Regular.ttf")
        public static let all: [FontConvertible] = [bold, regular]
    }

    public static let allCustomFonts: [FontConvertible] = [GlacialIndifference.all].flatMap { $0 }
    public static func registerAllCustomFonts() {
        allCustomFonts.forEach { $0.register() }
    }
}

// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

public struct FontConvertible {
    public let name: String
    public let family: String
    public let path: String

    public func font(size: CGFloat) -> Font {
        guard let font = Font(font: self, size: size) else {
            fatalError("Unabble to initialize font '\(name)' (\(family))")
        }
        return font
    }

    public func register() {
        // swiftlint:disable:next conditional_returns_on_newline
        guard let url = url else { return }
        CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
    }

    fileprivate var url: URL? {
        let bundle = BundleToken.bundle
        return bundle.url(forResource: path, withExtension: nil)
    }
}

public extension Font {
    convenience init?(font: FontConvertible, size: CGFloat) {
        #if os(iOS) || os(tvOS) || os(watchOS)
            if !UIFont.fontNames(forFamilyName: font.family).contains(font.name) {
                font.register()
            }
        #elseif os(OSX)
            if let url = font.url, CTFontManagerGetScopeForURL(url as CFURL) == .none {
                font.register()
            }
        #endif

        self.init(name: font.name, size: size)
    }
}

// swiftlint:disable convenience_type
private final class BundleToken {
    static let bundle: Bundle = {
        Bundle(for: BundleToken.self)
    }()
}

// swiftlint:enable convenience_type
