//
//  Builder.swift
//  DL-HW25
//
//  Created by Daniil Litvinov on 11.09.2022.
//

import Foundation
import UIKit

final class Builder {
    
    static func builderMainScreen() -> UIViewController {
        let viewController = MainScreenViewController()
        return viewController
    }
    
    static func builderInfoPerson() -> UIViewController {
        let viewController = InfoPersonViewController()
        return viewController
    }
    
}
