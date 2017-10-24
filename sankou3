//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by yuka on 24/10/2017.
//  Copyright © 2017 yuka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapSelect(_ sender: UIButton) {
        
        //アクションシート作成
        
        let actionSheet = UIAlertController(title: "アクションシート作成時のたああ", message: "今日のアクティビチ", preferredStyle: .actionSheet)
        
        //アクティビティボタン１
        actionSheet.addAction(UIAlertAction(
            title: "ヨガ",
            style: .default,
            handler:{action in self.textSelect(s:1)})
        )
        
        
        //アクティビティボタン2を追加する
        actionSheet.addAction(UIAlertAction(
            title: "ヨガ2",
            style: .default,
            handler: {action in self.textSelect(s:2)})
        )
        
        actionSheet.addAction(UIAlertAction(
            title: "ヨガ2",
            style: .default,
            handler: {action in self.textSelect(s:3) })
        )
        
        actionSheet.addAction(UIAlertAction(
            title: "ヨガ2",
            style: .default,
            handler: {action in self.textSelect(s:4)})
        )
        
        //削除ボタン（赤字）を追加
        actionSheet.addAction(UIAlertAction(
            title: "ムエタイ",
            style: .destructive,
            handler: {action in self.Destructive()})
        )
        
        //削除ボタン（赤字）を追加
        actionSheet.addAction(UIAlertAction(
            title: "ヨガ",
            style: .destructive,
            handler: {action in self.textSelect(s:3)})
        )
        
        //キャンセルボタン（ちょっと離れてる）
        actionSheet.addAction(UIAlertAction(
            title: "ヨガ",
            style: .cancel,
            handler: {action in self.textSelect(s:99)})
        )
        
       
        //アクションシートを表示
        present(actionSheet,animated:true, completion: nil)
        
    }

    
    func textSelect (s:Int){
        switch s {
        case 1:
            myLabel.text = "ヨガ行こ!"
            break
        case 2:
            
            myLabel.text = "行ってみたい"
            break
            
        case 3:
            
            myLabel.text = "カントリーモールにあるとこは1回250ペソ"
            break
            
        case 4:
            myLabel.text = "むしろジャズダンス行きたいわ"
            
        default:
            myLabel.text = "やめときましょか"

        }
        

    }
    
    func Destructive()
    {
        myLabel.text = "ムエタイはタイなのか?"
    }
    
    
}


