" vim-surround configuration
" Provides: Surround text objects with brackets, quotes, tags
" No complex configuration needed - uses defaults

" Default mappings:
"   Normal mode:
"     ys{motion}{char}  - Add surround (e.g., ysiw" surrounds word with quotes)
"     yss{char}         - Add surround to entire line
"     ds{char}          - Delete surround (e.g., ds" removes surrounding quotes)
"     cs{old}{new}      - Change surround (e.g., cs"' changes " to ')
"
"   Visual mode:
"     S{char}           - Surround selection
"
"   Insert mode:
"     <C-g>s{char}      - Add surround (insert)
"     <C-g>S{char}      - Add surround on new lines (insert)

" Example usage:
"   ys iw "   → Surround inner word with "
"   ys iw (   → Surround inner word with ()
"   ys iw b   → Surround inner word with () (b = bracket alias)
"   ys iw B   → Surround inner word with {} (B = brace alias)
"   ys iw r   → Surround inner word with [] (r = rectangle alias)
"   ys iw <   → Surround inner word with <>
"   ys iw t   → Surround inner word with HTML tag (prompts for tag name)
"   cs " '    → Change surrounding " to '
"   cs ( [    → Change surrounding () to []
"   ds "      → Delete surrounding "
