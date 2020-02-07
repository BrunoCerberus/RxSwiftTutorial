//
//  DetailViewController.swift
//  RxSwiftTutorial
//
//  Created by bruno on 06/02/20.
//  Copyright © 2020 bruno. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class CharacterViewController: UIViewController {
    
    private let selectedCharacterVariable = Variable("User")
    var selectedCharacter: Observable<String> {
        return selectedCharacterVariable.asObservable()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func didTapAnimal(_ sender: UIButton) {
        guard let characterName = sender.titleLabel?.text else { return }
        
        selectedCharacterVariable.value = characterName
    }
}
