//
//  ViewController.swift
//  MarvelUniverse
//
//  Created by Sergey Smirnov on 03.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let testLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Test label"
        label.tintColor = .label
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configure()
    }
    
    func configure() {
        view.backgroundColor = .systemBackground
        title = "Main VC"
        
        view.addSubview(testLabel)
        
        NSLayoutConstraint.activate([
            testLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            testLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }


}

