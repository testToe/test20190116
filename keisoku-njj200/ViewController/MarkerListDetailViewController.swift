//
//  MarkerListDetailViewController.swift
//  keisoku-njj200
//
//  Created by M056 on 2019/01/09.
//  Copyright © 2019 jp.co.kgs-inc. All rights reserved.
//

import Foundation
import UIKit

class MarkerListDetailViewController: UIViewController {

    // MARK: - Properties
    
    /// 「マーカグループ 0」ラジオボタン
    @IBOutlet weak var rdoBtnGrp0: CustomRadioButton!
    
    /// 「マーカグループ 1」ラジオボタン
    @IBOutlet weak var rdoBtnGrp1: CustomRadioButton!
    
    /// 「マーカグループ 2」ラジオボタン
    @IBOutlet weak var rdoBtnGrp2: CustomRadioButton!
    
    /// マーカリスト詳細collection view
    @IBOutlet weak var markerDetailCollectionView: UICollectionView!
    
    /// マーカリスト詳細collection viewのレイアウト
    @IBOutlet weak var markerDetailCollectionLayout: MarkerDetailCollectionViewLayout! {
        didSet {
            /// 固定行数
            markerDetailCollectionLayout.stickyRowsCount = 1
        }
    }
    
    /// 画面タイトルバーを非表示にする変数
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    
    // MARK: - Override Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MarkerListDetailViewController viewDidLoad")
        
        // 仮
        // ラジオボタン選択の初期設定をここでする
        rdoBtnGrp0.isSelected = true
        
    }
    
    // MARK: - Object Function
    
    /// ラジオボタンマーカグループ 0を選択した時対象のマーカリストを表示
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnGrp0(_ sender: CustomRadioButton) {
        print("MarkerListDetailViewController rdoBtnGrp0")
        
        sender.isSelected = true
        
        rdoBtnGrp1.isSelected = false
        rdoBtnGrp2.isSelected = false
    }
    
    
    /// ラジオボタンマーカグループ 1を選択した時対象のマーカリストを表示
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnGrp1(_ sender: CustomRadioButton) {
        print("MarkerListDetailViewController rdoBtnGrp1")
        
        sender.isSelected = true
        
        rdoBtnGrp0.isSelected = false
        rdoBtnGrp2.isSelected = false
    }
    
    /// ラジオボタンマーカグループ 1を選択した時対象のマーカリストを表示
    ///
    /// - Parameter sender: タップイベント
    @IBAction func rdoBtnGrp2(_ sender: CustomRadioButton) {
        print("MarkerListDetailViewController rdoBtnGrp2")
        
        sender.isSelected = true
        
        rdoBtnGrp0.isSelected = false
        rdoBtnGrp1.isSelected = false
    }
    
    /// マーカリスト詳細ダイアログを閉じる
    ///
    /// - Parameter sender: タップイベント
    @IBAction func btnOKTap(_ sender: Any) {
        print("MarkerListDetailViewController btnOKTap")
        
        // マーカリスト詳細ダイアログを閉じる
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



// MARK: - Collection view data source and delegate methods

extension MarkerListDetailViewController: UICollectionViewDataSource {
    
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
        return 4
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
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MarkerDetailCollectionViewCell.reuseID,
                                                                    for: indexPath) as? MarkerDetailCollectionViewCell else {
                                                                        return UICollectionViewCell()
        }
        // セル指数から行番号を取得
        let row = indexPath.section
//        // セル指数から列番号を取得
        let column = indexPath.item
        
        // 仮
        // １行目の固定文言を設定する
        if (row == 0 && column == 0) {
            cell.lblMarkerDetail.text = NSLocalizedString("id", comment: "id")
        } else if (row == 0 && column == 1) {
            cell.lblMarkerDetail.text = NSLocalizedString("distance0", comment: "distance0") + "mm"
        } else if (row == 0 && column == 2) {
            cell.lblMarkerDetail.text = NSLocalizedString("depth0", comment: "depth0") + "mm"
        } else if (row == 0 && column == 3) {
            cell.lblMarkerDetail.text = NSLocalizedString("print_markerpitch", comment: "print_markerpitch") + "mm"
        } else {
            cell.lblMarkerDetail.text = "\(indexPath)"
        }
        
        // セルを返却
        return cell
    }
}

extension MarkerListDetailViewController: UICollectionViewDelegateFlowLayout {
    
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
        
        // セル指数から列番号を取得
        let column = indexPath.item
        var cellWidth: CGFloat = 0.0
        let col0IndexPath = IndexPath(item: 0, section: 0)
        var cellWidthFirstCol: CGFloat = 0.0
        
        // １列目の幅を設定する
        if (column == 0) {
            // セル幅を計算：マーカリストの幅 / 7
            cellWidth = self.markerDetailCollectionView.frame.width / 7
        } else {
            cellWidthFirstCol = self.markerDetailCollectionView.cellForItem(at: col0IndexPath)?.frame.width ?? ((self.markerDetailCollectionView.frame.width / 7) + 0.5)
            // セル幅を計算：マーカリストの幅 / 列数
            cellWidth = (self.markerDetailCollectionView.frame.width - cellWidthFirstCol) / 3
        }
        
        // セル高さを計算：マーカリストの高さ / 行数15
        let cellHeight = self.markerDetailCollectionView.frame.height / 15
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
}
