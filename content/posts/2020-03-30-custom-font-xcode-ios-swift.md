---
path: "/costum-font-xcode-swift"
cover: "thumbnails/flutter.png"
date: "2020-03-31"
title: "Custom Fornt pada iOS menggunakan Xcode & Swift"
tags: ['flutter']
published: true
---
Saya pemula, tidak ada salahnya jika saya share. 

jadi begini

buat project di xcode seperti biasa. 

selanjutnya masukan font tersebut ke dalam folder. 
contoh seperti berikut.

setelah itu buka info.plist dan tambah key "Fonts provided by application" dan register font milik kita. 

selanjutnya teman teman bisa masuk ke interface builder dan pilih font milik teman teman. 

atau juga melalui code bisa menggunakan syntax

```swift
guard let customFont = UIFont(name: "CustomFont-Light", size: UIFont.labelFontSize) else {
    fatalError("""
        Failed to load the "CustomFont-Light" font.
        Make sure the font file is included in the project and the font name is spelled correctly.
        """
    )
}
label.font = UIFontMetrics.default.scaledFont(for: customFont)
label.adjustsFontForContentSizeCategory = true
```