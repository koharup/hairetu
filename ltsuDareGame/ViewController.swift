//
//  ViewController.swift
//  ltsuDareGame
//
//  Created by kohari on 2019/09/20.
//  Copyright © 2019 kohari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doushitaLabel: UILabel!
    
    let itsuArray: [String] = ["一年前","一週間前","昨日","今日"]
    let dokodeArray: [String] = ["山の上で","アメリカで","学校で","クラスで"]
    let daregaArray: [String] = ["僕が","大統領が","先生が","友達が"]
    let doushitaArray: [String] = ["叫んだ","演説した","踊った","怒った"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(){
        //それぞれのラベルに配列の要素を追加する
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doushitaLabel.text = doushitaArray[index]
        
        //indexの値を＋１にする
        index = index + 1
        //indexの値が３より多くなったら0に戻す
        if index > 3 {
            index = 0
        }
        
        
        
    }
    @IBAction func reset(){
        //それぞれのラベルを元に戻す
        itsuLabel.text = "?"
        daregaLabel.text = "?"
        dokodeLabel.text = "?"
        doushitaLabel.text = "?"
        
        //indexを初期化する
        index = 0
        
        
        
    }
    @IBAction func random(){
        //乱数を生成して、それぞれのindexの中に入れる
        let itusuIndex = Int(arc4random_uniform(4))
        let dokodeIndex = Int(arc4random_uniform(4))
        let daregaIndex = Int(arc4random_uniform(4))
        let doushitaIndex = Int(arc4random_uniform(4))
        
        //コンソールに出力してそれぞれの値を確かめよう
        print("いつ: \(itusuIndex)")
        print("どこで: \(dokodeIndex)")
        print("だれが: \(daregaIndex)")
        print("どうした: \(doushitaIndex)")
        
        //それぞれのラベルに配列の要素を追加する
        itsuLabel.text = itsuArray[itusuIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        doushitaLabel.text = doushitaArray[doushitaIndex]
        
        
        
    }
}

