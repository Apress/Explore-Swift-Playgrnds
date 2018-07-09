/*: 
 # BasicGesture
 * Experimenting with gestures in a playground
 */

import UIKit
import PlaygroundSupport

public class GestureView: UIView {
  
  override public init (frame: CGRect) {
    super.init(frame: frame)
    
    let panRecognizer = UIPanGestureRecognizer (target: self, action: #selector(pan(sender:)))
    addGestureRecognizer(panRecognizer)
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  public func pan (sender: UIPanGestureRecognizer) {
    self.superview?.bringSubview (toFront: self)
    let translation = sender.translation (in: self.superview)
    sender.view!.center = CGPoint (
      x: sender.view!.center.x + translation.x,
      y: sender.view!.center.y + translation.y)
    sender.setTranslation(CGPoint (x:0, y:0), in: self.superview)
  }
}

let mainFrame = CGRect (x:0, y:0, width: 200, height: 200)
let mainView = UIView (frame: mainFrame)
mainView.backgroundColor = UIColor.white

let innerFrame = CGRect (x:5, y:5, width: 50, height: 50)
let innerView = GestureView (frame: innerFrame)
innerView.backgroundColor = UIColor.blue
mainView.addSubview(innerView)

let innerFrame2 = CGRect (x:20, y:20, width: 50, height: 50)
let innerView2 = GestureView (frame: innerFrame2)
innerView2.backgroundColor = UIColor.green
mainView.addSubview(innerView2)

PlaygroundPage.current.liveView = mainView
