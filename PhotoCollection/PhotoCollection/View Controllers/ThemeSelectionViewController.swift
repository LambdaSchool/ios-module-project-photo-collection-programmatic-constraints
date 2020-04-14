//
//  ThemeSelectionViewController.swift
//  PhotoCollection
//
//  Created by Spencer Curtis on 8/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ThemeSelectionViewController: UIViewController {
    
    private var blueLabel = UIButton()
    private var darkLabel = UIButton()
    private var titleLabel = UILabel()
    @objc func selectDarkTheme() {
        themeHelper?.setThemePreferenceToDark()
        dismiss(animated: true, completion: nil)
    }
    
    @objc func selectBlueTheme() {
        themeHelper?.setThemePreferenceToBlue()
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpSubviews()
    }
 
    var themeHelper: ThemeHelper? 
    
    private func setUpSubviews() {
        titleLabel.text = "Select a theme!"
        blueLabel.setTitle("Blue", for: .normal)
        blueLabel.setTitleColor(.blue, for: .normal)
        darkLabel.setTitleColor(.black, for: .normal)
        darkLabel.setTitle("Dark", for: .normal)
        blueLabel.addTarget(self, action: #selector(selectBlueTheme), for: .touchUpInside)
        darkLabel.addTarget(self, action: #selector(selectDarkTheme), for: .touchUpInside)
        view.addSubview(blueLabel)
        view.addSubview(darkLabel)
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        blueLabel.translatesAutoresizingMaskIntoConstraints = false
        darkLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .center
        
        // constraints+
       
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        
        darkLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        darkLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        darkLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150).isActive = true
        
        blueLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        blueLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120).isActive = true
        blueLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80).isActive = true
      
    
        
        
    }
}
