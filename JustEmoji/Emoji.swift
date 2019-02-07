//  Copyright © 2019 Jean-JacquesSaurel. All rights reserved.

import Cocoa

class Emoji {
    let emojis  = [EmojiConstants.kinds.peoples,
                   EmojiConstants.kinds.animals,
                   EmojiConstants.kinds.foods,
                   EmojiConstants.kinds.travels,
                   EmojiConstants.kinds.objects,
                   EmojiConstants.kinds.symbols,
                   EmojiConstants.kinds.flags]
    
    func getRandomEmoji() -> String {
        guard let randomKind = emojis.randomElement() else {
            return ""
        }
        
        guard let randomEmoji = randomKind.randomElement() else {
            return ""
        }
        return randomEmoji
    }
}
