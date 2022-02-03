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
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var currentImageIndex = 0
    let images = [
        "hattefjall_1",
        "hattefjall_2",
        "hattefjall_3",
        "hattefjall_4",
        "hattefjall_5"
    ]

    
    @IBAction func showNextImage(_ sender: Any){
        currentImageIndex += 1
        print(images[currentImageIndex])
        showImage(index: currentImageIndex)
    }
    
    @IBAction func showPrevImage(_ sender: Any){
        currentImageIndex -= 1
        print(images[currentImageIndex])
        showImage(index: currentImageIndex)
    }
    
    func showImage(index: Int) {
        let imageName = images[index]
        imageView.image = UIImage(named: imageName)
        
        leftButton.isEnabled = index > 0
        rightButton.isEnabled = index < images.count - 1
    }
    
    @IBAction func handleLike(_ sender: Any) {
        likeButton.isSelected = !likeButton.isSelected
    }
    
    let dateFormatter = DateFormatter()
    @IBAction func handleDateChanged(_ sender: Any) {
        dateFormatter.dateFormat = "yyyy년 M월 d일"
        let dateStr = dateFormatter.string(from: datePicker.date)
        dateLabel.text = "예약날짜 : \(dateStr)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        leftButton.isEnabled = false
        dateFormatter.dateStyle = .medium
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
        
        handleDateChanged(datePicker)
    }
}

