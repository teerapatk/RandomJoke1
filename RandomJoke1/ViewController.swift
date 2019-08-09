//
//  ViewController.swift
//  RandomJoke1
//
//  Created by Teerapat on 8/8/2562 BE.
//  Copyright © 2562 Teerapat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var jokeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped() {
        APIManager().getRandomJoke { [weak self] (joke) in
            DispatchQueue.main.sync {
                guard let joke = joke else {
                    return
                }
                self?.jokeLabel.text = joke.value
            }
        }
    }
    
}


