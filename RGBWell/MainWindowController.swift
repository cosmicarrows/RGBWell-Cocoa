//
//  MainWindowController.swift
//  RGBWell
//
//  Created by Cosmic Arrows, LLC on 5/3/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    override var windowNibName: NSNib.Name? {
        return NSNib.Name("MainWindowController")
    }
    
    @IBAction func adjustRed(sender: NSSlider) {
        print("R slider's value is \(sender.floatValue)")
    }
    
    @IBAction func adjustGreen(sender: NSSlider) {
        print("G slider's value is \(sender.floatValue)")
    }
    
    @IBAction func adjustBlue(sender: NSSlider) {
        print("B slider's value is \(sender.floatValue)")
    }
    
}
