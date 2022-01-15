//
//  BUIImagesmacOSCode.swift
//  BUIImages
//
//  Created by Szabolcs Toth on 2022. 01. 15..
//  Copyright © 2022 BinaryRev. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//


#if !os(iOS)
import Cocoa

public class BUIImagesmacOSCode : NSObject {

    //// Cache

    private struct Cache {
        static let kMainColor1: NSColor = NSColor(red: 0.937, green: 0.498, blue: 0.29, alpha: 1)
        static let kMainColor3: NSColor = NSColor(red: 0.988, green: 0.898, blue: 0.859, alpha: 1)
        static let kMainColor2: NSColor = NSColor(red: 0.969, green: 0.718, blue: 0.651, alpha: 1)
    }

    //// Colors

    @objc dynamic public class var kMainColor1: NSColor { return Cache.kMainColor1 }
    @objc dynamic public class var kMainColor3: NSColor { return Cache.kMainColor3 }
    @objc dynamic public class var kMainColor2: NSColor { return Cache.kMainColor2 }

    //// Drawing Methods

    @objc dynamic public class func drawBUIUserProfileImage(frame targetFrame: NSRect = NSRect(x: 0, y: 0, width: 26, height: 26), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = NSGraphicsContext.current!.cgContext
        
        //// Resize to Target Frame
        NSGraphicsContext.saveGraphicsState()
        let resizedFrame: NSRect = resizing.apply(rect: NSRect(x: 0, y: 0, width: 26, height: 26), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 26, y: resizedFrame.height / 26)


        //// user-circle
        //// Oval Drawing
        let ovalPath = NSBezierPath(ovalIn: NSRect(x: 3, y: 3, width: 20, height: 20))
        BUIImagesmacOSCode.kMainColor3.setFill()
        ovalPath.fill()
        BUIImagesmacOSCode.kMainColor1.setStroke()
        ovalPath.lineWidth = 1
        ovalPath.stroke()


        //// Bezier Drawing
        let bezierPath = NSBezierPath()
        bezierPath.move(to: NSPoint(x: 20.33, y: 6.21))
        bezierPath.curve(to: NSPoint(x: 13, y: 11), controlPoint1: NSPoint(x: 19.09, y: 9.03), controlPoint2: NSPoint(x: 16.28, y: 11))
        bezierPath.curve(to: NSPoint(x: 5.67, y: 6.21), controlPoint1: NSPoint(x: 9.72, y: 11), controlPoint2: NSPoint(x: 6.91, y: 9.03))
        bezierPath.curve(to: NSPoint(x: 13, y: 3), controlPoint1: NSPoint(x: 7.5, y: 4.24), controlPoint2: NSPoint(x: 10.1, y: 3))
        bezierPath.curve(to: NSPoint(x: 20.33, y: 6.21), controlPoint1: NSPoint(x: 15.9, y: 3), controlPoint2: NSPoint(x: 18.5, y: 4.24))
        bezierPath.close()
        BUIImagesmacOSCode.kMainColor2.setFill()
        bezierPath.fill()
        BUIImagesmacOSCode.kMainColor1.setStroke()
        bezierPath.lineWidth = 1
        bezierPath.lineCapStyle = .round
        bezierPath.stroke()


        //// Oval 2 Drawing
        let oval2Path = NSBezierPath(ovalIn: NSRect(x: 9, y: 11, width: 8, height: 8))
        BUIImagesmacOSCode.kMainColor2.setFill()
        oval2Path.fill()
        BUIImagesmacOSCode.kMainColor1.setStroke()
        oval2Path.lineWidth = 1
        oval2Path.stroke()
        
        NSGraphicsContext.restoreGraphicsState()

    }




    @objc(BUIImagesmacOSCodeResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: NSRect, target: NSRect) -> NSRect {
            if rect == target || target == NSRect.zero {
                return rect
            }

            var scales = NSSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
#endif