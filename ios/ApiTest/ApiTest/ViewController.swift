//
//  ViewController.swift
//  ApiTest
//
//  Created by yuk on 2016/11/27.
//  Copyright © 2016年 yukimine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendRequest(_ sender: AnyObject) {
        let urlString = "http://api.openweathermap.org/data/2.5/forecast?units=metric&q=Tokyo&APPID="
        let url = URL(string: urlString)!
        
        var request = URLRequest(url: url)
        request.addValue("application/json", forHTTPHeaderField: "Content-type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) {data, response, err in
            if (err == nil) {
                // 成功
                print("success")
                print(response)
            } else {
                // 失敗
                print("fail")
            }
        }.resume()
    }

}

