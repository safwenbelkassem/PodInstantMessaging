//
//  ViewController.swift
//  InstantMessaging
//
//  Created by 45638673 on 03/09/2023.
//  Copyright (c) 2023 45638673. All rights reserved.
//

import UIKit
import InstantMessaging
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func presentInstantMessagingPod(_ sender: Any) {
        let main = MainView()
        let hostingController = UIHostingController(rootView: main)
        self.navigationController?.pushViewController(hostingController, animated: true)
    }
}

