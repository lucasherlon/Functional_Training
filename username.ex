defmodule Username do
  def sanitize([]), do: []
  def sanitize([h | tail]) do
    head =
      case h do
        h when h >= ?a and h <= ?z -> [h]
        h when h == ?_ -> [h]
        h when h == ?ä -> 'ae'
        h when h == ?ö -> 'oe'
        h when h == ?ü -> 'ue'
        h when h == ?ß -> 'ss'
        _ -> []
      end
    head ++ sanitize(tail)
 end
end
