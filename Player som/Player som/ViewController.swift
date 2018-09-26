//
//  ViewController.swift
//  Player som
//
//  Created by Hicharles Rocha on 25/09/18.
//  Copyright © 2018 Hicharles. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player = AVAudioPlayer()
    
    @IBAction func atualizarVolume(_ sender: Any) {
        player.volume = sliderVolume.value
    }
    
    @IBOutlet weak var sliderVolume: UISlider!
    
    @IBAction func play(_ sender: Any) {
        player.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        player.pause()
    }
    
    @IBAction func stop(_ sender: Any) {
        player.stop()
        player.currentTime = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let path = Bundle.main.path(forResource: "bach", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
            } catch {
                print("Erro ao execultar o som")
            }
        }
    }


}

