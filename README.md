# StoryboardHeperとは
StoryboardHelperは、iOSアプリ開発初心者が各端末への画面サイズの対応を直感的に行い、なるべく簡単にアプリをリリースするためのヘルパーです。AutoLayout、SizeClassなどを一切使わずに各端末への画面サイズに対応できます。ViewControllerの数が少ないアプリでの使用を想定していますののでらあらかじめご理解下さい。

## StoryboardHelperの使い方
1. Xcodeを起動し、プロジェクトファイルを作成します。
2. `Main.storyboard`のUse Size Classesのチェックを外し、4inchのサイズにします。
3. プロジェクトファイルから、`LaunchScreen.xib`を削除します。
4. StoryboardHelperをXcodeの左側のペインにドラッグ&ドロップでコピーします。
5. そのとき、Destinationにチェックが入っていること、Refereneの選択が上の方を選んでいること、Targetにチェックが入っていることに気をつけましょう。
6. この時点でiPhone5/5S/6/6Plus/6s/6sPlusへの対応は完了です。
7. `AppDelegate.swift`を開きます。
8. `application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool { ... }` メソッド内に以下のプログラムを書きます。
```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
// Override point for customization after application launch.
    /* ここから */
    let storyboard: UIStoryboard = StoryboardHelper.adjust()
    window!.rootViewController = storyboard.instantiateInitialViewController()! as UIViewController
    self.window?.makeKeyAndVisible()
    /* ここまで */
    return true
}
```
9. NewFileから「`3.5inch.storyboard`」という名前で新しいStoryboardファイルを作成します。
10. `Main.storyboard`からViewController群をコピーし、`3.5inch.storyboard`に貼り付けます。
11. 3.5inchの方の`initialViewController`のチェックが外れているので、チェックを入れます。
12. 3.5inchの方のデザインを整えます。
13. Runしてうまくいけば完成です。
