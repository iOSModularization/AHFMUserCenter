//
//  ViewController.swift
//  AHFMUserCenter
//
//  Created by ivsall2012 on 08/26/2017.
//  Copyright (c) 2017 ivsall2012. All rights reserved.
//

import UIKit
import AHServiceRouter

import AHFMDownloadListManager
import AHFMAudioPlayerVCManager
import AHFMEpisodeListVCManager
import AHFMHistoryVCManager
import AHFMAudioPlayerManager
import AHFMBottomPlayerManager
import AHFMAudioPlayerManager
import AHFMShowPageManger
import AHFMDownloadCenterManager
import AHFMDownloaderManager
import AHFMUserCenterManager

import AHFMBottomPlayerServices
import AHFMShowPageServices
import AHFMUserCenterServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AHFMDownloadListManager.activate()
        AHFMAudioPlayerVCManager.activate()
        AHFMEpisodeListVCManager.activate()
        AHFMHistoryVCManager.activate()
        AHFMAudioPlayerManager.activate()
        AHFMBottomPlayerManager.activate()
        AHFMAudioPlayerManager.activate()
        AHFMShowPageManger.activate()
        AHFMDownloadCenterManager.activate()
        AHFMDownloaderManager.activate()
        AHFMUserCenterManager.activate()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let info = AHServiceRouter.doTask(AHFMUserCenterServices.service, taskName: AHFMUserCenterServices.taskCreateVC, userInfo: [:], completion: nil) else {
            return
        }
        
        guard let vc = info[AHFMUserCenterServices.keyGetVC] as? UIViewController else {
            return
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

