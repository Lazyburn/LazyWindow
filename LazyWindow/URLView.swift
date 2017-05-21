//
//  URLView.swift
//  LazyWindow
//
//  Created by Youngnam Joun on 5/21/17.
//  Copyright © 2017 Youngnam Joun. All rights reserved.
//

import Cocoa
import WebKit

class URLView: NSViewController {
    
    @IBOutlet weak var goButton: NSButton!
    @IBOutlet weak var escButton: NSButton!
    @IBOutlet weak var urlText: NSTextField!
    
    func gotoURL() {
        ViewController.targetURL = urlText.stringValue;
        NotificationCenter.default.post(Notification(name: ViewController.goUrl))
        self.view.window?.close()
    }
    
    func closeURL() {
        self.view.window?.close()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        goButton.target = self
        goButton.action = #selector(URLView.gotoURL)
        escButton.target = self
        escButton.action = #selector(URLView.closeURL)
        
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
}

