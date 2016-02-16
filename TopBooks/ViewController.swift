//
//  ViewController.swift
//  TopBooks
//
//  Created by Erik Nascimento on 2/15/16.
//  Copyright © 2016 2EG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let api = APIManager()
        api.loadData("https://itunes.apple.com/us/rss/topfreeebooks/limit=10/json", completion: didLoadData)
    }
    
    func didLoadData(books:[Books]){
        for item in books{
            print("\(item.bName) - \(item.bAuthor)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

