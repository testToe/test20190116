//
//  FileOpenViewController.swift
//  keisoku-njj200
//
//  Created by M056 on 2019/01/13.
//  Copyright © 2019 jp.co.kgs-inc. All rights reserved.
//

import UIKit

class FileOpenViewController: UIViewController {

    // MARK: - Properties
    
    /// ファイルリストcollection view
    @IBOutlet weak var fileListCollectionView: UICollectionView!
    
    /// ファイルリストcollection viewのレイアウト
    @IBOutlet weak var fileListCollectionLayout: FileListCollectionViewLayout! {
        didSet {
            /// 固定行数
            fileListCollectionLayout.stickyRowsCount = 0
        }
    }
    
    /// 画面タイトルバーを非表示にする変数
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    // MARK: - Override Method
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("FileOpenViewController viewDidLoad")
        
    }
    

    
    // MARK: - Object Function
    
    /// 対象フォルダ内にある全ファイルを削除する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnDeleteAllFileTap(_ sender: Any) {
        print("FileOpenViewController btnDeleteAllFileTap")
        
        //仮
        // ファイル開くダイアログを閉じる
        self.dismiss(animated: false, completion: nil)
        
    }
    
    /// ファイル開くダイアログを閉じて、出力設定ダイアログを表示する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnCancelTap(_ sender: Any) {
        print("FileOpenViewController btnCancelTap")
        
        //仮
        // ファイル開くダイアログを閉じる
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
    
    /// 選択しているファイルを削除する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnDeleteTap(_ sender: Any) {
        print("FileOpenViewController btnDeleteTap")
        
        //仮
        // ファイル開くダイアログを閉じる
        self.dismiss(animated: false, completion: nil)
    }
    
    /// 選択しているファイルを読み込んでメイン画面に反映する
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnReadTap(_ sender: Any) {
        print("FileOpenViewController btnReadTap")
        
        //仮
        // ファイル開くダイアログを閉じる
        self.dismiss(animated: false, completion: nil)
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


// MARK: - Collection view data source and delegate methods


extension FileOpenViewController: UICollectionViewDataSource {
    
    /// マーカリストの行数を返却する
    ///
    /// - Parameter collectionView: マーカリスト
    /// - Returns: 行数
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // 仮
        return 25
    }
    
    /// マーカリストの列数を返却する
    ///
    /// - Parameters:
    ///   - collectionView: マーカリスト
    ///   - section: 行数
    /// - Returns: 列数
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return 1
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
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FileListCollectionViewCell.reuseID,
                                                            for: indexPath) as? FileListCollectionViewCell else {
                                                                return UICollectionViewCell()
        }
        // セル指数から行番号を取得
        let row = indexPath.section
        //        // セル指数から列番号を取得
        let column = indexPath.item
        
        cell.lblFileName.text = "\(row)"
        cell.lblUpdatedDateTime.text = "\(column)"
        
        // 仮
        if (row == 0) {
            cell.lblFileName.text = "20190113_140759_001.KHS"
            cell.lblUpdatedDateTime.text = "更新日時：" + "2019/01/13 14:07:59"
        }
        
        // セルを返却
        return cell
    }
    
    /// セルが完全に選択されたタイミングでコールされる関数
    ///
    /// - Parameters:
    ///   - collectionView: ファイルリスト
    ///   - indexPath: 選択されたセルのindex
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        /// 選択されたセル
        let cell = collectionView.cellForItem(at: indexPath) as? FileListCollectionViewCell
        
        print("selected cell indexPath===", indexPath)
        print("selected cell value lblFileName===", cell!.lblFileName.text ?? "test")
        print("selected cell value lblUpdatedDateTime===", cell!.lblUpdatedDateTime.text ?? "test")
        
    }
}

extension FileOpenViewController: UICollectionViewDelegateFlowLayout {
    
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
        
        // セル幅を計算：マーカリストの幅 / 列数
        let cellWidth = self.fileListCollectionView.frame.width
        // セル高さを計算：マーカリストの高さ / 行数3
        let cellHeight = self.fileListCollectionView.frame.height / 7
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
}

