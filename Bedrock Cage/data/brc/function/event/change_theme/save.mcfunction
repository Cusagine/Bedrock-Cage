$data merge storage brc:cache {input_theme:$(raw)}
function brc:event/change_theme/run with storage brc:cache
data remove storage brc:cache input_theme