//
//  ExportSettingViewController.swift
//  keisoku-njj200
//
//  Created by M002 on 2018/12/12.
//  Copyright © 2018年 jp.co.kgs-inc. All rights reserved.
//

import Foundation
import UIKit

/// 出力設定ダイアログ上の全ての項目に対して操作するクラス
class ExportSettingViewController: UIViewController {
    
    // MARK: - Properties
    
    
    /// 画面タイトルバーを非表示にする変数
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    // 画面の自動回転をさせない
    //    override var shouldAutorotate: Bool {
    //        get {
    //            return false
    //        }
    //    }
    
    // 画面をPortraitに指定する
    //    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    //        get {
    //            return .portrait
    //        }
    //    }
    
    
    // MARK: - Override Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ExportSettingViewController viewDidLoad")
        
    }
    
    
    // MARK: - Object Function
    
    
    /// ファイル開くダイアログへ遷移
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnFileOpenTap(_ sender: Any) {
        print("ExportSettingViewController btnFileOpen")
    
        // 現在表示中view controllerを取得
        weak var presentingVC = self.presentingViewController

        // 出力設定ダイアログを閉じる
        self.dismiss(animated: false, completion: {
            // ファイル開くダイアログへ遷移
            self.navigateToFileOpenDialog(presentingVC: presentingVC!)
        })
    }
    
    /// フォルダ設定ダイアログへ遷移
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnFolderSettingTap(_ sender: Any) {
        print("ExportSettingViewController btnFolderSettingTap")
        
        // 現在表示中view controllerを取得
        weak var presentingVC = self.presentingViewController
        
        // 出力設定ダイアログを閉じる
        self.dismiss(animated: false, completion: {
            // ファイル開くダイアログへ遷移
            self.navigateToFolderSettingDialog(presentingVC: presentingVC!)
        })
    }
    
    /// データ番号設定ダイアログへ遷移
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnDataNumSettingTap(_ sender: Any) {
        print("ExportSettingViewController btnDataNumSettingTap")
        
        // 現在表示中view controllerを取得
        weak var presentingVC = self.presentingViewController
        
        // 出力設定ダイアログを閉じる
        self.dismiss(animated: false, completion: {
            // データ番号設定ダイアログへ遷移
            self.navigateToDataNumberDialog(presentingVC: presentingVC!)
        })
    }
    
    /// 設定値を変更してメイン画面へ戻る
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnReturnTap(_ sender: Any) {
        print("ExportSettingViewController btnReturnTap")

        // 出力設定ダイアログを閉じる
        self.dismiss(animated: false, completion: nil)
    }
    
    
    // MARK: - function
    
    
    /// ファイル開くダイアログへ遷移する
    func navigateToFileOpenDialog(presentingVC: UIViewController) {
        print("ExportSettingViewController navigateToFileOpenDialog")

        // 同じstoryboard内であることを定義
        let storyboard: UIStoryboard = UIStoryboard(name: "FileOpen", bundle: nil)
        // 移動先のstoryboardを選択
        let fileOpenView = storyboard.instantiateViewController(withIdentifier: "FileOpenView")
        // 表示中画面上に重なって表示
        fileOpenView.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext

        presentingVC.present(fileOpenView, animated: true, completion: nil)

    }
    
    /// フォルダ設定ダイアログへ遷移する
    func navigateToFolderSettingDialog(presentingVC: UIViewController) {
        print("ExportSettingViewController navigateToFolderSettingDialog")
        
        // 同じstoryboard内であることを定義
        let storyboard: UIStoryboard = UIStoryboard(name: "FolderSetting", bundle: nil)
        // 移動先のstoryboardを選択
        let folderSettingView = storyboard.instantiateViewController(withIdentifier: "FolderSettingView")
        // 表示中画面上に重なって表示
        folderSettingView.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        
        presentingVC.present(folderSettingView, animated: true, completion: nil)
        
    }
    
    /// データ番号設定ダイアログへ遷移する
    func navigateToDataNumberDialog(presentingVC: UIViewController) {
        print("ExportSettingViewController navigateToDataNumberDialog")
        
        // 同じstoryboard内であることを定義
        let storyboard: UIStoryboard = UIStoryboard(name: "DataNumber", bundle: nil)
        // 移動先のstoryboardを選択
        let dataNumberView = storyboard.instantiateViewController(withIdentifier: "DataNumberView")
        // 表示中画面上に重なって表示
        dataNumberView.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        
        presentingVC.present(dataNumberView, animated: true, completion: nil)
        
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
