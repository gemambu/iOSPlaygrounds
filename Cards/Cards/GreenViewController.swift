//
//  GreenViewController.swift
//  Cards
//
//  Created by Gema on 5/9/17.
//  Copyright © 2017 Gema. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {
    @IBOutlet weak var buttonClose: UIButton!
    
    @IBAction func closeButtonClick(_ sender: Any) {
        self.dismiss(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    

}
