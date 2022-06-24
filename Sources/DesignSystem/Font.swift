import SwiftUI

public extension Font {
    /// Namespace to prevent naming collisions with static accessors on
    /// SwiftUI's Font.
    ///
    /// Xcode's autocomplete allows for easy discovery of design system fonts.
    /// At any call site that requires a font, type `Font.DesignSystem.<esc>`
    struct DesignSystem {
        public static let Regular24 = Font.custom("Montserrat-Regular", size: 24)
        public static let Bold24 = Font.custom("Montserrat-Bold", size: 24)
        public static let Link24 = Font.custom("Montserrat-Regular", size: 24)
        public static let Semibold24 = Font.custom("Montserrat-SemiBold", size: 24)
        public static let LinkSemibold25 = Font.custom("Montserrat-SemiBold", size: 24)
        public static let Regular16 = Font.custom("Montserrat-Regular", size: 16)
        public static let Bold16 = Font.custom("Montserrat-Bold", size: 16)
        public static let Link16 = Font.custom("Montserrat-Regular", size: 16)
        public static let Semibold16 = Font.custom("Montserrat-SemiBold", size: 16)
        public static let LinkSemibold16 = Font.custom("Montserrat-SemiBold", size: 16)
        public static let Regular14 = Font.custom("Montserrat-Regular", size: 14)
        public static let Bold14 = Font.custom("Montserrat-Bold", size: 14)
        public static let Link14 = Font.custom("Montserrat-Regular", size: 14)
        public static let Semibold14 = Font.custom("Montserrat-SemiBold", size: 14)
        public static let LinkSemibold14 = Font.custom("Montserrat-SemiBold", size: 14)
        public static let Regular12 = Font.custom("Montserrat-Regular", size: 12)
        public static let SemiBold12 = Font.custom("Montserrat-SemiBold", size: 12)
    }
}
