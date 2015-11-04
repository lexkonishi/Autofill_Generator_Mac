//
//  ViewController.swift
//  Autofill Generator
//
//  Created by Lex Konishi on 10/26/15.
//  Copyright © 2015 Lex. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var lbl_path: NSTextField!
    @IBOutlet weak var pop_autofillType: NSPopUpButton!
    @IBOutlet weak var view_autofillType: NSView!
    @IBOutlet weak var view_talent: NSView!
    @IBOutlet weak var view_players: NSView!
    @IBOutlet weak var view_teams: NSView!
    
    @IBAction func btn_path(sender: NSButton) {
    }
    @IBAction func pop_autofillType(sender: NSPopUpButton) {
        let typeText = pop_autofillType.titleOfSelectedItem
        switch typeText {
            case let (typeText) where typeText == "PLAYERS":
                
                print("Players")
            case let (typeText) where typeText == "TEAMS":
                print("Teams")
            case let (typeText) where typeText == "TALENT":
                print("Talent")
            default:
                print("Nothing Selected")
        }
        
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

