//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Gabriel Balta on 29/12/2017.
//  Copyright © 2017 Gabriel Balta. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
}
