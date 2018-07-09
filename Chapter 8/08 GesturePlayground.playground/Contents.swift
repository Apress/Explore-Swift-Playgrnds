//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let mainFrame = CGRect (x:0, y:0, width:400, height:400)
let mainView = UIView (frame:mainFrame)
mainView.backgroundColor = UIColor.white

let frame = CGRect (x:0, y:0, width:100, height:100)
let gestureView = GestureView(frame: frame)
gestureView.backgroundColor = UIColor.green
mainView.addSubview(gestureView)

let frame2 = CGRect (x:0, y:0, width:50, height:50)
let gestureView2 = GestureView (frame: frame2)
gestureView2.backgroundColor = UIColor.blue
mainView.addSubview(gestureView2)

PlaygroundPage.current.liveView = mainView

