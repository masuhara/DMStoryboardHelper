# What's StoryboardHeper

![画像](http://i.imgur.com/zmFJl1q.jpg)

StoryboardHelperは、iOSアプリ開発初心者が各端末への画面サイズの対応を直感的に行い、なるべく簡単にアプリをリリースするためのヘルパーです。AutoLayout、SizeClassなどを一切使わずに各端末への画面サイズに対応できます。ViewControllerの数が少ないアプリでの使用を想定していますののでらあらかじめご理解下さい。

# How to use StoryboardHelper
以下では、StoryboardHelperの使い方について説明しています。

## ①プロジェクトの設定
1. Xcodeを起動し、プロジェクトを作成します。すでにプロジェクトがある場合はそれを開きます。
2. `Main.storyboard`を開き、中央下部の`View as: iPhoneXX`を**iPhone SE**のサイズにします。
3. `LaunchScreen.xib`ファイルを右クリックし、Deleteを選択して削除します。
4. プロジェクトファイルの設定からLaunchScreenを削除します。

![画像](http://i.imgur.com/DpME0go.gif)

5. StoryboardHelperをXcodeの左側のフォルダ部分にドラッグ&ドロップでコピーします。
6. そのとき、Destinationにチェックが入っていること、Refereneの選択が上の方を選んでいること、Targetにチェックが入っていることに気をつけましょう。
7. この時点でiPhone5/5S/6/6Plus/6s/6sPlus/7/7Plusへの対応は完了です。

## ②3.5インチ端末(iPhone4S以下)とiPadへの対応
1. `AppDelegate.swift`を開きます。
2. `application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool { ... }` メソッド内に以下のプログラムを書きます。
```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
// Override point for customization after application launch.
    /* ここから */
    StoryboardHelper.adjust(to: window)
    /* ここまで */
    return true
}
```
3. NewFileから「`3.5inch.storyboard`」という名前で新しいStoryboardファイルを作成します。
4. `Main.storyboard`からViewController群をコピーし、`3.5inch.storyboard`に貼り付けます。
5. 3.5inchの方の`initialViewController`のチェックが外れているので、チェックを入れます。
6. 3.5inchの方のデザインを整えます。
7. Runしてうまくいけば完成です。
