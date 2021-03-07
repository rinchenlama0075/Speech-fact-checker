//
//  RandomFactViewController.swift
//  speech_recog
//
//  Created by Rinchen on 3/6/21.
//

//View Should generate a random fact

import UIKit
import Parse

class RandomFactViewController: UIViewController {

    @IBOutlet weak var FactLabel: UITextField!
    var facts = [PFObject]()
    var parseObject = PFObject(className:"Facts")
    
    @IBAction func onGetFactd(_ sender: Any) {
        
        var query = PFQuery(className:"Facts")
        query.limit = 1
        query.findObjectsInBackground{(Facts, error) in
            if Facts != nil {
                self.facts = Facts!
                print(self.facts[0]["Statement"])
                self.FactLabel.text = self.facts[0]["Statement"] as? String
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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

}
