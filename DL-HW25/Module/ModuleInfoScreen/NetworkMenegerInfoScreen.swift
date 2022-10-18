//
//  NetworkMenegerInfoScreen.swift
//  DL-HW25
//
//  Created by Daniil Litvinov on 06.10.2022.
//

import Foundation
import Alamofire
import UIKit

class NetworkMenegerInfoScreen {
    
    public func makeRequestUrl(urlRequest: String, image: UIImageView) {
        let urlRequest = URL(string: urlRequest)
        
        guard let url = urlRequest else  { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            image.image = UIImage(data: data)
        }.resume()
    }
}




