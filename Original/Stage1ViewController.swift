//
//  Stage1ViewController.swift
//  Original
//
//  Created by 日暮駿之介 on 2022/09/21.
//

import UIKit

class Stage1ViewController: UIViewController {
    
    //    @IBOutlet var RendaImage:[UIImageView]!
    
    var num:Int = 0
    
    
    var timer: Timer!
    
    
    //    var RendaImage:[UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(self.update), userInfo:nil, repeats: true)
        timer.fire()
        
//        Do any additional setup after loading the view.
    }
    
    
    
    var StoneImage:[UIImageView]=[]
    var EnemyImage:[UIImageView]=[]
    var SekkiImage:[UIImageView]=[]
    
    var enemynum:Int=0
    var stonenum:Int=0
    
    @IBAction func Renda(){
        num=Int.random(in: 1...100)
        let xrand=Double.random(in: 40...370)
        let yrand=Double.random(in: 40...450)
        //        let image1:UIImage = UIImage(named:"Stone")!
        //        let RendaImage=UIImageView(image:image1)
        //        RendaImage.center = CGPoint(x:xrand, y:yrand)
        //        view.addSubview(RendaImage)

        if num<=75{
            let image1:UIImage = UIImage(named:"Stone")!
            StoneImage.append(UIImageView(image:image1))
//            StoneImage[stonenum]:CGRect=CGRect(x: xrand, y: yrand, width: 100, height: 100)
            StoneImage[stonenum].center=CGPoint(x: xrand, y: yrand)
            view.addSubview(StoneImage[stonenum])
            stonenum=stonenum+1
        }
        if (num>=76)&&(num<=95){
            let image1:UIImage = UIImage(named:"Stone")!
            EnemyImage.append(UIImageView(image:image1))
            EnemyImage[enemynum].center = CGPoint(x:xrand, y:yrand)
            view.addSubview(EnemyImage[enemynum])
            enemynum=enemynum+1
        }
        if num>=96{
            let image1:UIImage = UIImage(named:"Timer")!
            let TimerImage=UIImageView(image:image1)
            TimerImage.center = CGPoint(x:xrand, y:yrand)
            view.addSubview(TimerImage)
            
            //２秒後ステージ移動
//            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
//                performSegue(withIdentifier: "Stage1toStage2", sender: nil)
//            }
            
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        timer.invalidate()
    }
    
    var i:Int!
    var h:Int=0
    var HP:Int=100
    @IBOutlet var HPText:UILabel!

    @objc func update(tm: Timer) {
//        for i in 0...enemynum-1{
//            if EnemyImage[i].isHidden==false{
//                h=h+1
//            }
//        }
        //繰り返し動作
        HP-=10*h
        HPText.text=("\(HP)/100")
    }
    
//    //　ドラッグ時に呼ばれる
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?){
//        for i in 0...stonenum{
//            // タッチイベントを取得
//            let touchEvent = touches.first!
//            // ドラッグ前の座標, Swift 1.2 から
//            let preStonex = touchEvent.previousLocation(in: self.view).x
//            let preStoney = touchEvent.previousLocation(in: self.view).y
//            // ドラッグ後の座標
//            let newStonex = touchEvent.location(in: self.view).x
//            let newStoney = touchEvent.location(in: self.view).y
//            // ドラッグしたx座標の移動距離
//            let Stonedx = newStonex - preStonex
//            // ドラッグしたy座標の移動距離
//            let Stonedy = newStoney - preStoney
//            // 画像のフレーム
//            var viewFrame: CGRect = StoneImage[i].frame
//            // 移動分を反映させる
//            viewFrame.origin.x += Stonedx
//            viewFrame.origin.y += Stonedy
//            StoneImage[i].frame = viewFrame
//            self.view.addSubview(StoneImage[i])
//        }
//    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?){
        // タッチイベントを取得
        let touchEvent = touches.first!
        // ドラッグ前の座標, Swift 1.2 から
        let preStonex = touchEvent.previousLocation(in: self.view).x
        let preStoney = touchEvent.previousLocation(in: self.view).y
        // ドラッグ後の座標
        let newStonex = touchEvent.location(in: self.view).x
        let newStoney = touchEvent.location(in: self.view).y
        // ドラッグしたx座標の移動距離
        let Stonedx = newStonex - preStonex
        // ドラッグしたy座標の移動距離
        let Stonedy = newStoney - preStoney
        
        for i in 0...stonenum{
            // 画像のフレーム
            var viewFrame: CGRect = StoneImage[i].frame
            if Stonedx>0{
                // 移動分を反映させる
                viewFrame.origin.x += Stonedx
                viewFrame.origin.y += Stonedy
                StoneImage[i].frame = viewFrame
                self.view.addSubview(StoneImage[i])
            }
            
        }
    }
//
//
//
    
    
    
//    var stoneX:[Double]=[]
//    var stoneY:[Double]=[]
//
//
//
//    var k:Int=0
//    var j:Int=0
//    var m:Int=0
//    var n:Int=0
//    var p:Int!
//
//    func gousei(){
//        for k in 0...stonenum{
//            for j in 0...stonenum{
//                for m in 0...stonenum{
//                    for n in 0...stonenum{
//                        if (stoneX[k]==stoneX[j])&&(stoneX[j]==stoneX[m])&&(stonex[m]==stonex[n]){
//                            if (stoney[k]==stoney[j])&&(stoney[j]==stoney[m])&&(stoney[m]==stoney[n]){
//                                StoneImage[k].isHidden=true
//                                StoneImage[j].isHidden=true
//                                StoneImage[m].isHidden=true
//                                StoneImage[n].isHidden=true
//                                let image1:UIImage = UIImage(named:"Sekki")!
//                                SekkiImage[p]=UIImageView(image:image1)
//                                SekkiImage[p].center = CGPoint(x:stonex[k], y:stoney[k])
//                                view.addSubview(SekkiImage[p])
//                                p=p+1
//                            }
//                        }
//                    }
//                }
//            }
//        }
//    }
    
    //連続タップで敵の画像が消える
//    var e:Int!
//    func getView() -> UIView {
//        for e in 0...enemynum{
//            // ダブルタップ
//            let doubleTap = UITapGestureRecognizer(target: EnemyImage, action: "tappdDouble:")
//            doubleTap.numberOfTapsRequired = 2
//            EnemyImage[e].addGestureRecognizer(doubleTap)
//        }
//    }
//    //連続タップで敵の画像が消える
//    func tappdDouble(sender: UITapGestureRecognizer!) {
//        // ダブルタップしたときの処理
//        EnemyImage[e].isHidden=true
//    }
    
    
    
    

        
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    
}
