//
//  ViewController.swift
//  RxSwiftTutorial
//
//  Created by bruno on 06/02/20.
//  Copyright © 2020 bruno. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var greetingsLabel: UILabel!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "characterDetail" {
            guard let vc = segue.destination as? CharacterViewController else { return }
            vc.selectedCharacter
                .subscribe(onNext: { [weak self] character in
                    self?.greetingsLabel.text = "Hello \(character)"
                }).disposed(by: disposeBag)
        }
    }
}

