//
//  ViewController.swift
//  hustle-mode
//
//  Created by Himmat Singh on 10/23/20.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLbl: UILabel!
    @IBOutlet weak var onLbl: UILabel!
    
    var player: AVAudioPlayer!
    
    
    
    

    @IBAction func powerBtnPressed(_ sender: Any) {
        
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true
        
        player.play()
        
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 20, width: 414, height: 674)
        } ) {(finished) in
            self.hustleLbl.isHidden = false
            self.onLbl.isHidden = false
        }


        
    }
    
}

