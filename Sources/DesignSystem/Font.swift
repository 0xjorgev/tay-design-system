import SwiftUI

public extension Font {
    /// Namespace to prevent naming collisions with static accessors on
    /// SwiftUI's Font.
    ///
    /// Xcode's autocomplete allows for easy discovery of design system fonts.
    /// At any call site that requires a font, type `Font.DesignSystem.<esc>`
    struct DesignSystem {
        public static let 24Regular = Font.custom("Montserrat-Regular", size: 24)
        public static let 24Bold = Font.custom("Montserrat-Bold", size: 24)
        public static let 24Link = Font.custom("Montserrat-Regular", size: 24)
        public static let 24Semibold = Font.custom("Montserrat-SemiBold", size: 24)
        public static let 25LinkSemibold = Font.custom("Montserrat-SemiBold", size: 24)
        public static let 16Regular = Font.custom("Montserrat-Regular", size: 16)
        public static let 16Bold = Font.custom("Montserrat-Bold", size: 16)
        public static let 16Link = Font.custom("Montserrat-Regular", size: 16)
        public static let 16Semibold = Font.custom("Montserrat-SemiBold", size: 16)
        public static let 16LinkSemibold = Font.custom("Montserrat-SemiBold", size: 16)
        public static let 14Regular = Font.custom("Montserrat-Regular", size: 14)
        public static let 14Bold = Font.custom("Montserrat-Bold", size: 14)
        public static let 14Link = Font.custom("Montserrat-Regular", size: 14)
        public static let 14Semibold = Font.custom("Montserrat-SemiBold", size: 14)
        public static let 14LinkSemibold = Font.custom("Montserrat-SemiBold", size: 14)
        public static let 12Regular = Font.custom("Montserrat-Regular", size: 12)
        public static let 12SemiBold = Font.custom("Montserrat-SemiBold", size: 12)
    }
}
