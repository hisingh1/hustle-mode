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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError{
            print(error.description)
        }
    }

    @IBAction func powerBtnPressed(_ sender: Any) {
          
        
        
        
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true
        
        player.play()
        
        
        


        
    }
    
}

