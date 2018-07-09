 /*:
  # Interactive Playground
  * Data Entry
  */
 
import UIKit
import PlaygroundSupport

class JFTextFieldController : UIViewController, UITextFieldDelegate {
  var textField: UITextField!
  var label: UILabel!
  
  override func loadView() {
    
    let view = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
    view.backgroundColor = UIColor.cyan
    
    textField = UITextField (frame: CGRect (x: 5, y: 5, width: 100, height: 15))
    textField.backgroundColor = UIColor.white
    view.addSubview (textField)
    
    label = UILabel(frame: CGRect (x: 5, y: 25, width: 100, height: 15))
    label.backgroundColor = UIColor.brown
    label.textColor = UIColor.white
    view.addSubview(label)
    
    self.view = view
    
    textField.addTarget (self, action: #selector(updateText), for: UIControlEvents.editingChanged)
    
    updateText()
  }
  
  func updateText () {
    self.label.text = textField.text
  }
}

PlaygroundPage.current.liveView = JFTextFieldController()
