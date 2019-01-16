//
//  MainViewController.swift
//  keisoku-njj200
//
//  Created by M002 on 2018/11/14.
//  Copyright © 2018年 jp.co.kgs-inc. All rights reserved.
//

import Foundation
import UIKit

/// メイン画面上の全ての項目に対して操作するクラス
class MainViewController: UIViewController {
    
    /// command + Alt + /
    
    // MARK: - Properties
    
    /// マーカリスト
    @IBOutlet weak var markerCollectionView: UICollectionView!
    
    /// マーカリスト用のレイアウト
    @IBOutlet weak var markerCollectionLayout: MarkerCollectionViewLayout! {
        didSet {
            markerCollectionLayout.stickyColumnsCount = 1
        }
    }
    
    /// マーカボタン
    @IBOutlet weak var btnMarker: UIButton!
    
    /// 出力ボタン
    @IBOutlet weak var btnExport: UIButton!
    
    /// メニューボタン
    @IBOutlet weak var btnMenu: UIButton!
    
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
        print("MainViewController viewDidLoad")
        
        /// マーカボタンタップイベント
        let btnMarkerTapGesture = UITapGestureRecognizer(target: self,
                                                         action: #selector(btnMarkerTap(_:)))
        btnMarkerTapGesture.numberOfTapsRequired = 1
        btnMarker.addGestureRecognizer(btnMarkerTapGesture)
        
        /// マーカボタン長押しイベント
        let btnMarkerLogPressGesture = UILongPressGestureRecognizer(target: self,
                                                                    action: #selector(btnMarkerLongPress(_:)))
        btnMarker.addGestureRecognizer(btnMarkerLogPressGesture)
        
        /// 出力ボタンタップイベント
        let btnExportTapGesture = UITapGestureRecognizer(target: self,
                                                         action: #selector(btnExportTap(_:)))
        btnExportTapGesture.numberOfTapsRequired = 1
        btnExport.addGestureRecognizer(btnExportTapGesture)
        
        /// 出力ボタン長押しイベント
        let btnExportLogPressGesture = UILongPressGestureRecognizer(target: self,
                                                                    action: #selector(btnExportLongPress(_:)))
        btnExport.addGestureRecognizer(btnExportLogPressGesture)
        
        // メニューボタンタップイベント
        let btnMenuTapGesture = UITapGestureRecognizer(target: self,
                                                         action: #selector(btnMenuTap(_:)))
        btnMenuTapGesture.numberOfTapsRequired = 1
        btnMenu.addGestureRecognizer(btnMenuTapGesture)
        
        // メニューボタン長押しイベント
        let btnMenuLogPressGesture = UILongPressGestureRecognizer(target: self,
                                                                    action: #selector(btnMenuLongPress(_:)))
        btnMenu.addGestureRecognizer(btnMenuLogPressGesture)
    }
    
    
    // MARK: - Object Function
    
    /// マーカボタンタップイベント
    ///
    /// 仮：マーカ追加・削除機能〜〜
    ///
    /// - Parameter sender: タップイベント
    @objc func btnMarkerTap(_ sender: UIGestureRecognizer) {
        print("MainViewController btnMarkerTap")
    }
    
    /// マーカ設定ダイアログへ遷移
    ///
    /// - Parameter sender: 長押しイベント
    @objc func btnMarkerLongPress(_ sender: UIGestureRecognizer) {
        print("MainViewController btnMarkerLongPress")
        
        // 長押しイベントが開始した場合
        if (sender.state == .began) {
            // マーカ設定ダイアログへ遷移
            self.navigateToMarkerSettingDialog()
        }
    }
    
    /// 出力ボタンタップイベント
    ///
    /// 仮：出力機能〜〜
    ///
    /// - Parameter sender: タップイベント
    @objc func btnExportTap(_ sender: UIGestureRecognizer) {
        print("MainViewController btnExportTap")
    }
    
    /// 出力ボタン長押しイベント
    ///
    /// 出力設定ダイアログへ遷移
    ///
    /// - Parameter sender: 長押しイベント
    @objc func btnExportLongPress(_ sender: UIGestureRecognizer) {
        print("MainViewController btnExportLongPress")
        
        // 長押しイベントが開始した場合
        if (sender.state == .began) {
            // 出力設定ダイアログへ遷移
            self.navigateToExportSettingDialog()
        }
    }
    
    /// メニューボタンタップイベント
    ///
    /// 仮：表示設定メニュー〜〜
    ///
    /// - Parameter sender: タップイベント
    @objc func btnMenuTap(_ sender: UIGestureRecognizer) {
        print("MainViewController btnMenuTap")
    }
    
    /// メニューボタン長押しイベント
    ///
    /// - Parameter sender: 長押しイベント
    @objc func btnMenuLongPress(_ sender: UIGestureRecognizer) {
        print("MainViewController btnMenuLongPress")
        
        // 長押しイベントが開始した場合
        if (sender.state == .began) {
            // 出力設定ダイアログへ遷移
            self.navigateToMenuSettingDialog()
        }
    }
    
    
    
    // MARK: - function
    
    /// マーカ設定ダイアログへ遷移する
    func navigateToMarkerSettingDialog() {
        print("MainViewController navigateToMarkerSettingDialog")
        
        // 同じstoryboard内であることを定義
        let storyboard: UIStoryboard = UIStoryboard(name: "MarkerSetting", bundle: nil)
        // 移動先のstoryboardを選択
        let markerSettingView = storyboard.instantiateViewController(withIdentifier: "MarkerSettingView")
        // 表示中画面上に重なって表示
        markerSettingView.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        
        // マーカ設定ダイアログを表示
        self.present(markerSettingView, animated: true, completion: nil)
        
    }
    
    /// 出力設定ダイアログへ遷移
    func navigateToExportSettingDialog() {
        print("MainViewController navigateToExportSettingDialog")
        
        // 同じstoryboard内であることを定義
        let storyboard: UIStoryboard = UIStoryboard(name: "ExportSetting", bundle: nil)
        // 移動先のstoryboardを選択
        let exportSettingView = storyboard.instantiateViewController(withIdentifier: "ExportSettingView")
        // 表示中画面上に重なって表示
        exportSettingView.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        
        // 出力設定ダイアログを表示
        self.present(exportSettingView, animated: true, completion: nil)
        
    }
    
    /// メニュー設定ダイアログへ遷移
    func navigateToMenuSettingDialog() {
        print("MainViewController navigateToMenuSettingDialog")
        
        // 同じstoryboard内であることを定義
        let storyboard: UIStoryboard = UIStoryboard(name: "MenuSetting", bundle: nil)
        // 移動先のstoryboardを選択
        let menuSettingView = storyboard.instantiateViewController(withIdentifier: "MenuSettingView")
        // 表示中画面上に重なって表示
        menuSettingView.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        
        // 出力設定ダイアログを表示
        self.present(menuSettingView, animated: true, completion: nil)
        
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

// MARK: - Collection view data source and delegate methods

extension MainViewController: UICollectionViewDataSource {

    /// マーカリストの行数を返却する
    ///
    /// - Parameter collectionView: マーカリスト
    /// - Returns: 行数
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }

    /// マーカリストの列数を返却する
    ///
    /// - Parameters:
    ///   - collectionView: マーカリスト
    ///   - section: 行数
    /// - Returns: 列数
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        // 仮
        return 10
    }

    /// マーカリストのセルを準備する
    ///
    /// - Parameters:
    ///   - collectionView: マーカリスト
    ///   - indexPath: セル指数
    /// - Returns: セル
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // マーカリストのセルであるかを判定する
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MarkerCollectionViewCell.reuseID,
                                                            for: indexPath) as? MarkerCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        // セル指数から行を取得
        let row = indexPath.section
        // セル指数から列を取得
        let column = indexPath.item

        // 仮
        // １列目の固定文言を設定する
        if (row == 0 && column == 0) {
            cell.lblMarker.text = "ID"
        } else if (row == 1 && column == 0) {
            cell.lblMarker.text = NSLocalizedString("distance0", comment: "distance0") + "mm"
        } else if (row == 2 && column == 0) {
            cell.lblMarker.text = NSLocalizedString("depth0", comment: "depth0") + "mm"
        } else {
            cell.lblMarker.text = "\(indexPath)"
        }

        // セルを返却
        return cell
    }
}

extension MainViewController: UICollectionViewDelegateFlowLayout {

    /// マーカリストのセルサイズを計算する
    ///
    /// - Parameters:
    ///   - collectionView: マーカリスト
    ///   - collectionViewLayout: マーカリストのレイアウト
    ///   - indexPath: セル指数
    /// - Returns: セルサイズ
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // セル幅を計算：マーカリストの幅 / 列数6
        let cellWidth = self.markerCollectionView.frame.width / 6
        // セル高さを計算：マーカリストの高さ / 行数3
        let cellHeight = self.markerCollectionView.frame.height / 3
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
}
