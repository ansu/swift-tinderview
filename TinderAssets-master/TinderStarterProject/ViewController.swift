//
//  ViewController.swift
//  TinderStarterProject
//
//  Created by James Rochabrun on 7/4/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    lazy var tinderCard: TinderCard = {
        let tc = TinderCard()
        tc.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(swipeCard(sender:))))
        return tc
    }()
    
    func swipeCard(sender: UIPanGestureRecognizer) {
        sender.swipeView(tinderCard)
    }
    
    let buttonsContainer: ButtonsView = {
        let c = ButtonsView()
        return c
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setUpViews()
    }
    
    func setUpViews() {
        
        view.addSubview(tinderCard)
        view.addSubview(buttonsContainer)
        
        NSLayoutConstraint.activate([
            tinderCard.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 20),
            tinderCard.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            tinderCard.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tinderCard.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.70),
            
            buttonsContainer.topAnchor.constraint(equalTo: tinderCard.bottomAnchor, constant: 50),
            buttonsContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonsContainer.widthAnchor.constraint(equalTo: tinderCard.widthAnchor)
            ])
    }



}

