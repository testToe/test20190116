//
//  MarkerSettingViewController.swift
//  keisoku-njj200
//
//  Created by M002 on 2018/12/12.
//  Copyright © 2018年 jp.co.kgs-inc. All rights reserved.
//

import Foundation
import UIKit

/// マーカ設定ダイアログ上の全ての項目に対して操作するクラス
class MarkerSettingViewController: UIViewController {
    
    // MARK: - Properties
    
    
    /// 画面タイトルバーを非表示にする変数
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    /// マーカリスト詳細ダイアログ表示用のprotocol
//    var presentMarkerListDetailViewProtocol: PresentMarkerListDetailViewProtocol?
    
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
        print("MarkerSettingViewController viewDidLoad")
        
    }
    
    
    // MARK: - Object Function
    
    
    /// マーカリスト詳細ダイアログへ遷移
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnMarkerDetailTap(_ sender: Any) {
        print("MarkerSettingViewController btnMarkerDetailTap")

        // 仮：データがなければアラート表示する等々

        // 現在表示中view controllerを取得
        weak var presentingVC = self.presentingViewController

        // マーカ設定ダイアログを閉じる
        self.dismiss(animated: false, completion: {
            // マーカリスト詳細ダイアログへ遷移
            self.navigateToMarkerListDetailDialog(presentingVC: presentingVC!)
        })
    }
    
    /// マーカリスト詳細ダイアログへ遷移
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnMarkerSortTap(_ sender: Any) {
        print("MarkerSettingViewController btnMarkerSortTap")
        
        // 仮：データがなければアラート表示する等々
        
        // 現在表示中view controllerを取得
        weak var presentingVC = self.presentingViewController
        
        // マーカ設定ダイアログを閉じる
        self.dismiss(animated: false, completion: {
            // マーカリスト詳細ダイアログへ遷移
            self.navigateToMarkerSortDialog(presentingVC: presentingVC!)
        })
    }
    
    /// 自動検出ダイアログへ遷移
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnAutoMarkTap(_ sender: Any) {
        print("MarkerSettingViewController btnAutoMarkTap")
        
        // 現在表示中view controllerを取得
        weak var presentingVC = self.presentingViewController
        
        // マーカ設定ダイアログを閉じる
        self.dismiss(animated: false, completion: {
            // 自動検出ダイアログへ遷移
            self.navigateToAutoMarkDialog(presentingVC: presentingVC!)
        })
    }
    
    /// マーカグループ設定ダイアログへ遷移
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnMarkerGrpSettingTap(_ sender: Any) {
        print("MarkerSettingViewController btnMarkerGrpSettingTap")
        
        // 現在表示中view controllerを取得
        weak var presentingVC = self.presentingViewController
        
        // マーカ設定ダイアログを閉じる
        self.dismiss(animated: false, completion: {
            // マーカグループ設定ダイアログへ遷移
            self.navigateToMarkerGrpSettingDialog(presentingVC: presentingVC!)
        })
    }
    
    /// メイン画面へ戻るボタンタップイベント
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnReturnTap(_ sender: Any) {
        print("MarkerSettingViewController btnReturnTap")

        // マーカ設定ダイアログを閉じる
        self.dismiss(animated: false, completion: nil)
    }
    
    // MARK: - function
    
    /// マーカリスト詳細ダイアログへ遷移する
    func navigateToMarkerListDetailDialog(presentingVC: UIViewController) {
        print("MarkerSettingViewController navigateToMarkerListDetailDialog")

        // 同じstoryboard内であることを定義
        let storyboard: UIStoryboard = UIStoryboard(name: "MarkerSetting", bundle: nil)
        // 移動先のstoryboardを選択
        let markerListDetailView = storyboard.instantiateViewController(withIdentifier: "MarkerListDetailView")
        // 表示中画面上に重なって表示
        markerListDetailView.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        
        presentingVC.present(markerListDetailView, animated: true, completion: nil)

    }
    
    /// マーカソートダイアログへ遷移する
    func navigateToMarkerSortDialog(presentingVC: UIViewController) {
        print("MarkerSettingViewController navigateToMarkerSortDialog")
        
        // 同じstoryboard内であることを定義
        let storyboard: UIStoryboard = UIStoryboard(name: "MarkerSetting", bundle: nil)
        // 移動先のstoryboardを選択
        let markerSortView = storyboard.instantiateViewController(withIdentifier: "MarkerSortView")
        // 表示中画面上に重なって表示
        markerSortView.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        
        presentingVC.present(markerSortView, animated: true, completion: nil)
        
    }
    
    /// 自動検出ダイアログへ遷移する
    func navigateToAutoMarkDialog(presentingVC: UIViewController) {
        print("MarkerSettingViewController navigateToAutoMarkDialog")
        
        // 同じstoryboard内であることを定義
        let storyboard: UIStoryboard = UIStoryboard(name: "MarkerSetting", bundle: nil)
        // 移動先のstoryboardを選択
        let autoMarkView = storyboard.instantiateViewController(withIdentifier: "AutoMarkView")
        // 表示中画面上に重なって表示
        autoMarkView.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        
        presentingVC.present(autoMarkView, animated: true, completion: nil)
        
    }
    
    /// マーカグループ設定ダイアログへ遷移する
    func navigateToMarkerGrpSettingDialog(presentingVC: UIViewController) {
        print("MarkerSettingViewController navigateToMarkerGrpSettingDialog")
        
        // 同じstoryboard内であることを定義
        let storyboard: UIStoryboard = UIStoryboard(name: "MarkerSetting", bundle: nil)
        // 移動先のstoryboardを選択
        let markerGroupSettingView = storyboard.instantiateViewController(withIdentifier: "MarkerGroupSettingView")
        // 表示中画面上に重なって表示
        markerGroupSettingView.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        
        presentingVC.present(markerGroupSettingView, animated: true, completion: nil)
        
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
