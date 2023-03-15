
import Foundation
import UIKit
extension UIView {

    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }

    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }

    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}


@IBDesignable extension UIView {
    /* The color of the shadow. Defaults to opaque black. Colors created
     * from patterns are currently NOT supported. Animatable. */
    @IBInspectable var shadowColor: UIColor? {
        set {
            layer.shadowColor = newValue!.cgColor
        }
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor:color)
            }
            else {
                return nil
            }
        }
    }

    /* The opacity of the shadow. Defaults to 0. Specifying a value outside the
     * [0,1] range will give undefined results. Animatable. */
    @IBInspectable var shadowOpacity: Float {
        set {
            layer.shadowOpacity = newValue
        }
        get {
            return layer.shadowOpacity
        }
    }

    /* The shadow offset. Defaults to (0, -3). Animatable. */
    @IBInspectable var shadowOffset: CGPoint {
        set {
            layer.shadowOffset = CGSize(width: newValue.x, height: newValue.y)
        }
        get {
            return CGPoint(x: layer.shadowOffset.width, y:layer.shadowOffset.height)
        }
    }

    /* The blur radius used to create the shadow. Defaults to 3. Animatable. */
    @IBInspectable var shadowRadius: CGFloat {
        set {
            layer.shadowRadius = newValue
        }
        get {
            return layer.shadowRadius
        }
    }
    /// Flip view horizontally.
    func flipX() {
        transform = CGAffineTransform(scaleX: -transform.a, y: transform.d)
    }

    /// Flip view vertically.
    func flipY() {
        transform = CGAffineTransform(scaleX: transform.a, y: -transform.d)
    }
}
extension UIImageView {
    func setRounded() {
        self.layer.cornerRadius = (self.frame.width / 2) //instead of let radius = CGRectGetWidth(self.frame) / 2
        self.layer.masksToBounds = true
    }
}

extension UIView {

    func cornerRound(radius:Int = 10, clipBounds:Bool = true){
        self.layer.cornerRadius = CGFloat(radius)
        self.clipsToBounds = clipBounds
    }

    func setShadow(){
        self.layer.shadowColor = UIColor.black.withAlphaComponent(0.6).cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 1.0
    }
  //  boarderColor
    func setBoarderColor(){
        self.layer.borderColor = #colorLiteral(red: 0.4274509804, green: 0.1607843137, blue: 0.5647058824, alpha: 1)
        self.layer.borderWidth = 0.8
    }

}
extension UIView {
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor(red: 208 / 255.0, green: 208 / 255.0, blue: 208 / 255.0, alpha: 1.0).cgColor
        layer.shadowOpacity = 1.63
        layer.shadowOffset = .zero
        layer.shadowRadius = 3.26
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}



