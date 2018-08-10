//
//  ViewController.swift
//  Eluxon
//
//  Created by Eric Andersen on 8/7/18.
//  Copyright © 2018 Devslopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onOffLabel: UILabel!
    @IBOutlet weak var toggleButton: UIButton!
    
    var switchStatus: SwitchStatus = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func toggleButtonWasPressed(_ sender: Any) {
        switchStatus.toggle()
        if switchStatus == .off {
            toggleButton.setImage(UIImage(named: "offBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
            onOffLabel.text = "🌚 OFF 🌚"
            onOffLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        } else {
            toggleButton.setImage(UIImage(named: "onBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            onOffLabel.text = "🌝 ON 🌝"
            onOffLabel.textColor = #colorLiteral(red: 0.2901960784, green: 0.2901960784, blue: 0.2901960784, alpha: 1)
        }
    }
}

