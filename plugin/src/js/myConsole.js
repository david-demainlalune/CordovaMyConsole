var exec = cordova.require('cordova/exec');

window.log = function(string){
    var success = function(){};
    var error = function(){};
    exec(success,
        error,
        "MyConsole",
        "log",
        [string]
    );
};