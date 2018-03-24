(function($) {
	$(document).on('mouseover', '.vote-block li', function() {
		var $el = $(this);
		var star = parseInt($el.text(), 10);
		if ($el.parent().parent().hasClass('disabled')) {
			return false;
		}
		$('.rating-info').show().html(star + ' ' + decOfNum(star, ['голос', 'голоса', 'голосов']));
	}).on('mouseleave', '.vote-block li', function() {
		$('.rating-info').hide();
	});
	$(document).on('click', '.vote-block li', function() {
		var $el = $(this);
		var id = $el.parent().parent().attr('data-id');
		var total = $el.parent().parent().attr('data-total');
		var rating = $el.parent().parent().attr('data-rating');
		var num = parseInt($el.text(), 10);
		if ($el.parent().parent().hasClass('disabled')) {
			return false;
		}
		//alert (id + " - " + num);
		$.ajax({
			type: 'GET',
			url: 'index.php?route=common/column_right/ajaxSetRating&do=ajax&id=' + id + '&num=' + num,
			/*data: {
				id: id,
				num: num
			},*/
			dataType: 'json',
			success: function(json) {
				//alert ("!");
				var pr = json['pr'];
				if (pr === 'limit') {
					return false;
				} else {
					$el.parent().parent().addClass('disabled');
					$.cookie('vote-post-' + id, true, {
						expires: 7,
						path: '/'
					});
					$el.parent().find('.current span').css('width', pr + '%');
					total++;
					var abs = ((rating + num) / total);
					abs = (abs ^ 0) === abs ? abs : abs.toFixed(1);
					$el.parent().parent().find('span.rating-text').html('(' + total + ' ' + decOfNum(total, ['голос', 'голоса', 'голосов']) + ', в среднем: ' + abs + ' из 5)');
				}
			}
		});
		return false;
	});
})(jQuery);

function decOfNum(number, titles) {
	cases = [2, 0, 1, 1, 1, 2];
	return titles[(number % 100 > 4 && number % 100 < 20) ? 2 : cases[(number % 10 < 5) ? number % 10 : 5]];
}! function(factory) {

	"function" == typeof define && define.amd ? define(["jquery"], factory) : factory("object" == typeof exports ? require("jquery") : jQuery)

}(function(e) {
	function n(e) {
		return u.raw ? e : encodeURIComponent(e)
	}

	function o(e) {
		return u.raw ? e : decodeURIComponent(e)
	}

	function i(e) {
		return n(u.json ? JSON.stringify(e) : e + "")
	}

	function r(e) {
		0 === e.indexOf('"') && (e = e.slice(1, -1).replace(/\\"/g, '"').replace(/\\\\/g, "\\"))
		try {
			return e = decodeURIComponent(e.replace(c, " ")), u.json ? JSON.parse(e) : e
		} catch (n) {}
	}

	function t(n, o) {
		var i = u.raw ? n : r(n)
		return e.isFunction(o) ? o(i) : i
	}
	var c = /\+/g,
		u = e.cookie = function(r, c, a) {
			if (arguments.length > 1 && !e.isFunction(c)) {
				if (a = e.extend({}, u.defaults, a), "number" == typeof a.expires) {
					var f = a.expires,
						s = a.expires = new Date
					s.setTime(+s + 864e5 * f)
				}
				return document.cookie = n(r) + "=" + i(c) + (a.expires ? "; expires=" + a.expires.toUTCString() : "") + (a.path ? "; path=" + a.path : "") + (a.domain ? "; domain=" + a.domain : "") + (a.secure ? "; secure" : "")
			}
			for (var d = r ? void 0 : {}, p = document.cookie ? document.cookie.split("; ") : [], m = 0, x = p.length; x > m; m++) {
				var l = p[m].split("="),
					k = o(l.shift()),
					v = l.join("=")
				if (r && r === k) {
					d = t(v, c)
					break
				}
				r || void 0 === (v = t(v)) || (d[k] = v)
			}
			return d
		}
	u.defaults = {}, e.removeCookie = function(n, o) {
		return void 0 === e.cookie(n) ? !1 : (e.cookie(n, "", e.extend({}, o, {
			expires: -1
		})), !e.cookie(n))
	}
}(jQuery));