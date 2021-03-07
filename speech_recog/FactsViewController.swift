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
//    let url = "https://factchecktools.googleapis.com"
//    let search = "/v1alpha1/claims:search"
//    let api_key = "AIzaSyBkTsZH8lbH6KDhHJB5BJ8E5X-9jMmqRhc"
    
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
        
        
      
//        let url = URL(string: "https://factchecktools.googleapis.com/v1alpha1/claims:search/api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed")!
//        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
//        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
//        let task = session.dataTask(with: request) { (data, response, error) in
//           // This will run when the network request returns
//           if let error = error {
//              print(error.localizedDescription)
//           } else if let data = data {
//              let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
//                print(dataDictionary)
              // TODO: Get the array of movies
              // TODO: Store the movies in a property to use elsewhere
              // TODO: Reload your table view data

//           }
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


