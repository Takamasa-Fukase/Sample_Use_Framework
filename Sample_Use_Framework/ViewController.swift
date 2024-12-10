//
//  ViewController.swift
//  Sample_Use_Framework
//
//  Created by ウルトラ深瀬 on 10/12/24.
//

import UIKit
import Sample_Framework_A
import Sample_Framework_B

class ViewController: UIViewController {
    var imageDisplayView: ImageDisplayView!

    @IBOutlet weak var frameworkB_BaseView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageDisplayView = ImageDisplayView(frame: view.frame)
        frameworkB_BaseView.addSubview(imageDisplayView)
        frameworkB_BaseView.addConstraints(for: imageDisplayView)
    }
    
    @IBAction func openFrameworkA_VCButtonTapped(_ sender: Any) {
        SampleFrameworkA().presentSampleA_VC(on: self)
    }
    
    @IBAction func changeImageButtonTapped(_ sender: Any) {
        imageDisplayView.updateImage()
    }
}

