//
//  ViewController.swift
//  Autofill Generator MAC
//
//  Created by Lex Konishi on 11/4/15.
//  Copyright © 2015 Lex. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    //Player View
    @IBOutlet weak var pop_Players_Sport: NSPopUpButton!
    @IBOutlet weak var pop_Players_Color: NSPopUpButton!
    @IBOutlet weak var pop_Players_Class: NSPopUpButton!
    @IBOutlet weak var txt_Players_Code: NSTextField!
    @IBOutlet weak var txt_Players_Number: NSTextField!
    @IBOutlet weak var txt_Players_First: NSTextField!
    @IBOutlet weak var txt_Players_Last: NSTextField!
    @IBOutlet weak var txt_Players_Full: NSTextField!
    @IBOutlet weak var txt_Players_Height: NSTextField!
    @IBOutlet weak var txt_Players_Weight: NSTextField!
    @IBOutlet weak var txt_Players_Position: NSTextField!
    @IBOutlet weak var txt_Players_Hometown: NSTextField!
    
    
    @IBAction func act_Players_First(sender: NSTextField) {
        let fullName = "\(txt_Players_First.stringValue) \(txt_Players_Last.stringValue)"
        txt_Players_Full.stringValue = fullName
    }
    @IBAction func act_Players_Last(sender: NSTextField) {
        let fullName = "\(txt_Players_First.stringValue) \(txt_Players_Last.stringValue)"
        txt_Players_Full.stringValue = fullName
    }
    @IBAction func act_Players_Full(sender: NSTextField) {
        let fullName = "\(txt_Players_First.stringValue) \(txt_Players_Last.stringValue)"
        txt_Players_Full.stringValue = fullName
    }
    @IBAction func btn_Players_Generate(sender: NSButtonCell) {
        let path = lbl_docPath.stringValue
        let newText = "PLAYERS/\(pop_Players_Sport.selectedItem!.title.uppercaseString)/\(txt_Players_Code.stringValue.uppercaseString)/{txt:\(txt_Players_Full.stringValue.uppercaseString)}{txt:\(txt_Players_First.stringValue.uppercaseString){txt:\(txt_Players_Last.stringValue.uppercaseString)}{txt:\(txt_Players_Number.stringValue.uppercaseString)}{txt:\(txt_Players_Height.stringValue.uppercaseString)}{txt:\(txt_Players_Weight.stringValue.uppercaseString)}{txt:\(txt_Players_Position.stringValue.uppercaseString)}{txt:\(pop_Players_Class.selectedItem!.title.uppercaseString)}{txt:\(txt_Players_Hometown.stringValue.uppercaseString)}{img:\(txt_Players_Code.stringValue.uppercaseString)_L}{img:\(txt_Players_Code.stringValue.uppercaseString)_\(txt_Players_Last.stringValue.uppercaseString)_\(txt_Talent_First.stringValue.uppercaseString)}{img:\(pop_Players_Color.selectedItem!.title.uppercaseString)}"
        var text = ""
        
        if path != "NO DOCUMENT SELECTED"{
            do {
                let oldText = try NSString(contentsOfFile: path, encoding: NSUTF8StringEncoding)
                text += oldText as String
                text += "\n"
                
            }
            catch let error as NSError {
                print("error reading url \(path)")
                print(error.localizedDescription)
            }
            
            do {
                text += newText as String
                try text.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding)
            }
            catch let error as NSError {
                print("error writing to url \(path)")
                print(error.localizedDescription)
            }
        }
        else {
            let alert = NSAlert()
            alert.messageText = "PLEASE SELECT AN APPROPRIATE TEXT FILE"
            alert.addButtonWithTitle("OK")
            alert.runModal()
        }
    }

    
    
    //Team View
    @IBOutlet weak var pop_Team_Color: NSPopUpButton!
    @IBOutlet weak var txt_Team_Code: NSTextFieldCell!
    @IBOutlet weak var txt_Team_Name: NSTextFieldCell!
    @IBOutlet weak var txt_Team_Mascot: NSTextFieldCell!
    @IBOutlet weak var txt_Team_CityState: NSTextFieldCell!
    @IBOutlet weak var txt_Team_Venue: NSTextFieldCell!
    
    @IBAction func btn_Team_Generate(sender: NSButtonCell) {
    }
    
    //Talent View
    @IBOutlet weak var txt_Talent_First: NSTextFieldCell!
    @IBOutlet weak var txt_Talent_Last: NSTextFieldCell!
    @IBOutlet weak var txt_Talent_Full: NSTextFieldCell!
    @IBOutlet weak var txt_Talent_Twitter: NSTextFieldCell!
    @IBOutlet weak var pop_Talent_Title: NSPopUpButton!
    
    @IBAction func act_Talent_First(sender: NSTextFieldCell) {
        let fullName = "\(txt_Talent_First.stringValue) \(txt_Talent_Last.stringValue)"
        txt_Talent_Full.stringValue = fullName
    }
    @IBAction func act_Talent_Last(sender: NSTextFieldCell) {
        let fullName = "\(txt_Talent_First.stringValue) \(txt_Talent_Last.stringValue)"
        txt_Talent_Full.stringValue = fullName
    }
    @IBAction func act_Talent_Full(sender: NSTextFieldCell) {
        let fullName = "\(txt_Talent_First.stringValue) \(txt_Talent_Last.stringValue)"
        txt_Talent_Full.stringValue = fullName
    }
    @IBAction func btn_Talent_Generate(sender: NSButtonCell) {
    }

    //Menu Items
    @IBOutlet weak var lbl_docPath: NSTextField!
    weak var filePath: NSURL!
    @IBAction func mnu_selectDoc(sender: NSMenuItem) {
        let openPanel = NSOpenPanel()
        openPanel.title = "Choose a file"
        openPanel.allowedFileTypes = ["txt"]
        openPanel.allowsMultipleSelection = false
        openPanel.canChooseDirectories = false
        openPanel.beginWithCompletionHandler({(result:Int) in
            if(result == NSFileHandlingPanelOKButton)
            {
                let fileURL = openPanel.URL!
                self.filePath = fileURL
                self.lbl_docPath.stringValue = fileURL.relativePath!
            }
        })
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        pop_Players_Sport.removeAllItems()
        pop_Players_Sport.addItemsWithTitles(arraySport)
        pop_Players_Color.removeAllItems()
        pop_Players_Color.addItemsWithTitles(arrayColors)
        pop_Players_Class.removeAllItems()
        pop_Players_Class.addItemsWithTitles(arrayClass)
        pop_Team_Color.removeAllItems()
        pop_Team_Color.addItemsWithTitles(arrayColors)
        pop_Talent_Title.removeAllItems()
        pop_Talent_Title.addItemsWithTitles(arrayTitle)
        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    var arrayColors = [
        "BLACK",
        "NOT BYU BLUE",
        "GRAY",
        "GREEN",
        "NAVY",
        "ORANGE",
        "PURPLE",
        "RED",
        "YELLOW"
    ]
    
    var arrayClass = [
        "FRESHMAN",
        "SOPHOMORE",
        "JUNIOR",
        "SENIOR"
    ]
    
    var arrayTitle = [
        "HOST",
        "ANALYST",
        "ANNOUNCER",
        "REPORTER"
    ]
    
    var arraySport = [
        "WSOC",
        "WVB",
        "FTB",
        "WBB",
        "MBB",
        "MVB",
        "BASE",
        "SOFT",
        "GYM"
    ]

}

