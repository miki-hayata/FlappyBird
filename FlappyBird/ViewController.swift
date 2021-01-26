//
//  ViewController.swift
//  FlappyBird
//
//  Created by 早田美喜 on 2021/01/16.
//

import UIKit
import SpriteKit //SpriteKitを使う為に記載。

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SKViewに型を変換する。
        //SKViewクラスのpresentScene()メソッドを使ってSKSceneを設定。
        let skView = self.view as! SKView
        
        // FPSを表示する。（アプリの動きを分かりやすくする為、SKViewのshowsFPSにtrueを設定。）
        //1秒間に画面が何回更新されているかを表示。
        skView.showsFPS = true
        
        //ノードの数を表示する。（アプリの動きを分かりやすくする為、SKViewのshowsNodeCountにtrueを設定。）
        //ノードがいくつ表示されているか表示。
        skView.showsNodeCount = true
        
        // ビューと同じサイズでシーンを作成する。
        let scene = GameScene(size:skView.frame.size) // ←GameSceneクラスに変更する
        
        // ビューにシーンを表示する。
        skView.presentScene(scene)
    }
    
}

