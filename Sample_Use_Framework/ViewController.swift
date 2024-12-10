//
//  ViewController.swift
//  Sample_Use_Framework
//
//  Created by ウルトラ深瀬 on 10/12/24.
//

import UIKit
import Sample_Framework_A

class ViewController: UIViewController {

    @IBOutlet weak var frameworkB_BaseView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func openFrameworkA_VCButtonTapped(_ sender: Any) {
        let fwA = SampleFrameworkA()
        fwA.presentSampleA_VC(on: self)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            fwA.updateImage()
        })
    }
    
    @IBAction func changeImageButtonTapped(_ sender: Any) {
        
    }
}

