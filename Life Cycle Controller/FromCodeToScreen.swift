//
//  FromCodeToScreen.swift
//  Life Cycle Controller
//
//  Created by home on 4/29/19.
//  Copyright © 2019 home. All rights reserved.
//

import UIKit

class FromCodeToScreen: NSObject {
    
    static let shared = FromCodeToScreen()
    private var arrayForData = [NSAttributedString]()
    
    private override init() {
        super.init()
    }
    
    
    func printMessage(textView: UITextView, viewController: UIViewController, function: String = #function) {
        
        let color = viewController.view.backgroundColor ?? .white
        let attStr = NSMutableAttributedString(string: viewController.title ?? "nil", attributes:  [.foregroundColor : color, .font: UIFont.systemFont(ofSize: 18)])
        attStr.append(NSAttributedString(string: " - " + function + "\n"))
        arrayForData.append(attStr)
        textView.attributedText = arrayForData.reduce(into: NSMutableAttributedString()) { $0.append($1) }
        textViewScrollToBottom(textView)
    
    }
}


// MARK: - Function for autoscrolling TextView
extension FromCodeToScreen {
    private func textViewScrollToBottom(_ textView: UITextView) {
        let bottom = NSMakeRange(textView.text.count-1, 1)
        textView.scrollRangeToVisible(bottom)
    }
}
