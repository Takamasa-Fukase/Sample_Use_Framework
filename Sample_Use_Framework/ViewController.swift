//
//  ViewController.swift
//  Sample_Use_Framework
//
//  Created by ウルトラ深瀬 on 10/12/24.
//

import UIKit
import Sample_Framework_A

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func openFrameworkA_VCButtonTapped(_ sender: Any) {
        SampleFrameworkA().presentSampleA_VC(on: self)
    }
}

