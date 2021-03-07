//
//  FactsViewController.swift
//  speech_recog
//
//  Created by Rinchen on 3/5/21.
//

//View-2: Check for facts

import InstantSearchVoiceOverlay
import UIKit
import Parse

class FactsViewController: UIViewController {

    
    @IBOutlet weak var transcriptLabel: UILabel!
    let voiceOverlay = VoiceOverlayController()
    
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
    
    var facts = [PFObject]()
    
    @IBAction func someObject(_ sender: Any) {
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
        }
//        task.resume()
//
//        @IBOutlet weak var transcriptLabel: UILabel!
//        @IBOutlet weak var startTalking: UIButton!
//
//        override func viewDidLoad() {
//            super.viewDidLoad()
//            // Do any additional setup after loading the view.
//            startTalking.backgroundColor = .systemBlue
//            startTalking.setTitleColor(.white, for: .normal)
//
//        }
//        @IBAction func onTap(_ sender: Any) {
//            voiceOverlay.start(on: self, textHandler: { text, final, _ in
//
//                if final {
//                    self.transcriptLabel.text=text
//                }
//                else{
//                    print("Speech recog in progress: \(text)")
//                }
//            }, errorHandler: {error in})
//        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


