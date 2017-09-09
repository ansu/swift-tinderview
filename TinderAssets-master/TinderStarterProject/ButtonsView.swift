//
//  ButtonsView.swift
//  TinderStarterProject
//
//  Created by Kuliza-282 on 09/09/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit


class ButtonsView: BaseView {
    lazy var likeButton: UIButton = {
        let b = ButtonFactory.buttonWithImage(image:         UIImage(imageLiteralResourceName: "like 3")
 , cornerRadius: 0, target: self, selector: #selector(like), sizeToFit: true).new
        return b
    }()
    
    lazy var passButton: UIButton = {
        let b = ButtonFactory.buttonWithImage(image: #imageLiteral(resourceName: "pass"), cornerRadius: 0, target: self, selector: #selector(pass), sizeToFit: true).new
        return b
    }()
    
    lazy var superLikeButton: UIButton = {
        let b = ButtonFactory.buttonWithImage(image: #imageLiteral(resourceName: "superlike"), cornerRadius: 0, target: self, selector: #selector(superLike), sizeToFit: true).new
        return b
    }()
    
    lazy var container: UIStackView = {
        let c = UIStackView(arrangedSubviews: [
            self.likeButton, self.passButton, self.superLikeButton
            ])
        c.translatesAutoresizingMaskIntoConstraints = false
        c.spacing = 20
        c.distribution = .fillEqually
        return c
    }()
    
    override func setUpViews() {
        addSubview(container)
        
        NSLayoutConstraint.activate([
            container.leadingAnchor.constraint(equalTo: leadingAnchor),
            container.topAnchor.constraint(equalTo: topAnchor),
            container.widthAnchor.constraint(equalTo: widthAnchor),
            container.heightAnchor.constraint(equalTo: heightAnchor)
            ])
    }
    
    func like() {
        print("like print")
    }
    func pass() {
        print("pass print")
    }
    
    func superLike() {
        print("super like print")
    }
}
