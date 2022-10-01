//
//  BosViewController.swift
//  Original
//
//  Created by 日暮駿之介 on 2022/09/26.
//

import UIKit

class BossViewController: UIViewController {
    
    //    @IBOutlet var RendaImage:[UIImageView]!
    
    var num:Int = 0
    
    
    var timer: Timer!
    
    
    var BossImage:BossTapImageView
    
    var IronImage:[TouchImageView]=[]
    var EnemyImage:[Enemy3TapImageView]=[]
    var KenImage:[TouchImageView]=[]
    var NihontouImage:[TouchImageView]=[]
    var StickImage:[TouchImageView]=[]
    var MokuzaiImage:[TouchImageView]=[]
    var enemynum:Int=0
    var ironnum:Int=0
    var mokuzainum:Int=0
    var sticknum:Int=0
    var kennum:Int=0
    
    //    var RendaImage:[UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(self.update), userInfo:nil, repeats: true)
//        timer.fire()
        
//        Do any additional setup after loading the view.
        
//        var i:Int=0
//        for i in 0...enemynum{
//            if EnemyImage[i]!=nil{
//                EnemyImage[i].isUserInteractionEnabled = true
//                EnemyImage[i].addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageViewTapped(_:))))
//            }
//        }
//        EnemyImage[i].isUserInteractionEnabled = true
//        EnemyImage[i].addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageViewTapped(_:))))
        
    }
    var enemyHP:Int=100
    //一回的の画像をタップされた時にすること
    var i:Int=0
    @objc func imageViewTapped(_ sender: UITapGestureRecognizer) {
        if enemyHP>0{
            enemynum-=10
        }
        else{
            EnemyImage[i].isHidden=true
        }
    }
    
    
    
    @IBAction func Renda(){
        num=Int.random(in: 1...100)
        let xrand=Double.random(in: 40...370)
        let yrand=Double.random(in: 40...450)
        //        let image1:UIImage = UIImage(named:"Stone")!
        //        let RendaImage=UIImageView(image:image1)
        //        RendaImage.center = CGPoint(x:xrand, y:yrand)
        //        view.addSubview(RendaImage)

        if num<=30{
            let image1:UIImage = UIImage(named:"Stone")!
            IronImage.append(TouchImageView(image:image1))
//            StoneImage[stonenum]:CGRect=CGRect(x: xrand, y: yrand, width: 100, height: 100)
            IronImage[ironnum].center=CGPoint(x: xrand, y: yrand)
            view.addSubview(IronImage[ironnum])
            ironnum=ironnum+1
        }
        if (num>=31)&&(num<=60){
            let image1:UIImage = UIImage(named:"Enemy")!
            MokuzaiImage.append(TouchImageView(image:image1))
            MokuzaiImage[enemynum].center = CGPoint(x:xrand, y:yrand)
            view.addSubview(MokuzaiImage[enemynum])
            mokuzainum=mokuzainum+1
        }
        if (num>=61)&&(num<=98){
            let image1:UIImage = UIImage(named:"Enemy")!
            EnemyImage.append(Enemy3TapImageView(image:image1))
            EnemyImage[enemynum].center = CGPoint(x:xrand, y:yrand)
            view.addSubview(EnemyImage[enemynum])
            enemynum=enemynum+1
        }
        if num>=99{
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
    
//    var i:Int!
    var h:Int=0
    var HP:Int=100
    @IBOutlet var HPText:UILabel!

    @objc func update(tm: Timer) {
//        for i in 0...enemynum{
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
    

    
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?){
//            // タッチイベントを取得
//            let touchEvent = touches.first!
//            // ドラッグ前の座標, Swift 1.2 から
//            let preStoneX = touchEvent.previousLocation(in: self.view).x
//            let preStoneY = touchEvent.previousLocation(in: self.view).y
//
//            let preSekkiX = touchEvent.previousLocation(in: self.view).x
//            let preSekkiY = touchEvent.previousLocation(in: self.view).y
//
//            let preMokuzaiX = touchEvent.previousLocation(in: self.view).x
//            let preMokuzaiY = touchEvent.previousLocation(in: self.view).y
//
//            let preStickX = touchEvent.previousLocation(in: self.view).x
//            let preStickY = touchEvent.previousLocation(in: self.view).y
//            // ドラッグ後の座標
//            let newStoneX = touchEvent.location(in: self.view).x
//            let newStoneY = touchEvent.location(in: self.view).y
//
//            let newSekkiX = touchEvent.location(in: self.view).x
//            let newSekkiY = touchEvent.location(in: self.view).y
//
//            let newMokuzaiX = touchEvent.location(in: self.view).x
//            let newMokuzaiY = touchEvent.location(in: self.view).y
//
//            let newStickX = touchEvent.location(in: self.view).x
//            let newStickY = touchEvent.location(in: self.view).y
//            // ドラッグしたx座標の移動距離
//            let Stonedx = newStoneX - preStoneX
//
//            let Sekkidx = newSekkiX - preSekkiX
//
//            let Mokuzaidx = newMokuzaiX - preMokuzaiX
//
//            let Stickdx = newStickX - preStickX
//            // ドラッグしたy座標の移動距離
//            let Stonedy = newStoneY - preStoneY
//
//            let Sekkidy = newSekkiY - preSekkiY
//
//            let Mokuzaidy = newMokuzaiY - preMokuzaiY
//
//            let Stickdy = newStickY - preStickY
//
//            for i in 0...mokuzainum{
//                // 画像のフレーム
//                var viewFrame: CGRect = StoneImage[i].frame
//                if Stonedx>0{
//                    // 移動分を反映させる
//                    viewFrame.origin.x += Stonedx
//                    viewFrame.origin.y += Stonedy
//                    StoneImage[i].frame = viewFrame
//                    self.view.addSubview(StoneImage[i])
//                }
//             }
//
//             for i in 0...stonenum{
//                // 画像のフレーム
//                var viewFrame: CGRect = SekkiImage[i].frame
//                if Sekkidx>0{
//                    // 移動分を反映させる
//                    viewFrame.origin.x += Sekkidx
//                    viewFrame.origin.y += Sekkidy
//                    SekkiImage[i].frame = viewFrame
//                    self.view.addSubview(SekkiImage[i])
//                }
//            }
//
//            for i in 0...mokuzainum{
//                // 画像のフレーム
//                var viewFrame: CGRect = MokuzaiImage[i].frame
//                if Mokuzaidx>0{
//                    // 移動分を反映させる
//                    viewFrame.origin.x += Mokuzaidx
//                    viewFrame.origin.y += Mokuzaidy
//                    MokuzaiImage[i].frame = viewFrame
//                    self.view.addSubview(MokuzaiImage[i])
//                }
//            }
//            for i in 0...sticknum{
//                    // 画像のフレーム
//                    var viewFrame: CGRect = StickImage[i].frame
//                    if Mokuzaidx>0{
//                        // 移動分を反映させる
//                        viewFrame.origin.x += Stickdx
//                        viewFrame.origin.y += Stickdy
//                        StickImage[i].frame = viewFrame
//                        self.view.addSubview(StickImage[i])
//                    }
//            }
//        }
//
//    var stoneX:[Double]=[]
//    var stoneY:[Double]=[]
//
//
//
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {

        var ironX:[Double]=[]
        var ironY:[Double]=[]
        
        for i in 0..<IronImage.count{
            ironX.append(IronImage[i].layer.position.x)
            ironY.append(IronImage[i].layer.position.y)
        }
        ironnum=IronImage.count
      
        
        func gousei(){
            for k in 0..<ironnum{
                for j in k+1..<ironnum{
                    for m in j+1..<ironnum{
                        for n in m+1..<ironnum{
                            let size=50.0
                            if (abs(ironX[k]-ironX[j])<size)&&(abs(ironX[j]-ironX[m])<size)&&(abs(ironX[m]-ironX[n])<size)&&(abs(ironX[k]-ironX[n])<size){
                                if (abs(ironY[k]-ironY[j])<size)&&(abs(ironY[j]-ironY[m])<size)&&(abs(ironY[m]-ironY[n])<size)&&(abs(ironY[k]-ironY[n])<size){
                                    IronImage[k].isHidden=true
                                    IronImage[j].isHidden=true
                                    IronImage[m].isHidden=true
                                    IronImage[n].isHidden=true
                                    IronImage.removeAll(where: {t in
                                        t.isHidden==true})
                                    let image1:UIImage = UIImage(named:"Ken")!
                                    let IV=TouchImageView(image:image1)
                                    IV.layer.position=CGPoint(x:ironX[k], y:ironY[k])
                                    KenImage.append(IV)
                                    view.addSubview(IV)
                                    return
                                }
                            }
                        }
                    }
                }
            }
        }
        
        var mokuzaiX:[Double]=[]
        var mokuzaiY:[Double]=[]
        
        for i in 0..<MokuzaiImage.count{
            mokuzaiX.append(MokuzaiImage[i].layer.position.x)
            mokuzaiY.append(MokuzaiImage[i].layer.position.y)
        }
        mokuzainum=MokuzaiImage.count
        
        func gousei2(){
            for k in 0...mokuzainum{
                for j in k+1...mokuzainum{
                    for m in j+1...mokuzainum{
                        for n in m+1...mokuzainum{
                            let size=50.0
                            if (abs(mokuzaiX[k]-mokuzaiX[j])<size)&&(abs(mokuzaiX[j]-mokuzaiX[m])<size)&&(abs(mokuzaiX[k]-mokuzaiX[j])<size)&&(abs(mokuzaiX[k]-mokuzaiX[n])<size){
                                if (abs(mokuzaiY[k]-mokuzaiY[j])<size)&&(abs(mokuzaiY[j]-mokuzaiY[m])<size)&&(abs(mokuzaiY[k]-mokuzaiY[j])<size)&&(abs(mokuzaiY[k]-mokuzaiY[n])<size){
                                    MokuzaiImage[k].isHidden=true
                                    MokuzaiImage[j].isHidden=true
                                    MokuzaiImage[m].isHidden=true
                                    MokuzaiImage[n].isHidden=true
                                    MokuzaiImage.removeAll(where: {t in
                                        t.isHidden==true})
                                    let image1:UIImage = UIImage(named:"Stick")!
                                    let IV=TouchImageView(image:image1)
                                    IV.layer.position=CGPoint(x:mokuzaiX[k], y:mokuzaiY[k])
                                    StickImage.append(IV)
                                    view.addSubview(IV)
                                    return
                                }
                            }
                        }
                    }
                }
            }
        }
        
        var stickX:[Double]=[]
        var stickY:[Double]=[]
        
        var kenX:[Double]=[]
        var kenY:[Double]=[]
        
        for i in 0..<KenImage.count{
            kenX.append(KenImage[i].layer.position.x)
            kenY.append(KenImage[i].layer.position.y)
        }
        
        for i in 0..<StickImage.count{
            stickX.append(StickImage[i].layer.position.x)
            stickY.append(StickImage[i].layer.position.y)
        }
        
        sticknum=StickImage.count
        kennum=KenImage.count
        
        
        func gousei3(){
            for k in 0..<kennum{
                for j in k+1..<sticknum{
                    let size=50.0
                    if (abs(kenX[k]-stickX[j])<size){
                        if (abs(kenY[k]-stickY[j])<size){
                            KenImage[k].isHidden=true
                            StickImage[j].isHidden=true
                            StickImage.removeAll(where: {t in
                                t.isHidden==true})
                            KenImage.removeAll(where: {t in
                                t.isHidden==true})
                            let image1:UIImage = UIImage(named:"Nihontou")!
                            let IV=TouchImageView(image:image1)
                            IV.layer.position=CGPoint(x:kenX[k], y:kenY[k])
                            NihontouImage.append(IV)
                            view.addSubview(IV)
                            return
                        }
                    }
                }
            }
        }
        

        gousei()
        gousei2()
        gousei3()
    }
    
//    var mokuzaiX:[Double]=[]
//    var mokuzaiY:[Double]=[]
    

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

class BossTapImageView:UIImageView{
    var enemyHP:Int=100
    
    public var touched=false
    
    override init(image:UIImage?){
        super.init(image: image)
        self.isUserInteractionEnabled=true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        next?.touchesBegan(touches, with: event)
        let touch=touches.first
        
        let randnum=Int.random(in: 1...2)
        enemyHP=enemyHP-15
        print(enemyHP)
        if enemyHP<=0{
            self.removeFromSuperview()
            if randnum==1||randnum==2{
                print("I get timar!!!")
                
//                let image1:UIImage = UIImage(named:"Timer")!
//                let TimerImage=UIImageView(image: image1)
//                TimerImage.frame = CGRectMake(self.view.bounds.height/2, self.view.bounds.width/2, 100, 100)
//                view.addSubview(TimerImage)
                var timer:Timer = Timer()
                timer = Timer.scheduledTimer(timeInterval: 5.0,
                                                               target: self,
                                                               selector: "changeView",
                                                               userInfo: nil,
                                                               repeats: false)
                
                //                let image1:UIImage = UIImage(named:"Timar")!
                //                let IV=UIImageView(image:image1)
                //                IV.layer.position=CGPoint(x:100, y:400)
                //                view.addSubview(IV)
                //                return
            
            }
        }
        
    }
    func changeView() {
        self.performSegueWithIdentifier("Stage2ToCrear", sender: self)
    }
}
