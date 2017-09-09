//
//  BaseView.swift
//  TinderStarterProject
//
//  Created by Kuliza-282 on 09/09/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        setUpViews()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews() {
        //perform UI configuration in child classes
    }

}
