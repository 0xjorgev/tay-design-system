import SwiftUI

public extension Font {
    /// Namespace to prevent naming collisions with static accessors on
    /// SwiftUI's Font.
    ///
    /// Xcode's autocomplete allows for easy discovery of design system fonts.
    /// At any call site that requires a font, type `Font.DesignSystem.<esc>`
    struct DesignSystem {
        public static let Montserrat64Bold = Font.custom("Montserrat-Bold", size: 64)
        public static let Montserrat24Regular = Font.custom("Montserrat-Regular", size: 24)
        public static let Montserrat24Bold = Font.custom("Montserrat-Bold", size: 24)
        public static let Montserrat24Link = Font.custom("Montserrat-Regular", size: 24)
        public static let Montserrat24Semibold = Font.custom("Montserrat-SemiBold", size: 24)
        public static let Montserrat25LinkSemibold = Font.custom("Montserrat-SemiBold", size: 24)
        public static let Montserrat16Regular = Font.custom("Montserrat-Regular", size: 16)
        public static let Montserrat16Bold = Font.custom("Montserrat-Bold", size: 16)
        public static let Montserrat16Link = Font.custom("Montserrat-Regular", size: 16)
        public static let Montserrat16Semibold = Font.custom("Montserrat-SemiBold", size: 16)
        public static let Montserrat16LinkSemibold = Font.custom("Montserrat-SemiBold", size: 16)
        public static let Montserrat14Regular = Font.custom("Montserrat-Regular", size: 14)
        public static let Montserrat14Bold = Font.custom("Montserrat-Bold", size: 14)
        public static let Montserrat14Link = Font.custom("Montserrat-Regular", size: 14)
        public static let Montserrat14Semibold = Font.custom("Montserrat-SemiBold", size: 14)
        public static let Montserrat14LinkSemibold = Font.custom("Montserrat-SemiBold", size: 14)
        public static let Montserrat12Regular = Font.custom("Montserrat-Regular", size: 12)
        public static let Montserrat12SemiBold = Font.custom("Montserrat-SemiBold", size: 12)
    }
}
