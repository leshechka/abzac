//
//  ViewController.swift
//  abzac
//
//  Created by Lesha Melnikov on 08.02.16.
//  Copyright © 2016 Lesha Melnikov. All rights reserved.
//

//#define DOCUMENTS [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject]
//#define FILE_FB2 (NSString*) [DOCUMENTS stringByAppendingPathComponent:@"12.fb2"]

import UIKit


class ViewController: UIViewController {



    
       
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let worker = FileWorker()
        worker.copyToDoc()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

