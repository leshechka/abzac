//
//  FileWorker.swift
//  abzac
//
//  Created by Lesha Melnikov on 08.02.16.
//  Copyright © 2016 Lesha Melnikov. All rights reserved.
//

import Foundation

public class FileWorker {

public func copyToDoc ()  {
    let docs = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
    let fullFilename = "\(docs)/12.fb2"
    
    let checkValidation = NSFileManager.defaultManager()
    
    if (checkValidation.fileExistsAtPath(fullFilename))
    {
        print("FILE AVAILABLE");
    }
    else
    {
        print("FILE NOT AVAILABLE");
        
        if let from = NSBundle.mainBundle().pathForResource("12", ofType: "fb2") {
            
            do {
                try checkValidation.copyItemAtPath(from, toPath: fullFilename)
            }
            catch {}
            
        }
    }
    
    
    //    // копирование файлов в Док. Сработает у всех, у кого уще это ни разу не срабатывало
    //    if (![[NSFileManager defaultManager] fileExistsAtPath:FILE_CHAT])
    //    {
    //    [[NSFileManager defaultManager] copyItemAtPath:[[NSBundle mainBundle] pathForResource:@"history" ofType:@"json"] toPath:FILE_CHAT error:nil];
    //    }
}

}