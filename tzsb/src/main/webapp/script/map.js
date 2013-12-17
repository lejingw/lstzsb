/**
 *  自定义map
 */
function Map(){
    this.size=0;
    this.keys=new Array();
    this.values=new Array();
    this.get = function(key) {
        for (var i = 0; i < this.size; i++) {
            if (key == this.keys[i]) {
                return this.values[i];
            }
        }
        return null;
    };
    this.getValueByIndex = function(index) {
        if (index > 0 && index < this.size) {
            return this.values[index];
        } else {
            return null;
        }
    };
    this.getKeyByIndex = function(index) {
        if (index > 0 && index < this.size) {
            return this.keys[index];
        } else {
            return null;
        }
    };
    this.put = function(key, value) {
        for (var i = 0; i < this.size; i++) {
            if (key == this.keys[i]) {
                alert("key is repeat");
                return null;
            }
        }
        this.keys[this.size] = key;
        this.values[this.size] = value;
        this.size++;
    };
    this.remove = function(key) {
        for (var i = 0; i < this.size; i++) {
            if (key == this.keys[i]) {
                for (var j = i; j < this.size; j++) {
                    this.keys[j] = this.keys[j + 1];
                    this.values[j] = this.values[j + 1];
                }
                break;
            }
        }
        this.size--;
    };
    this.removeAll = function() {
        this.keys = new Array();
        this.values = new Array();
    };
}