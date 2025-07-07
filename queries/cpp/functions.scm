;; Free-standing function
(function_definition
  declarator: (function_declarator
    declarator: (identifier) @function.name
    parameters: (parameter_list) @function.parameters)) @function

;; Inline class method (in header)
(field_declaration
  declarator: (function_declarator
    declarator: (field_identifier) @function.name
    parameters: (parameter_list) @function.parameters)) @function

;; External member function with qualified name (e.g., Foo::bar)
(function_definition
  declarator: (function_declarator
    declarator: (qualified_identifier) @function.qualified
    parameters: (parameter_list) @function.parameters)) @function

;; Function pointer declaration
(declaration
  declarator: (pointer_declarator
    declarator: (function_declarator
      declarator: (identifier) @function.name
      parameters: (parameter_list) @function.parameters))) @function
