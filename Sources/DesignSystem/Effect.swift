import SwiftUI

public struct Effect {
    /// Namespace to prevent naming collisions.
    ///
    /// Xcode's autocomplete allows for easy discovery of design system effects.
    /// At any call site that requires an effect, type `Effect.DesignSystem.<esc>`
    public struct DesignSystem {

        public struct MediumDrop: ViewModifier {
            public func body(content: Content) -> some View {
                return content
                    .shadow(color: Color(red:0.44583332538604736, green: 0.2551301121711731, blue: 0.033437490463256836, opacity: 0.07000000029802322), radius: 20, x: 8, y:8)
            }
            public init() {}
        }

    }
}

public extension View {
    func mediumDrop() -> some View {modifier(Effect.DesignSystem.MediumDrop())}
}