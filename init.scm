(require (prefix-in helix.static. "helix/static.scm"))
(require "helix/configuration.scm")


(define-lsp "steel-language-server" (command "steel-language-server") (args '()))
(define-language "scheme"
  (formatter (command "raco") (args '("fmt" "-i")))
  (auto-format #true)
  (language-servers '("steel-language-server")))

(cursorline #t)
(line-number 'relative)
