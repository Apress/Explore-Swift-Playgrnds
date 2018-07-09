import UIKit

public class GestureView: UIView {
  //var lastLocation:CGPoint = CGPoint(x:0, y:0)

  override public init(frame: CGRect) {
    super.init(frame: frame)

    //let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tap(sender:)))
    let panRecognizer = UIPanGestureRecognizer(target: self, action: #selector(pan(sender:)))
    //panRecognizer.require(toFail: leftSwipeRecogniser)
    //panRecognizer.require(toFail: rightSwipeRecogniser)
    addGestureRecognizer(panRecognizer)
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  public func pan(sender: UIPanGestureRecognizer) {
    print ("pan")
    self.superview?.bringSubview(toFront: self)
    let translation = sender.translation (in: self.superview)
    sender.view!.center = CGPoint(x: sender.view!.center.x + translation.x, y: sender.view!.center.y + translation.y)
    sender.setTranslation(CGPoint(x:0, y:0), in: self.superview)
    //print ("pan end")
  }
  
  /*public func tap(sender: UITapGestureRecognizer) {
    print ("tap")
    self.superview?.bringSubview(toFront: self)
  }

  public func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
    print ("touchesbegan")
    self.superview?.bringSubview(toFront: self)
    lastLocation = self.center
  }
  
  public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    print ("touchesended")

    self.superview?.bringSubview(toFront: self)
  }
  */
  /*public func detectPan (recognizer: UIPanGestureRecognizer) {
    print ("\ndetectPan")
    let translation  = recognizer.translation(in: self.superview!)
    self.center = CGPoint(x: lastLocation.x + translation.x, y:lastLocation.y + translation.y)
  }*/
}



