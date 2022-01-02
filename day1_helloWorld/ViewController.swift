//
//  ViewController.swift
//  day1_helloWorld
//
//  Created by joomin Lee on 2/1/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for x in 0..<2{
            let button = UIButton(frame: CGRect(x: 20,
                                                y:30 + (CGFloat(x) * 55) + (CGFloat(x) * 10),
                                                width: view.frame.size.width-40,
                                                height: 55))
            view.addSubview(button)
            button.tag = x+1
            button.backgroundColor = .systemBlue
            button.setTitle("Show Snackbar \(x+1)", for: .normal)
            button.setTitleColor(.white, for: .normal)
            
            button.addTarget(self, action: #selector(didTabButton(_:)),
                             for: .touchUpInside)
            view.addSubview(button)
        }
        
    }
    
    @objc private func didTabButton(_ sender: UIButton){
        if sender.tag == 1{
            //first button
        }
        else{
            //second button
        }
    }
    
    

    @IBAction func button(_ sender: UIButton) {
        // link button
    }
    

}

