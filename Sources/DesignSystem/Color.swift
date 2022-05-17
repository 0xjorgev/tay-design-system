import SwiftUI

public extension Color {
    /// Namespace to prevent naming collisions with static accessors on
    /// SwiftUI's Color.
    ///
    /// Xcode's autocomplete allows for easy discovery of design system colors.
    /// At any call site that requires a color, type `Color.DesignSystem.<esc>`
    struct DesignSystem {
        public static let primary100 = Color(red: 0.9882352948188782, green: 0.6745098233222961, blue: 0.30980393290519714, opacity: 1)
        public static let primary70 = Color(red: 0.9960784316062927, green: 0.8392156958580017, blue: 0.6627451181411743, opacity: 1)
        public static let primary50 = Color(red: 0.9960784316062927, green: 0.9176470637321472, blue: 0.8274509906768799, opacity: 1)
        public static let primary10 = Color(red: 1, green: 0.9686274528503418, blue: 0.929411768913269, opacity: 1)
        public static let primary20 = Color(red: 0.9960784316062927, green: 0.9333333373069763, blue: 0.8627451062202454, opacity: 1)
        public static let secondary100 = Color(red: 0.14509804546833038, green: 0.4156862795352936, blue: 0.40392157435417175, opacity: 1)
        public static let secondary70 = Color(red: 0.572549045085907, green: 0.7058823704719543, blue: 0.7019608020782471, opacity: 1)
        public static let secondary50 = Color(red: 0.572549045085907, green: 0.7058823704719543, blue: 0.7019608020782471, opacity: 1)
        public static let secondary10 = Color(red: 0.9137254953384399, green: 0.9411764740943909, blue: 0.9411764740943909, opacity: 1)
        public static let secondary20 = Color(red: 0.8274509906768799, green: 0.8823529481887817, blue: 0.8823529481887817, opacity: 1)
        public static let neutral1 = Color(red: 0.1224999949336052, green: 0.15925002098083496, blue: 0.20416666567325592, opacity: 1)
        public static let neutral2 = Color(red: 0.4266666769981384, green: 0.46054908633232117, blue: 0.501960813999176, opacity: 1)
        public static let neutral3 = Color(red: 0.6458039283752441, green: 0.6710745096206665, blue: 0.7019608020782471, opacity: 1)
        public static let neutral4 = Color(red: 0.8543999791145325, green: 0.8704200387001038, blue: 0.8899999856948853, opacity: 1)
        public static let neutral5 = Color(red: 0.9214999675750732, green: 0.9343250393867493, blue: 0.949999988079071, opacity: 1)
        public static let neutral6 = Color(red: 0.9569411873817444, green: 0.9657294154167175, blue: 0.9764705896377563, opacity: 1)
        public static let neutral0 = Color(red: 1, green: 1, blue: 1, opacity: 1)
        public static let statesSuccessBg = Color(red: 0.8274509906768799, green: 0.929411768913269, blue: 0.8666666746139526, opacity: 1)
        public static let statesSuccess = Color(red: 0.13901036977767944, green: 0.6541666388511658, blue: 0.3393489122390747, opacity: 1)
        public static let statesError = Color(red: 0.8549019694328308, green: 0.0784313753247261, blue: 0.0784313753247261, opacity: 1)
        public static let statesErrorBg = Color(red: 0.9725490212440491, green: 0.8156862854957581, blue: 0.8156862854957581, opacity: 1)
    }
}

