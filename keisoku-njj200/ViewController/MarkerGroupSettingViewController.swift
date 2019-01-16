//
//  MarkerGroupSettingViewController.swift
//  keisoku-njj200
//
//  Created by M056 on 2019/01/12.
//  Copyright © 2019 jp.co.kgs-inc. All rights reserved.
//

import UIKit

class MarkerGroupSettingViewController: UIViewController {

    // MARK: - Properties
    
    /// 「グループ0」ラジオボタン
    @IBOutlet weak var rdoBtnGrp0: CustomRadioButton!
    
    /// 「グループ1」ラジオボタン
    @IBOutlet weak var rdoBtnGrp1: CustomRadioButton!
    
    /// 「グループ2」ラジオボタン
    @IBOutlet weak var rdoBtnGrp2: CustomRadioButton!
    
    /// 画面タイトルバーを非表示にする変数
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    // MARK: - Override Method
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MarkerGroupSettingViewController viewDidLoad")

        // 仮
        // ラジオボタン選択の初期設定をここでする
        rdoBtnGrp0.isSelected = true
    }
    
    
    // MARK: - Object Function
    
    /// マーカグループを設定
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnGrp0Tap(_ sender: CustomRadioButton) {
        print("MarkerGroupSettingViewController rdoBtnGrp0Tap")
        
        sender.isSelected = true
        
        rdoBtnGrp1.isSelected = false
        rdoBtnGrp2.isSelected = false
    }
    
    /// マーカグループを設定
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnGrp1Tap(_ sender: CustomRadioButton) {
        print("MarkerGroupSettingViewController rdoBtnGrp1Tap")
        
        sender.isSelected = true
        
        rdoBtnGrp0.isSelected = false
        rdoBtnGrp2.isSelected = false
    }
    
    /// マーカグループを設定
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnGrp2Tap(_ sender: CustomRadioButton) {
        print("MarkerGroupSettingViewController rdoBtnGrp2Tap")
        
        sender.isSelected = true
        
        rdoBtnGrp0.isSelected = false
        rdoBtnGrp1.isSelected = false
    }
    
    /// マーカグループ設定ダイアログを閉じてキャンセルする
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnCancelTap(_ sender: Any) {
        print("MarkerGroupSettingViewController btnCancelTap")
        
        // マーカグループ設定ダイアログを閉じる
        self.dismiss(animated: false, completion: nil)
    }
    
    /// マーカグループ設定ダイアログを閉じて、選択した値でグループを設定する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnOKTap(_ sender: Any) {
        print("MarkerGroupSettingViewController btnOKTap")
        
        // 仮
        // マーカグループ設定ダイアログを閉じる
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
