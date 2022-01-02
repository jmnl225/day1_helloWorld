//
//  SnackBarView.swift
//  day1_helloWorld
//
//  Created by joomin Lee on 3/1/22.
//

import UIKit

class SnackBarView: UIView {
    
    //todo error fix
    let viewModel: SnackBarViewModel
    
    private var handler: Handler?
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UILabel()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    init(viewModel: SnackBarViewModel) {
        self.viewModel = viewModel
        super.init(frame: .zero)
        
        addSubview(label)
        
        if viewModel.image != nil{
            addSubview(imageView)
        }
        
        configure()
    }
    
    private func configure(){
        label.text = viewModel.text
        imageView.image = viewModel.image
        
        switch viewModel.type{
        case .action(let handler):
            self.handler  = handler
            
            isUserInteractionEnabled = true
        
            
        case .info: break
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
