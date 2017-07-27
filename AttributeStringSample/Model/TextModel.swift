import UIKit
import Foundation

class TextModel: NSObject {
    var attributeString = NSMutableAttributedString()

    func setText (text: String){
        attributeString = NSMutableAttributedString(string: text)

        let textColor = UIColor(red: 0.125, green: 0.7, blue: 0.9, alpha: 1.0)
        let font = UIFont(name: "HiraKakuProN-W3", size: 15)
        let style = NSParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
        style.lineBreakMode = .byTruncatingTail
        style.alignment = NSTextAlignment.center

        attributeString.addAttributes([
            NSForegroundColorAttributeName: textColor,
            NSStrokeWidthAttributeName: -1,
            NSStrokeColorAttributeName: UIColor.black,
            NSFontAttributeName: font,
            NSParagraphStyleAttributeName: style
        ], range: NSMakeRange(0, attributeString.length))
    }
}


