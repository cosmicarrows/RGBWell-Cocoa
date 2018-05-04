//
//  MainWindowController.swift
//  RGBWell
//
//  Created by Cosmic Arrows, LLC on 5/3/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    var r = 0.0
    var g = 0.0
    var b = 0.0
    let a = 1.0
    
    @IBOutlet weak var rSlider: NSSlider!
    @IBOutlet weak var gSlider: NSSlider!
    @IBOutlet weak var bSlider: NSSlider!
    
    @IBOutlet weak var colorWell: NSColorWell!
    
    override var windowNibName: NSNib.Name? {
        return NSNib.Name("MainWindowController")
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        rSlider.doubleValue = r
        gSlider.doubleValue = g
        bSlider.doubleValue = b
        updateColor()
    }
    
    @IBAction func adjustRed(sender: NSSlider) {
        print("R slider's value is \(sender.floatValue)")
        r = sender.doubleValue
        updateColor()
    }
    
    @IBAction func adjustGreen(sender: NSSlider) {
        print("G slider's value is \(sender.floatValue)")
        g = sender.doubleValue
        updateColor()
    }
    
    @IBAction func adjustBlue(sender: NSSlider) {
        print("B slider's value is \(sender.floatValue)")
        b = sender.doubleValue
        updateColor()
    }
    
    func updateColor() {
        let newColor = NSColor.init(calibratedRed: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(a))
        colorWell.color = newColor
        
        //the part that is a little confusing is the use of the updateColor() method being placed in the IBAction methods.....but wait so basically each time we have a target-action fire off, then it will call updateColor() which is an intitializer for an NSColor and it will update the ColorWell's color property which is of type NSColor!
        
        //we just initialized an object within a function and set a global property's variable which is a class so its a reference! NICE!  No additional memory was created during the making of this tutorial nor were there any animals harmed in the making of the color!
    }
    
}
