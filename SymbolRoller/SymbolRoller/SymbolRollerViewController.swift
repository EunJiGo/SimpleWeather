//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by 고은지 on 2022/11/06.
//

import UIKit

class SymbolRollerViewController: UIViewController {
    
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
//        imageView.image = UIImage(systemName: "cloud")
    }
    
    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
//        print("와 눌렸다")
        reload()
    }
    
    func reload() {
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }


}
