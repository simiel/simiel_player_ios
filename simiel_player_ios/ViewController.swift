//
//  ViewController.swift
//  simiel_player_ios
//
//  Created by Samuel Mensa on 01/05/2024.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }

    private func playVideo(){
        guard let path = Bundle.main.path(forResource: "intro", ofType: "mp4") else{
            debugPrint("intro.mp4 not found")
            return
        }
        
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        
        let playerController = AVPlayerViewController()
        
        playerController.player = player
        present(playerController, animated: true){
            player.play()
        }
    }

}

