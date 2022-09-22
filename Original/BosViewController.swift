//
//  BosViewController.swift
//  Original
//
//  Created by 日暮駿之介 on 2022/09/26.
//

import UIKit

class BosViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var BosImage:UIImageView!
    
    func getView() -> UIImageView {
        // ダブルタップ
        let doubleTap = UITapGestureRecognizer(target: BosImage, action: "tappdDouble:")
        doubleTap.numberOfTapsRequired = 10
        BosImage.addGestureRecognizer(doubleTap)
    }
    
    func tappdDouble(sender: UITapGestureRecognizer!) {
        // ダブルタップしたときの処理
        
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
