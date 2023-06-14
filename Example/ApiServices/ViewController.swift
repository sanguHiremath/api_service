//
//  ViewController.swift
//  ApiServices
//
//  Created by Sangamesh Hiremath on 06/14/2023.
//  Copyright (c) 2023 Sangamesh Hiremath. All rights reserved.
//

import UIKit
import ApiServices

class ViewController: UIViewController {

    let url = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=1d3d0861bce94607af863f33c17b0cc3"
    
    let body :[String:AnyHashable] =
    ["userId":1,
     "title":"Welcome",
     "body":"Hey whats up!"
    ]
    
    let obj = ApiServiceCall()

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = URL(string: url) else {return}
      
        obj.getApiData(requestUrl: url, resultType: APIResponse.self) { result in
            print(result.articles[0].title)
        }
    }
}


struct APIResponse:Decodable{
    let articles: [Article]
}

struct Article: Decodable{
    let source: Source
    let title: String
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
}

struct Source: Decodable{
    let name: String
}
