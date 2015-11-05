//
//  ViewController.swift
//  Autofill Generator
//
//  Created by Lex Konishi on 11/4/15.
//  Copyright (c) 2015 Lex. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var pop_Players_Color: NSPopUpButton!
    @IBOutlet weak var pop_Players_Class: NSPopUpButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override var representedObject: AnyObject? {
        didSet {
        pop_Players_Color.removeAllItems()
        pop_Players_Class.removeAllItems()
        pop_Players_Color.addItemsWithTitles(arrayColors)
        pop_Players_Class.addItemsWithTitles(arrayClass)
        }
    }
    
    
    var arrayColors = [
        "BLACK",
        "NOT BYU BLUE",
        "GRAY",
        "GREEN",
        "NAVY",
        "ORANGE",
        "PURPLUE",
        "RED",
        "YELLOW"
    ]
    var arrayClass = [
        "Freshman",
        "Sophomore",
        "Junior",
        "Senior"
    ]
    var arrayTitle = [
        "Host",
        "Analyst",
        "Announcer",
        "Reporter"
    ]


}

