//
//  ViewController.swift
//  MyReactNativePod
//
//  Created by 39089099 on 08/30/2022.
//  Copyright (c) 2022 39089099. All rights reserved.
//

import UIKit
import MyReactNativePod

class ViewController: UIViewController {
    
    lazy var btnOpen: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Open", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .red
        btn.layer.cornerRadius = 8
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(btnOpen)
        btnOpen.translatesAutoresizingMaskIntoConstraints = false
        
        btnOpen.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btnOpen.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        btnOpen.widthAnchor.constraint(equalToConstant: 100).isActive = true
        btnOpen.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        btnOpen.addTarget(self, action: #selector(handleOpen(_:)), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc private func handleOpen(_ sender: UIButton) {
        let viewController = WelcomeViewController()
        self.present(viewController, animated: true)
    }

}

