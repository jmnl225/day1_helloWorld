//
//  SnackBarViewModel.swift
//  day1_helloWorld
//
//  Created by joomin Lee on 3/1/22.
//

import Foundation
import UIKit

typealias Handler = (() -> Void)

enum SnackBarViewType{
    case info
    case action(handler: Handler)
}

struct SbackBarViewModel {
    let type: SnackBarViewType
    let text: String
    let image: UIImage?
}
