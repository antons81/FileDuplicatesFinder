//
//  ViewController.swift
//  DublicateFinderTestAssigment
//
//  Created by Anton Stremovskiy on 1/8/19.
//  Copyright © 2019 áSoft. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var pathField: NSTextField!
    @IBOutlet weak var resultText: NSTextView!
    @IBOutlet weak var dataLabel: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.pathField.stringValue = self.currentUserPath()
    }
    
    private func currentUserPath() -> String {
        return HomeDirService.userHomeDirPath
    }
}

