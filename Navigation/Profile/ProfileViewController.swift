//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Stepas Vilkelis on 12.01.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let testButton: UIButton = {
        let button = UIButton()
        button.setTitle("Test Button", for: .normal)
        button.backgroundColor = .systemPink
        
        return button
    }()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        self.view.addSubview(testButton)
        testButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            testButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            testButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor), //Без этого ограничения кнопка будет расположена не верно: Привяка левого и правого края кнопки задает ее ширину
            testButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
        ])
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
