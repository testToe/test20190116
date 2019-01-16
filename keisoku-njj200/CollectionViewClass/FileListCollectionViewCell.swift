//
//  FileListCollectionViewCell.swift
//  keisoku-njj200
//
//  Created by M056 on 2019/01/13.
//  Copyright © 2019 jp.co.kgs-inc. All rights reserved.
//

import UIKit

class FileListCollectionViewCell: UICollectionViewCell {
    
    static let reuseID = "FileListCollectionViewCell"
    
    @IBOutlet weak var lblFileName: UILabel!
    @IBOutlet weak var lblUpdatedDateTime: UILabel!
    
    override var isSelected: Bool{
        didSet{
            if self.isSelected {
                let highlightColor: UIColor = UIColor(red: 111/255, green: 194/255, blue: 255/255, alpha: 1)
                self.contentView.backgroundColor = highlightColor
                self.lblFileName.backgroundColor = highlightColor
                self.lblUpdatedDateTime.backgroundColor = highlightColor
            } else {
                self.contentView.backgroundColor = UIColor.clear
                self.lblFileName.backgroundColor = UIColor.clear
                self.lblUpdatedDateTime.backgroundColor = UIColor.clear
            }
        }
    }
    
}
