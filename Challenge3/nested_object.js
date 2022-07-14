function fetchValue(object, keys) {
    keys = keys.split("/");
    var temp_object = object;
    for (var pos in keys) {
        var element = keys[pos];
        if (element in temp_object)
            temp_object = temp_object[element];
        else
            console.log("Key is not available in the object");
            return null;
    }
    return temp_object;
}

module.exports = fetchValue;