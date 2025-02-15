import Foundation
import SwiftUI

@available(iOS 13.0, *)
internal extension View {
    /// Hide or show the view based on a boolean value.
    ///
    /// Example for visibility:
    ///
    ///     Text("Label")
    ///         .isHidden(true)
    ///
    /// Example for complete removal:
    ///
    ///     Text("Label")
    ///         .isHidden(true, remove: true)
    ///
    /// - Parameters:
    ///   - hidden: Set to `false` to show the view. Set to `true` to hide the view.
    ///   - remove: Boolean value indicating whether or not to remove the view.
    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        if hidden {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
}

@available(iOS 15.0, *)
public extension View {
    func canHaveTooltip(identifier: String) -> some View {
        RInAppMessaging.notifyIfModuleNotInitialized()
        return modifier(TooltipViewModifier(identifier: identifier))
    }
}
