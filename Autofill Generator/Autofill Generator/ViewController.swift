//
//  ViewController.swift
//  Autofill Generator
//
//  Created by Lex Konishi on 10/26/15.
//  Copyright © 2015 Lex. All rights reserved.
//

import Cocoa

class PlayerViewController: NSViewController {
    @IBOutlet weak var txt_Players_Code: NSTextField!
    @IBOutlet weak var pop_Players_Color: NSPopUpButton!
    @IBOutlet weak var txt_Players_Jersey: NSTextField!
    @IBOutlet weak var txt_Players_First: NSTextField!
    @IBOutlet weak var txt_Players_Last: NSTextField!
    @IBOutlet weak var txt_Players_Full: NSTextField!
    @IBOutlet weak var txt_Players_Height: NSTextField!
    @IBOutlet weak var txt_Players_Weigth: NSTextField!
    @IBOutlet weak var txt_Players_Position: NSTextField!
    @IBOutlet weak var pop_Players_Class: NSPopUpButton!
    @IBOutlet weak var txt_Players_Hometown: NSTextField!
    
    @IBAction func txt_Players_Full(sender: NSTextField) {
        let fullname = "\(txt_Players_First.stringValue) \(txt_Players_Last.stringValue)"
        txt_Players_Full.stringValue = fullname
    }
    @IBAction func txt_Players_FirstAct(sender: NSTextField) {
        let fullname = "\(txt_Players_First.stringValue) \(txt_Players_Last.stringValue)"
        txt_Players_Full.stringValue = fullname
    }
    @IBAction func txt_Players_LastAct(sender: NSTextField) {
        let fullname = "\(txt_Players_First.stringValue) \(txt_Players_Last.stringValue)"
        txt_Players_Full.stringValue = fullname
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}


class TeamViewController: NSViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }
}

class TalentViewController: NSViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }
}