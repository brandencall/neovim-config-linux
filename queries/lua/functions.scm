(function_declaration
  name: (identifier) @function.name
  parameters: (parameters) @function.parameters) @function

(assignment_statement
  (variable_list
    (dot_index_expression
      (identifier)
      (identifier) @function.name))
  (expression_list
    (function_definition
      parameters: (parameters) @function.parameters))) @function
