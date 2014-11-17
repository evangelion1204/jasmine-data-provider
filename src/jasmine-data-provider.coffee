using = (name, values, func) ->
    console.info name
    console.info values
    console.info func

#    for var i = 0, count = values.length; i < count; i++
#        if Object.prototype.toString.call(values[i]) != '[object Array]'
#            values[i] = [values[i]]
#
#        func.apply this, values[i]
#
#        jasmine.currentEnv_.currentSpec.description += ' (with "' + name + '" using ' + values[i].join(', ') + ')'

module.exports = using