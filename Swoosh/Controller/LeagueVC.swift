//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Gabriel Balta on 29/12/2017.
//  Copyright © 2017 Gabriel Balta. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player: Player!
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(selectedLeague: "mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(selectedLeague: "womens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(selectedLeague: "coed")
    }
    
    func selectLeague(selectedLeague: String) {
        player.desiredLeague = selectedLeague
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
}
