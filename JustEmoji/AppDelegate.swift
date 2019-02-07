//  Copyright © 2019 Jean-JacquesSaurel. All rights reserved.

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    private let emoji = Emoji()

    @IBOutlet weak var menu: NSMenu!
    @IBOutlet weak var randomMenuItem: NSMenuItem!
    @IBOutlet weak var quitMenuItem: NSMenuItem!
    
    //メニューバーに表示されるアプリケーションを作成
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        self.setMenu()
    }
    
    func setMenu() {
        self.statusItem.button?.title = "🐬"
        self.statusItem.button?.cell?.isHighlighted = false
        self.statusItem.menu = menu
    }
    
    @IBAction func randomAction(_ sender: Any) {
        let board = NSPasteboard.general
        board.clearContents()
        let item = NSPasteboardItem()
        item.setString(emoji.getRandomEmoji(), forType: NSPasteboard.PasteboardType.string)
        board.writeObjects([item])
    }

    @IBAction func quitAction(_ sender: Any) {
        NSApplication.shared.terminate(self)
    }
}

