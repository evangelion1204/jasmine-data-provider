using = require '../lib/jasmine-data-provider.js'

describe "Basic testing includes reading of different files", () ->
    using "Data provider", [1, 2, 3], (value) ->
        it "Availability of the class ", () ->
            expect(1).toBe(1)