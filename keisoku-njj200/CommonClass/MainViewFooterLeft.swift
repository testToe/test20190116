//
//  MainViewFooterLeft.swift
//  keisoku-njj200
//
//  Created by M056 on 2019/01/06.
//  Copyright © 2019 jp.co.kgs-inc. All rights reserved.
//

import UIKit

class MainViewFooterLeft: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect){
        super.init(frame: frame)
        loadNib()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }
    
    func loadNib(){
        let view = Bundle.main.loadNibNamed("MainViewFooterLeft", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }

}
