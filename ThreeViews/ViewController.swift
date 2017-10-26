//
//  ViewController.swift
//  ThreeViews
//
//  Created by Rajesh Kommana on 03/10/17.
//  Copyright © 2017 Rajesh Kommana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let containerView: UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = UIColor.darkGray
        return containerView
        
    }()
    
    let leftView: UIView = {
       let leftView = UIView()
       leftView.translatesAutoresizingMaskIntoConstraints = false
       leftView.backgroundColor = UIColor.red
       return leftView
        
    }()
    let centerView: UIView = {
        let centerView = UIView()
        centerView.translatesAutoresizingMaskIntoConstraints = false
        centerView.backgroundColor = UIColor.orange
        return centerView
        
    }()
    let rightView: UIView = {
        let rightView = UIView()
        rightView.translatesAutoresizingMaskIntoConstraints = false
        rightView.backgroundColor = UIColor.blue
        return rightView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(containerView)
        containerView.addSubview(leftView)
        containerView.addSubview(centerView)
        containerView.addSubview(rightView)
        createLayout()
        
    }
    func createLayout() {
        
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        containerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        leftView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        leftView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        leftView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        leftView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        
        
        
        centerView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        centerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        centerView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        centerView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        
        rightView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        rightView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        rightView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        rightView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
    }

    


}

