/*
 * Copyright 2016 Jeffrey Meng
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *                      -- or --
 *       https://archive.jeffkmeng.com/code/LICENSE.txt
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 */
(function($) { // Hide scope, no $ conflict 
    // All the other code ... 

$.fn.showAlerts = function() {
    
    var getAlertObj = function() {
    var url = window.location.href;
    var name = "alert";
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return JSON.parse(atob(decodeURIComponent(results[2].replace(/\+/g, " "))));

        };
        console.log(getAlertObj());
        console.log(this)

    this.html(JSON.stringify(getAlertObj()));
};

$.praseAlertQuery = function(text, type, dismissable, fadeout) {
    if (arguments.length !== 1) {
        x = {
            "text":text,
            "type":type,
            "dismissable":dismissable,
            "fadeout":fadeout
        };
    } else if (Array.isArray(text)) {
        x = text
    } else {
        x = []
        x.push(text);
    }
    return "alert=" + encodeURIComponent(btoa(JSON.stringify(x)));
}
})(jQuery);