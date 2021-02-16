//
//  ViewController.swift
//  speech_recog
//
//  Created by Rinchen on 2/16/21.
//

import UIKit
import AlamofireImage
import InstantSearchVoiceOverlay



class ViewController: UIViewController {
    let voiceOverlay = VoiceOverlayController()
    
    @IBOutlet weak var transcriptLabel: UILabel!
    @IBOutlet weak var startTalking: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startTalking.backgroundColor = .systemBlue
        startTalking.setTitleColor(.white, for: .normal)
    
    }
    @IBAction func onTap(_ sender: Any) {
        voiceOverlay.start(on: self, textHandler: { text, final, _ in
            
            if final {
                self.transcriptLabel.text=text
            }
            else{
                print("Speech recog in progress: \(text)")
            }
        }, errorHandler: {error in})
    }
    

}

