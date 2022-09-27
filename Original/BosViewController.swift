//
//  BosViewController.swift
//  Original
//
//  Created by 日暮駿之介 on 2022/09/26.
//

import UIKit

class BosViewController: UIViewController {
    
    var timer: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(self.update), userInfo:nil, repeats: true)
        timer.fire()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var BossImage:UIImageView!
    
//    func getView() -> UIImageView {
//        // ダブルタップ
//        let doubleTap = UITapGestureRecognizer(target: BossImage, action: "tappdDouble:")
//        doubleTap.numberOfTapsRequired = 10
//        BossImage.addGestureRecognizer(doubleTap)
//    }
    
//    func tappdDouble(sender: UITapGestureRecognizer!) {
//        //２秒後ステージ移動
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
//            performSegue(withIdentifier: "BossToClear", sender: nil)
//        }
//    }
        
    override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(true)
            timer.invalidate()
    }
     
    @IBOutlet var HPText:UILabel!
    
    var i:Int!
    var HP:Int=0
    
    @objc func update(tm: Timer) {
        if BossImage.isHidden==false{
            //繰り返し動作
            HP-=10
            HPText.text=("\(HP)/100")
        }
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
