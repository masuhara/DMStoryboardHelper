# StoryboardHelperの使い方
1. Xcodeを起動し、プロジェクトファイルを作成します。
2. Main.storyboardのUse Size Classesのチェックを外し、4inchのサイズにします。
3. プロジェクトファイルから、LaunchScreen.xibを削除します。
4. StoryboardHelperをXcodeの左側のペインにドラッグ&ドロップでコピーします。
5. そのとき、Destinationにチェックが入っていること、Refereneの選択が上の方を選んでいること、Targetにチェックが入っていることに気をつけましょう。
6. この時点でiPhone5/5S/6/6Plus/6s/6sPlusへの対応は完了です。
7. AppDelegate.swiftを開きます。
8. - func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool { ... } メソッド内に以下のコードを書きます。

### コード

```
func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
// Override point for customization after application launch.
    /* ここから */
    let storyboard: UIStoryboard = StoryboardHelper.adjust()
    window!.rootViewController = storyboard.instantiateInitialViewController()! as UIViewController
    self.window?.makeKeyAndVisible()
    /* ここまで */
    return true
    }
```

9. NewFileから「3.5inch.storyboard」という名前で新しいStoryboardファイルを作成します。
10. Main.storyboardからViewController群をコピーし、3.5inch.storyboardに貼り付けます。
11. 3.5inchの方のinitialViewControllerのチェックが外れているので、チェックを入れます。
12. 3.5inchの方のデザインを整えます。
13. Runしてうまくいけば完成です。
