//
//  AutoMarkViewController.swift
//  keisoku-njj200
//
//  Created by M056 on 2019/01/12.
//  Copyright © 2019 jp.co.kgs-inc. All rights reserved.
//

import UIKit

class AutoMarkViewController: UIViewController {

    // MARK: - Properties
    
    
    /// 自動検出の確認メッセージラベル
    @IBOutlet weak var lblAutoMarkConfirm: UILabel!
    
    /// 「初めから検出」ラジオボタン
    @IBOutlet weak var rdoBtnAutoDetectStart: CustomRadioButton!
    
    /// 「終わりから検出」ラジオボタン
    @IBOutlet weak var rdoBtnAutoDetectEnd: CustomRadioButton!
    
    /// 画面タイトルバーを非表示にする変数
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    // MARK: - Override Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("AutoMarkViewController viewDidLoad")
        
        // 自動検出確認メッセージ設定
        lblAutoMarkConfirm.text = NSLocalizedString("automarker_msg3", comment: "automarker_msg3")

        // 仮
        // ラジオボタン選択の初期設定をここでする
        rdoBtnAutoDetectStart.isSelected = true
    }
    
    
    // MARK: - Object Function
    
    /// 表示中データの中でマーカを自動検出する（初めから検出）
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnAutoDetectStartTap(_ sender: CustomRadioButton) {
        print("AutoMarkViewController rdoBtnAutoDetectStartTap")
        
        sender.isSelected = true
        
        rdoBtnAutoDetectEnd.isSelected = false
    }
    
    /// 表示中データの中でマーカを自動検出する（終わりから検出）
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnAutoDetectEndTap(_ sender: CustomRadioButton) {
        print("AutoMarkViewController rdoBtnAutoDetectEndTap")
        
        sender.isSelected = true
        
        rdoBtnAutoDetectStart.isSelected = false
    }
    
    /// 自動検出ダイアログを閉じてキャンセルする
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnCancelTap(_ sender: Any) {
        print("AutoMarkViewController btnCancelTap")
        
        // マーカ自動検出ダイアログを閉じる
        self.dismiss(animated: false, completion: nil)
    }
    
    /// 自動検出ダイアログを閉じて、選択した値に沿って表示中データからマーカ検出処理を開始する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnOKTap(_ sender: Any) {
        print("AutoMarkViewController btnOKTap")
        
        // 仮
        // マーカ自動検出ダイアログを閉じる
        self.dismiss(animated: false, completion: nil)
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
