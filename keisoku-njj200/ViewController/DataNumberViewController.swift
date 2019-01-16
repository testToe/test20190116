//
//  DataNumberViewController.swift
//  keisoku-njj200
//
//  Created by M056 on 2019/01/14.
//  Copyright © 2019 jp.co.kgs-inc. All rights reserved.
//

import UIKit

class DataNumberViewController: UIViewController {

    // MARK: - Properties
    
    @IBOutlet weak var txtDataNumber: UITextField!
    
    
    /// 画面タイトルバーを非表示にする変数
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    
    // MARK: - Override Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("DataNumberViewController viewDidLoad")
    }
    
    
    
    // MARK: - Object Function
    
    
    /// データ番号設定ダイアログを閉じる
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnCancelTap(_ sender: Any) {
        print("DataNumberViewController btnCancelTap")
        
        //仮
        // データ番号設定ダイアログを閉じる
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
    
    /// 選択している値でデータ番号を設定する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnOKTap(_ sender: Any) {
        print("DataNumberViewController btnOKTap")
        
        //仮
        // データ番号設定ダイアログを閉じる
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



// MARK: - extension UITextField



extension UITextField {
    func loadDropdownData(data: [String]) {
//        self.inputView = MyPickerView(pickerData: data, dropdownField: self)
    }
}
