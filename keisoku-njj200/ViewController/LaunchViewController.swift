//
//  LaunchViewController.swift
//  keisoku-njj200
//
//  Created by M002 on 2018/11/14.
//  Copyright © 2018年 jp.co.kgs-inc. All rights reserved.
//

import Foundation
import UIKit

/// 初期画面上の全ての項目に対して操作するクラス
class LaunchViewController: UIViewController {
    
    // MARK: - Properties
    
    /// アプリ名ラベル
    @IBOutlet weak var lblAppName: UILabel!
    
    /// 画面タイトルバーを非表示にする変数
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    /// 画面の自動回転を設定する為の変数
    override var shouldAutorotate: Bool {
        get {
            // 自動回転させない
            return false
        }
    }
    
    /// 画面向きを指定する為の変数
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            // 縦向き
            return .portrait
        }
    }
    
    
    // MARK: - Override Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("LaunchViewController viewDidLoad")
        
        // アプリ名テキスト指定
        lblAppName.text = NSLocalizedString("app_name", comment: "app_name")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("LaunchViewController viewDidAppear")
        
        // launch screenを3秒間表示する
        Thread.sleep(forTimeInterval: 3.0)
        
        self.systemParamSetting()
        
    }
    
    
    // MARK: - function
    
    /// システムパラメータ設定
    func systemParamSetting() {
        print("LaunchViewController systemParamSetting")
        
        // キューを生成してサブスレッドで実行
        DispatchQueue(label: "systemParamSetting").async {
            
            // 仮
            Thread.sleep(forTimeInterval: 3.0)
            
            // 仮　ここでSystemParameterクラスのFileInit関数を呼び出す必要
            
            
            // バックグラウンド処理後メインスレッドで実行
            DispatchQueue.main.async {
                
                // 仮　上段処理の結果数値をここでチェックして適当な処理をする必要
                
                // メイン画面へ遷移
                self.navigateToMainView()
            }
        }
    }
    
    
    /// メイン画面へ遷移
    func navigateToMainView() {
        print("LaunchViewController navigateToMainView")
        
        // 同じstoryboard内であることを定義
        let storyboard: UIStoryboard = self.storyboard!
        // 移動先のstoryboardを選択
        let main = storyboard.instantiateViewController(withIdentifier: "MainView")
        // メイン画面へ移動
        self.present(main, animated: false, completion: nil)
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

