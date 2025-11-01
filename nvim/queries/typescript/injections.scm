; html injection
(variable_declarator
    (comment) @c
    (#contains? @c "html")
    (template_string
        (string_fragment) @injection.content
        (#set! injection.language "html")
    )
)

(return_statement
    (comment) @c
    (#contains? @c "html")
    (template_string
        (string_fragment) @injection.content
        (#set! injection.language "html")
    )
)

; css injection
(variable_declarator
    (comment) @c
    (#contains? @c "css")
    (template_string
        (string_fragment) @injection.content
        (#set! injection.language "css")
    )
)

(return_statement
    (comment) @c
    (#contains? @c "css")
    (template_string
        (string_fragment) @injection.content
        (#set! injection.language "css")
    )
)
