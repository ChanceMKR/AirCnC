//
//  ViewController.swift
//  step1_1
//
//  Created by 김성찬 on 2022/01/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var depthLabel: UILabel!
    @IBOutlet weak var widthLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        imageView.image = UIImage.init(named: "jattefjall")
        
        titleLabel.text = "HATTEFJÄLL"
        
        userImageView.image = UIImage.init(named: "macbook")
        userNameLabel.text = "chance"
        
        priceLabel.text = "10,000"
        depthLabel.text = "68cm"
        widthLabel.text = "68cm"
        heightLabel.text = "110cm"
    }

}

