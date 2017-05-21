//
//  ViewController.swift
//  LazyWindow
//
//  Created by Youngnam Joun on 5/3/17.
//  Copyright © 2017 Youngnam Joun. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {
    
    @IBOutlet weak var webViews: WebView!
    
    static var targetURL: String!
    static let goUrl = Notification.Name("goURL")
 
    func changeView() {
        if (!ViewController.targetURL.isEmpty) {
            webViews.mainFrame.load(URLRequest(url: URL(string: ViewController.targetURL)!))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.

        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.changeView), name: ViewController.goUrl, object: nil)
        
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    override func keyDown(with event: NSEvent){
        if (event.keyCode == 53) {
            exit(0)
        }
    }
}

