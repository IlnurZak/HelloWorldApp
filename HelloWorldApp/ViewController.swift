//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Ильнур Закирьянов on 02.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden = true
        greetingButton.configuration = setupButton(with: "Show Greeting")
       // greetingButton.layer.cornerRadius = 10
    }

//    @IBAction func greetingButtonPress() {
//        greetingLabel.isHidden.toggle()
//        greetingButton.setTitle(
//            greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
//            for: .normal
//        )
//    }
    
    @IBAction func greetingButtonPress() {
        greetingLabel.isHidden.toggle()
        greetingButton.configuration = setupButton(
            with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting"
        )
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
}

