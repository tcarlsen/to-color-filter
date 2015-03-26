angular.module "toColorFilter", []
  .filter "tocolor", ->
    (input) ->
      return if input is ""

      hash = (word) ->
        h = 0
        i = 0
        while i < word.length
          h = word.charCodeAt(i) + (h << 5) - h
          i++
        return h

      shade = (color, prc) ->
        num = parseInt(color, 16)
        amt = Math.round(2.55 * prc)
        R = (num >> 16) + amt
        G = (num >> 8 & 0x00FF) + amt
        B = (num & 0x0000FF) + amt
        return (0x1000000 + (if R < 255 then (if R < 1 then 0 else R) else 255) * 0x10000 + (if G < 255 then (if G < 1 then 0 else G) else 255) * 0x100 + (if B < 255 then (if B < 1 then 0 else B) else 255)).toString(16).slice 1

      int_to_rgba = (i) ->
        color = (i >> 24 & 0xFF).toString(16) + (i >> 16 & 0xFF).toString(16) + (i >> 8 & 0xFF).toString(16) + (i & 0xFF).toString(16)
        return color

      return shade int_to_rgba(hash(input)), -10
