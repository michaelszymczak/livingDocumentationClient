(function () {
    var scenarios = [
        {
            title: "failed scenario",
            status: "failed",
            content: "Scenario: Some failed scenario\n  Given foo\n  When bar\n  Then failed baz\n\n"
        },
        {
            title: "passed scenario",
            status: "passed",
            content: "Scenario: Some passed scenario\n  Given foo\n  When bar\n  Then baz\n\n"
        }
    ]
    exports.get = function (title) {

        var returned = {
            title: title,
            status: "notfound",
            content: "not found"
        };

        scenarios.forEach(function(entry) {
           if (entry.title === title) {
               returned = entry;
           }
        });

        return returned;

    };
})();