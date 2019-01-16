//
//  MenuSettingViewController.swift
//  keisoku-njj200
//
//  Created by M056 on 2019/01/07.
//  Copyright © 2019 jp.co.kgs-inc. All rights reserved.
//

import Foundation
import UIKit

class MenuSettingViewController: UIViewController {

    // MARK: - Properties
    
    /// 画面タイトルバーを非表示にする変数
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    // MARK: - Override Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MenuSettingViewController viewDidLoad")
    }

    // MARK: - Object Function
    
    /// 設定値を変更してメイン画面へ戻る
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnReturnTap(_ sender: Any) {
        print("MenuSettingViewController btnReturnTap")

        // メニュー設定ダイアログを閉じる
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
