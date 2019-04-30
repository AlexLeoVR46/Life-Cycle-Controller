//
//  FirstViewController.swift
//  Life Cycle Controller
//
//  Created by home on 4/29/19.
//  Copyright © 2019 home. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var firstTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FromCodeToScreen.shared.printMessage(textView: firstTextView, viewController: self)
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        FromCodeToScreen.shared.printMessage(textView: firstTextView, viewController: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        FromCodeToScreen.shared.printMessage(textView: firstTextView, viewController: self)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        FromCodeToScreen.shared.printMessage(textView: firstTextView, viewController: self)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        FromCodeToScreen.shared.printMessage(textView: firstTextView, viewController: self)
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        FromCodeToScreen.shared.printMessage(textView: firstTextView, viewController: self)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        FromCodeToScreen.shared.printMessage(textView: firstTextView, viewController: self)
    }
}
