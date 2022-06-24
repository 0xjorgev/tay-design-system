import Foundation
import SwiftUI

public extension Image {
    /// Namespace to prevent naming collisions with static accessors on
    /// SwiftUI's Image.
    ///
    /// Xcode's autocomplete allows for easy discovery of design system images.
    /// At any call site that requires an image, type `Image.DesignSystem.<esc>`
    struct DesignSystem {
        public static let illustration0 = loadImageFromBundle(name: "illustration0")
        public static let illustration1 = loadImageFromBundle(name: "illustration1")
        public static let illustration2 = loadImageFromBundle(name: "illustration2")
        public static let illustration3 = loadImageFromBundle(name: "illustration3")
        public static let illustration4 = loadImageFromBundle(name: "illustration4")
        public static let iconsHomeBlack24Dp1 = loadImageFromBundle(name: "iconsHomeBlack24Dp1")
        public static let iconsAddReactionBlack24Dp2 = loadImageFromBundle(name: "iconsAddReactionBlack24Dp2")
        public static let iconsChatBubbleBlack24Dp = loadImageFromBundle(name: "iconsChatBubbleBlack24Dp")
        public static let iconsChatBubbleOutlineBlack24Dp = loadImageFromBundle(name: "iconsChatBubbleOutlineBlack24Dp")
        public static let iconsPlayArrowBlack24Dp11 = loadImageFromBundle(name: "iconsPlayArrowBlack24Dp11")
        public static let iconsHomeBlack24Dp = loadImageFromBundle(name: "iconsHomeBlack24Dp")
        public static let iconsAlarmAddBlack24Dp1 = loadImageFromBundle(name: "iconsAlarmAddBlack24Dp1")
        public static let iconsAlarmAddBlack24DpFilled = loadImageFromBundle(name: "iconsAlarmAddBlack24DpFilled")
        public static let iconsHelpOutlineBlack24Dp11 = loadImageFromBundle(name: "iconsHelpOutlineBlack24Dp11")
        public static let iconsNotification24Px = loadImageFromBundle(name: "iconsNotification24Px")
        public static let iconsSettingsBlack24Px = loadImageFromBundle(name: "iconsSettingsBlack24Px")
        public static let iconsAlarmBlack24Px = loadImageFromBundle(name: "iconsAlarmBlack24Px")
        public static let iconsMoreVertBlack24Px = loadImageFromBundle(name: "iconsMoreVertBlack24Px")
        public static let iconsCalendarTodayBlack24Px = loadImageFromBundle(name: "iconsCalendarTodayBlack24Px")
        public static let iconsEditBlack24Px = loadImageFromBundle(name: "iconsEditBlack24Px")
        public static let iconsChevronRightBlack24Px = loadImageFromBundle(name: "iconsChevronRightBlack24Px")
        public static let iconsCloseBlack24Dp1 = loadImageFromBundle(name: "iconsCloseBlack24Dp1")
        public static let iconsIosShareBlack24Dp1 = loadImageFromBundle(name: "iconsIosShareBlack24Dp1")
        public static let iconsSearchBlack24Dp1 = loadImageFromBundle(name: "iconsSearchBlack24Dp1")
        public static let iconsArrowBackBlack24Dp1 = loadImageFromBundle(name: "iconsArrowBackBlack24Dp1")
        public static let iconsFavoriteBlack24Dp = loadImageFromBundle(name: "iconsFavoriteBlack24Dp")
        public static let iconsFavoriteBorderBlack24Dp = loadImageFromBundle(name: "iconsFavoriteBorderBlack24Dp")
        public static let iconsInfoBlack24Dp1 = loadImageFromBundle(name: "iconsInfoBlack24Dp1")
        public static let iconsPauseBlack24Dp = loadImageFromBundle(name: "iconsPauseBlack24Dp")
        public static let iconsPlayArrowBlack24Dp = loadImageFromBundle(name: "iconsPlayArrowBlack24Dp")
        public static let iconsListBlack24Dp = loadImageFromBundle(name: "iconsListBlack24Dp")
        public static let iconsStarBlack24Dp = loadImageFromBundle(name: "iconsStarBlack24Dp")
        public static let iconsDeleteBlack24Dp1 = loadImageFromBundle(name: "iconsDeleteBlack24Dp1")
        public static let iconsMicBlack24Dp1 = loadImageFromBundle(name: "iconsMicBlack24Dp1")
        public static let iconsKeyboardVoiceBlack24Dp1 = loadImageFromBundle(name: "iconsKeyboardVoiceBlack24Dp1")
        public static let iconsDoneBlack24Dp1 = loadImageFromBundle(name: "iconsDoneBlack24Dp1")
        public static let iconsSend = loadImageFromBundle(name: "iconsSend")
        public static let iconsStarOutlineBlack24Dp = loadImageFromBundle(name: "iconsStarOutlineBlack24Dp")
        public static let iconsAddBlack24Dp = loadImageFromBundle(name: "iconsAddBlack24Dp")
        public static let iconsAddCircleOutlineBlack24Dp = loadImageFromBundle(name: "iconsAddCircleOutlineBlack24Dp")
        public static let iconsPersonBlack24Dp = loadImageFromBundle(name: "iconsPersonBlack24Dp")
        public static let iconsPersonOutlineBlack24Dp = loadImageFromBundle(name: "iconsPersonOutlineBlack24Dp")
        public static let spePlaceholder = loadImageFromBundle(name: "spePlaceholder")
    }
}


/// Loads an image from the DesignSystem module. The image is assumed to be in
/// pdf format.
///
/// - Parameter name: The name of the image to load
/// - Returns: If the named image is found in the DesignSystem module, it is
///            returned. Otherwise, a questionmark image is returned as a
///            placeholder.
private func loadImageFromBundle(name: String) -> Image {
    guard let pdfURL = Bundle.module.url(forResource: name, withExtension: "pdf"),
          let pdfImage = pdfImage(fromURL: pdfURL)
    else { return Image(systemName: "questionmark.square") }
    return Image(uiImage: pdfImage).renderingMode(.original)
}

/// Given a URL to a pdf on disk, returns a rendered UIImage of the pdf.
///
/// - Parameter fromURL: The URL that the pdf resides at
/// - Returns: A UIImage representation of the PDF
///
/// [Implementation source](https://www.hackingwithswift.com/example-code/core-graphics/how-to-render-a-pdf-to-an-image)
private func pdfImage(fromURL url: URL) -> UIImage? {
    guard let document = CGPDFDocument(url as CFURL) else { return nil }
    guard let page = document.page(at: 1) else { return nil }

    let pageRect = page.getBoxRect(.mediaBox)
    let renderer = UIGraphicsImageRenderer(size: pageRect.size)
    let image = renderer.image { context in
        context.cgContext.translateBy(x: 0.0, y: pageRect.size.height)
        context.cgContext.scaleBy(x: 1.0, y: -1.0)
        context.cgContext.drawPDFPage(page)
    }

    return image
}
