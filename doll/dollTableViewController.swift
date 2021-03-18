//
//  dollTableViewController.swift
//  doll
//
//  Created by 7 on 2021/3/17.
//

import UIKit

class dollTableViewController: UITableViewController {
    
    @IBOutlet weak var neckImage: UIImageView!
    @IBOutlet weak var bottomHairImage: UIImageView!
    @IBOutlet weak var topHairImage: UIImageView!
    @IBOutlet weak var markImage: UIImageView!
    @IBOutlet weak var lipImage: UIImageView!
    
    @IBOutlet var choicesCollection: [UIImageView]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    // judge: 定義給五官 button 的數字
    var judge = ""
    
    // 五官 button，judge 值 = 五官名稱
    
    @IBAction func lipButton(_ sender: Any) {
        judge = "lip"
        buttonChoice(arrayName: sLipArray)
    }
    
    @IBAction func markButton(_ sender: Any) {
        judge = "mark"
        buttonChoice(arrayName: sMarkArray)
    }
    
    @IBAction func topHairButton(_ sender: Any) {
        judge = "topHair"
        buttonChoice(arrayName: sTopHairArray)
    }
    
    @IBAction func bottomHairButton(_ sender: Any) {
        judge = "bottomHair"
        buttonChoice(arrayName: sBottomHairArray)
    }
    
    @IBAction func neckButton(_ sender: Any) {
        judge = "neck"
        buttonChoice(arrayName: sNeckArray)
    }
    
    //-----------------------------------------------------
    // 下方選項的 button
    // 點擊之後經過 judgeCat() 判斷現在所在的五官，func 傳入值為 0~5（配合 array 規則）
    
    @IBAction func button0(_ sender: Any) {
        judgeCat(num: 0)
    }
    
    @IBAction func button1(_ sender: Any) {
        judgeCat(num: 1)
    }
    
    @IBAction func button2(_ sender: Any) {
        judgeCat(num: 2)
    }
    
    @IBAction func button3(_ sender: Any) {
        judgeCat(num: 3)
    }
    
    @IBAction func button4(_ sender: Any) {
        judgeCat(num: 4)
    }
    
    @IBAction func button5(_ sender: Any) {
        judgeCat(num: 5)
    }
    
    //-----------------------------------------------------
    // 隨機產生一張臉

    @IBAction func random(_ sender: Any) {
        
        lipImage.image = UIImage(named: lipArray[Int.random(in: 0...5)])
        
        markImage.image = UIImage(named: markArray[Int.random(in: 0...5)])
        
        topHairImage.image = UIImage(named: topHairArray[Int.random(in: 0...5)])
        
        bottomHairImage.image = UIImage(named: bottomHairArray[Int.random(in: 0...5)])
        
        neckImage.image = UIImage(named: neckArray[Int.random(in: 0...3)])
    }
    
    
    //-----------------------------------------------------
    
    // buttonChoice(): 傳入 array 名稱
    // 點擊畫面中間的五官選項時，會自動將畫面下方的圖片換成對應的圖
    
    func buttonChoice(arrayName: Array<String>) {
        
        var count = 0
        while count < choicesCollection.count {
            if count < arrayName.count {
                
            choicesCollection[count].image = UIImage(named: arrayName[count])
            }
            else {
                choicesCollection[count].image = nil
            }
            count = count + 1
        }
    }
    
    
    // judgeCat(): 傳入自定義的編號
    // 用case判斷現在要改的五官選項，讓放在選項上的 button 可以對應到正確的圖片
    
    func judgeCat(num: Int) {
        
        switch judge {
        
        case "lip":
            lipImage.image = UIImage(named: lipArray[num])
            
        case "mark":
            markImage.image = UIImage(named: markArray[num])
            
        case "topHair":
            topHairImage.image = UIImage(named: topHairArray[num])
            
        case "bottomHair":
            bottomHairImage.image = UIImage(named: bottomHairArray[num])
            
        case "neck":
            neckImage.image = UIImage(named: neckArray[num])
            
        default:
            lipImage.image = UIImage(named: lipArray[num])
        }
    }
}
