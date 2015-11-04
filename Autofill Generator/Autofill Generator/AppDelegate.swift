//
//  AppDelegate.swift
//  Autofill Generator
//
//  Created by Lex Konishi on 10/26/15.
//  Copyright © 2015 Lex. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var filePath = ""
    @IBAction func SelectAutofillFile(sender: NSMenuItem) {
        let openPanel = NSOpenPanel()
        openPanel.title = "PLEASE SELECT THE MASTER AUTOFILL DOCUMENT"
        openPanel.showsResizeIndicator = true
        openPanel.showsHiddenFiles = false
        openPanel.canChooseDirectories = false
        openPanel.allowsMultipleSelection = false
        openPanel.allowedFileTypes = ["txt"]
        
        openPanel.beginWithCompletionHandler(
            {(result:Int) in
                if(result == NSFileHandlingPanelOKButton)
                {
                    let fileURL = openPanel.URL!
                    print(fileURL)
                    self.filePath = fileURL.path!
                }
            }
        )
    }


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

