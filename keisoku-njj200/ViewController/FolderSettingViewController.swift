//
//  FolderSettingViewController.swift
//  keisoku-njj200
//
//  Created by M056 on 2019/01/13.
//  Copyright © 2019 jp.co.kgs-inc. All rights reserved.
//

import UIKit

class FolderSettingViewController: UIViewController {

    // MARK: - Properties
    
    
    /// フォルダラジオボタングループ
    @IBOutlet weak var rdoBtnData1: CustomRadioButton!
    @IBOutlet weak var rdoBtnData2: CustomRadioButton!
    @IBOutlet weak var rdoBtnData3: CustomRadioButton!
    @IBOutlet weak var rdoBtnData4: CustomRadioButton!
    @IBOutlet weak var rdoBtnData5: CustomRadioButton!
    @IBOutlet weak var rdoBtnData6: CustomRadioButton!
    @IBOutlet weak var rdoBtnData7: CustomRadioButton!
    @IBOutlet weak var rdoBtnData8: CustomRadioButton!
    @IBOutlet weak var rdoBtnData9: CustomRadioButton!
    @IBOutlet weak var rdoBtnData10: CustomRadioButton!
    
    /// 画面タイトルバーを非表示にする変数
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    
    // MARK: - Override Method
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("FolderSettingViewController viewDidLoad")
        
        // 仮
        // ラジオボタン選択の初期設定をここでする
        rdoBtnData1.isSelected = true
    }
    

    
    // MARK: - Object Function
    
    /// フォルダ番号を設定する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnData1Tap(_ sender: CustomRadioButton) {
        print("FolderSettingViewController rdoBtnData1Tap")
        
        sender.isSelected = true
        
        rdoBtnData2.isSelected = false
        rdoBtnData3.isSelected = false
        rdoBtnData4.isSelected = false
        rdoBtnData5.isSelected = false
        rdoBtnData6.isSelected = false
        rdoBtnData7.isSelected = false
        rdoBtnData8.isSelected = false
        rdoBtnData9.isSelected = false
        rdoBtnData10.isSelected = false
    }
    
    /// フォルダ番号を設定する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnData2Tap(_ sender: CustomRadioButton) {
        print("FolderSettingViewController rdoBtnData2Tap")
        
        sender.isSelected = true
        
        rdoBtnData1.isSelected = false
        rdoBtnData3.isSelected = false
        rdoBtnData4.isSelected = false
        rdoBtnData5.isSelected = false
        rdoBtnData6.isSelected = false
        rdoBtnData7.isSelected = false
        rdoBtnData8.isSelected = false
        rdoBtnData9.isSelected = false
        rdoBtnData10.isSelected = false
    }
    
    /// フォルダ番号を設定する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnData3Tap(_ sender: CustomRadioButton) {
        print("FolderSettingViewController rdoBtnData3Tap")
        
        sender.isSelected = true
        
        rdoBtnData1.isSelected = false
        rdoBtnData2.isSelected = false
        rdoBtnData4.isSelected = false
        rdoBtnData5.isSelected = false
        rdoBtnData6.isSelected = false
        rdoBtnData7.isSelected = false
        rdoBtnData8.isSelected = false
        rdoBtnData9.isSelected = false
        rdoBtnData10.isSelected = false
    }
    
    /// フォルダ番号を設定する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnData4Tap(_ sender: CustomRadioButton) {
        print("FolderSettingViewController rdoBtnData4Tap")
        
        sender.isSelected = true
        
        rdoBtnData1.isSelected = false
        rdoBtnData2.isSelected = false
        rdoBtnData3.isSelected = false
        rdoBtnData5.isSelected = false
        rdoBtnData6.isSelected = false
        rdoBtnData7.isSelected = false
        rdoBtnData8.isSelected = false
        rdoBtnData9.isSelected = false
        rdoBtnData10.isSelected = false
    }
    
    /// フォルダ番号を設定する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnData5Tap(_ sender: CustomRadioButton) {
        print("FolderSettingViewController rdoBtnData5Tap")
        
        sender.isSelected = true
        
        rdoBtnData1.isSelected = false
        rdoBtnData2.isSelected = false
        rdoBtnData3.isSelected = false
        rdoBtnData4.isSelected = false
        rdoBtnData6.isSelected = false
        rdoBtnData7.isSelected = false
        rdoBtnData8.isSelected = false
        rdoBtnData9.isSelected = false
        rdoBtnData10.isSelected = false
    }
    
    /// フォルダ番号を設定する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnData6Tap(_ sender: CustomRadioButton) {
        print("FolderSettingViewController rdoBtnData6Tap")
        
        sender.isSelected = true
        
        rdoBtnData1.isSelected = false
        rdoBtnData2.isSelected = false
        rdoBtnData3.isSelected = false
        rdoBtnData4.isSelected = false
        rdoBtnData5.isSelected = false
        rdoBtnData7.isSelected = false
        rdoBtnData8.isSelected = false
        rdoBtnData9.isSelected = false
        rdoBtnData10.isSelected = false
    }
    
    /// フォルダ番号を設定する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnData7Tap(_ sender: CustomRadioButton) {
        print("FolderSettingViewController rdoBtnData7Tap")
        
        sender.isSelected = true
        
        rdoBtnData1.isSelected = false
        rdoBtnData2.isSelected = false
        rdoBtnData3.isSelected = false
        rdoBtnData4.isSelected = false
        rdoBtnData5.isSelected = false
        rdoBtnData6.isSelected = false
        rdoBtnData8.isSelected = false
        rdoBtnData9.isSelected = false
        rdoBtnData10.isSelected = false
    }
    
    /// フォルダ番号を設定する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnData8Tap(_ sender: CustomRadioButton) {
        print("FolderSettingViewController rdoBtnData8Tap")
        
        sender.isSelected = true
        
        rdoBtnData1.isSelected = false
        rdoBtnData2.isSelected = false
        rdoBtnData3.isSelected = false
        rdoBtnData4.isSelected = false
        rdoBtnData5.isSelected = false
        rdoBtnData6.isSelected = false
        rdoBtnData7.isSelected = false
        rdoBtnData9.isSelected = false
        rdoBtnData10.isSelected = false
    }
    
    /// フォルダ番号を設定する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnData9Tap(_ sender: CustomRadioButton) {
        print("FolderSettingViewController rdoBtnData9Tap")
        
        sender.isSelected = true
        
        rdoBtnData1.isSelected = false
        rdoBtnData2.isSelected = false
        rdoBtnData3.isSelected = false
        rdoBtnData4.isSelected = false
        rdoBtnData5.isSelected = false
        rdoBtnData6.isSelected = false
        rdoBtnData7.isSelected = false
        rdoBtnData8.isSelected = false
        rdoBtnData10.isSelected = false
    }
    
    /// フォルダ番号を設定する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnData10Tap(_ sender: CustomRadioButton) {
        print("FolderSettingViewController rdoBtnData10Tap")
        
        sender.isSelected = true
        
        rdoBtnData1.isSelected = false
        rdoBtnData2.isSelected = false
        rdoBtnData3.isSelected = false
        rdoBtnData4.isSelected = false
        rdoBtnData5.isSelected = false
        rdoBtnData6.isSelected = false
        rdoBtnData7.isSelected = false
        rdoBtnData8.isSelected = false
        rdoBtnData9.isSelected = false
    }
    
    /// フォルダ設定ダイアログを閉じて、出力設定画面へ戻る
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnCancelTap(_ sender: Any) {
        print("FolderSettingViewController btnCancelTap")
        
        //仮
        // フォルダ設定ダイアログを閉じる
        self.dismiss(animated: false, completion: {
            
            let topVC = self.topMostController()
            // 同じstoryboard内であることを定義
            let storyboard: UIStoryboard = UIStoryboard(name: "ExportSetting", bundle: nil)
            // 移動先のstoryboardを選択
            let exportSettingView = storyboard.instantiateViewController(withIdentifier: "ExportSettingView")
            // 表示中画面上に重なって表示
            exportSettingView.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            
            // 出力設定ダイアログを表示
            topVC.present(exportSettingView, animated: true, completion: nil)
            
        })
    }
    
    /// 選択している値でフォルダ番号を設定する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnOKTap(_ sender: Any) {
        print("FolderSettingViewController btnOKTap")
        
        //仮
        // フォルダ設定ダイアログを閉じる
        self.dismiss(animated: false, completion: {
            
            let topVC = self.topMostController()
            // 同じstoryboard内であることを定義
            let storyboard: UIStoryboard = UIStoryboard(name: "ExportSetting", bundle: nil)
            // 移動先のstoryboardを選択
            let exportSettingView = storyboard.instantiateViewController(withIdentifier: "ExportSettingView")
            // 表示中画面上に重なって表示
            exportSettingView.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            
            // 出力設定ダイアログを表示
            topVC.present(exportSettingView, animated: true, completion: nil)
            
        })
    }
    
    // MARK: - function
    
    
    /// 表示中のroot view controllerを取得
    ///
    /// - Returns:表示中のroot view controller
    func topMostController() -> UIViewController {
        var topController: UIViewController = UIApplication.shared.keyWindow!.rootViewController!
        while (topController.presentedViewController != nil) {
            topController = topController.presentedViewController!
        }
        return topController
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
