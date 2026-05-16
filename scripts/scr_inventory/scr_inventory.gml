function inventory_add(_name, _amount, _sprite, _type) {
    if (argument_count < 4) {
        _type = "item"
    }

    for (var i = 0; i < array_length(global.inventory); i++) {
        if (global.inventory[i].name == _name) {
            global.inventory[i].amount += _amount
            return
        }
    }

    array_push(global.inventory, {
        name: _name,
        amount: _amount,
        sprite: _sprite,
        type: _type
    })
}

function inventory_has(_name) {
    for (var i = 0; i < array_length(global.inventory); i++) {
        if (global.inventory[i].name == _name && global.inventory[i].amount > 0) {
            return true
        }
    }

    return false
}

function inventory_count(_name) {
    for (var i = 0; i < array_length(global.inventory); i++) {
        if (global.inventory[i].name == _name) {
            return global.inventory[i].amount
        }
    }

    return 0
}
