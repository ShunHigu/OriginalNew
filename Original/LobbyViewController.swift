//
//  LobbyViewController.swift
//  Original
//
//  Created by 日暮駿之介 on 2022/09/21.
//

import UIKit

class LobbyViewController: UIViewController {
    @IBAction func button(_ sender: Any) {
            performSegue(withIdentifier: "LobbyToRule", sender: nil)
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
