//
//  ThemeSelectionViewController.swift
//  PhotoCollection
//
//  Created by Spencer Curtis on 8/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ThemeSelectionViewController: UIViewController {
    
    let chooseThemeLabel = UILabel()

    func selectDarkTheme() {
        themeHelper?.setThemePreferenceToDark()
        dismiss(animated: true, completion: nil)
    }
    
    func selectBlueTheme() {
        themeHelper?.setThemePreferenceToBlue()
        dismiss(animated: true, completion: nil)
    }
    
    var themeHelper: ThemeHelper?
    
    private func setUpSubviews() {
        
        chooseThemeLabel.translatesAutoresizingMaskIntoConstraints = false
        chooseThemeLabel.text = "Select a Theme:"
        view.addSubview(chooseThemeLabel)
        
        chooseThemeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
