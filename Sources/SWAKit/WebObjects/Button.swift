/**
 ** SWAKit
 ** Server-side Swift web application library
 **
 ** Vasiliy Kharitonov
 ** 2016-04-22
 **/

public class Button: WebObject {
    var text: String
    var action: Action
    
    public override func makeHTML()->String {
        var html = ""
        
        if self.action.actionType == ActionType.httpTransition {
            html = "<a href='\(self.action.actionBody)' class='uk-button'>" +
                self.text +
                "</a>"
        }
        
        return html
    }
    
    public init(id: String, text: String, action: Action) {
        self.text = text
        self.action = action
        
        super.init(id: id)
    }
}