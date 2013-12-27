var utils = {
	extend : function(t, s, b) {
		if (s) {
			for ( var k in s) {
				if (!b || !t.hasOwnProperty(k)) {
					t[k] = s[k];
				}
			}
		}
		return t;
	},
	domReady : function() {
		var fnArr = [];
		function doReady(doc) {
			//确保onready只执行一次
			doc.isReady = true;
			for (var ci; ci = fnArr.pop(); ci()) {
			}
		}
		return function(onready, win) {
			win = win || window;
			var doc = win.document;
			onready && fnArr.push(onready);
			if (doc.readyState === "complete") {
				doReady(doc);
			} else {
				doc.isReady && doReady(doc);
				if (browser.ie && browser.version != 11) {
					(function() {
						if (doc.isReady)
							return;
						try {
							doc.documentElement.doScroll("left");
						} catch (error) {
							setTimeout(arguments.callee, 0);
							return;
						}
						doReady(doc);
					})();
					win.attachEvent('onload', function() {
						doReady(doc);
					});
				} else {
					doc.addEventListener("DOMContentLoaded", function() {
						doc.removeEventListener("DOMContentLoaded",
								arguments.callee, false);
						doReady(doc);
					}, false);
					win.addEventListener('load', function() {
						doReady(doc);
					}, false);
				}
			}

		};
	}(),
	each : function(obj, iterator, context) {
		if (obj == null)
			return;
		if (obj.length === +obj.length) {
			for (var i = 0, l = obj.length; i < l; i++) {
				if (iterator.call(context, obj[i], i, obj) === false)
					return false;
			}
		} else {
			for ( var key in obj) {
				if (obj.hasOwnProperty(key)) {
					if (iterator.call(context, obj[key], key, obj) === false)
						return false;
				}
			}
		}
	}
};