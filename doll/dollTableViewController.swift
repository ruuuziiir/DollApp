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


    var judge = 0

    func judgeCat(num: Int) {
        
        switch judge {
        case 0:
            lipImage.image = UIImage(named: lipArray[num])
        case 1:
            markImage.image = UIImage(named: markArray[num])
        case 2:
            topHairImage.image = UIImage(named: topHairArray[num])
        case 3:
            bottomHairImage.image = UIImage(named: bottomHairArray[num])
        case 4:
            neckImage.image = UIImage(named: neckArray[num])
        default:
            lipImage.image = UIImage(named: lipArray[num])
        }
    }
    
    func buttonChoice(arrayName: Array<String>) {
        
        var count = 0
        while count < choicesCollection.count {
            if count < arrayName.count {
            //print(count)
            choicesCollection[count].image = UIImage(named: arrayName[count])
            }
            else {
                choicesCollection[count].image = nil
            }
            count = count + 1
        }
    }
    

    
    @IBAction func lipButton(_ sender: Any) {
        judge = 0
        buttonChoice(arrayName: sLipArray)
    }
    
    @IBAction func markButton(_ sender: Any) {
        judge = 1
        buttonChoice(arrayName: sMarkArray)
    }
    
    @IBAction func topHairButton(_ sender: Any) {
        judge = 2
        buttonChoice(arrayName: sTopHairArray)
    }
    
    @IBAction func bottomHairButton(_ sender: Any) {
        judge = 3
        buttonChoice(arrayName: sBottomHairArray)
    }
    
    @IBAction func neckButton(_ sender: Any) {
        judge = 4
        buttonChoice(arrayName: sNeckArray)
    }
    
    //----------------------------------------------------------
    
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
    
    
}
