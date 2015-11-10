//
//  AppDelegate.swift
//  Autofill Generator MAC
//
//  Created by Lex Konishi on 11/4/15.
//  Copyright © 2015 Lex. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    /*@IBAction func mnu_selectDoc(sender: NSMenuItem) {
        let openPanel = NSOpenPanel()
        openPanel.title = "Choose a file"
        openPanel.allowedFileTypes = ["txt"]
        openPanel.allowsMultipleSelection = false
        openPanel.canChooseDirectories = false
        openPanel.beginWithCompletionHandler({(result:Int) in
            if(result == NSFileHandlingPanelOKButton)
            {
                let fileURL = openPanel.URL!
                print(fileURL)
                //do something with the selected file. Its url = fileURL
            }
        })
    }*/


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

