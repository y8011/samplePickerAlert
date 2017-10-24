//
//  ViewController.swift
//  samplePickerAlert
//
//  Created by yuka on 24/10/2017.
//  Copyright © 2017 yuka. All rights reserved.
//

import UIKit

//1.プロトコル（手段、特定の部品を操る能力）を追加

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate  {
    @IBOutlet weak var myPickerView: UIPickerView!

    //データを配列で用意する
    var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ","月桃"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //5.指示を出しているのがviewControllerだと知らせる設定
        // self : (ViewControllerのこと)
        //データソース（表示するデータの設定指示する人）
        myPickerView.dataSource = self
        //デリゲート（感知したイベントを委任する人、代理人（店長））
        myPickerView.delegate = self
    
    }
    
    //2.pickerviewの列数を決定する
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //3.pickerviewの行数を決定する
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teaList.count
        
    }
    //4.ピッカービューに表示する文字の設定
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        //ここのrowの意味は、今ピッカービューが何行目のデータを作ろうとしているか
        return teaList[row]
    }

    //(6.)選択された項目をデバッグエリアに表示
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //ここのrowの意味は、選択された項目が何行目か
        
        print(row)
        var title:String
        var message:String
        var action:String

        title = teaList[row]
        action = "OK"
        
        switch teaList[row] {
            
        case "ダージリン":
                message = "ダージリンは一般的な紅茶ですね"

        case "アールグレイ":
            message = "香りがとてもいいです"
            
        case "アッサム":
            message = "アイスティーが飲みたいです"
            
        case "オレンジペコ":
            message = "『紅茶王子』を思い出しますな"
            
        default:
            message = "お茶は大好き♪"
        }
        
        alertAction( s_title: title, s_message: message , s_action: action)
        
        
    }
    
    
    func alertAction(s_title:String, s_message:String, s_action:String){
        
        
        //部品となるアラート
        let alert = UIAlertController(
            title: s_title ,
            message: s_message,
            preferredStyle: .alert
        )
        
        alert.addAction(
            UIAlertAction(
            title: s_action,
            style: .default,
            handler: nil)
        )
        
        //アラートを表示
        present(alert,
                animated: true,
                completion: nil
        )
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

