//
//  MarkerSortViewController.swift
//  keisoku-njj200
//
//  Created by M056 on 2019/01/12.
//  Copyright © 2019 jp.co.kgs-inc. All rights reserved.
//

import UIKit

class MarkerSortViewController: UIViewController {

    // MARK: - Properties
    
    /// 「昇順」ラジオボタン
    @IBOutlet weak var rdoBtnAscending: CustomRadioButton!
    
    /// 「降順」ラジオボタン
    @IBOutlet weak var rdoBtnDescending: CustomRadioButton!
    
    /// 画面タイトルバーを非表示にする変数
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    // MARK: - Override Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MarkerSortViewController viewDidLoad")

        // 仮
        // ラジオボタン選択の初期設定をここでする
        rdoBtnAscending.isSelected = true
    }
    
    // MARK: - Object Function
    
    /// 表示中データのマーカを昇順で表示する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnAscendingTap(_ sender: CustomRadioButton) {
        print("MarkerSortViewController rdoBtnAscendingTap")
        
        sender.isSelected = true
        
        rdoBtnDescending.isSelected = false
    }
    
    /// 表示中データのマーカを降順で表示する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnDescendingTap(_ sender: CustomRadioButton) {
        print("MarkerSortViewController rdoBtnDescendingTap")
        
        sender.isSelected = true
        
        rdoBtnAscending.isSelected = false
    }
    
    /// マーカソートダイアログを閉じてキャンセルする
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnCancelTap(_ sender: Any) {
        print("MarkerSortViewController btnCancelTap")
        
        // マーカソートダイアログを閉じる
        self.dismiss(animated: false, completion: nil)
    }
    
    /// マーカソートダイアログを閉じて、選択した昇順/降順で表示中マーカをソートして表示する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnOKTap(_ sender: Any) {
        print("MarkerSortViewController btnOKTap")
        
        // 仮
        // マーカソートダイアログを閉じる
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
