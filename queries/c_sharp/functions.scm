(method_declaration
  name: (identifier) @function.name
  parameters: (parameter_list) @function.parameters) @function

(delegate_declaration
  name: (identifier) @function.name
  parameters: (parameter_list) @function.parameters) @function

(assignment_expression
  left: (member_access_expression
    (identifier)
    (identifier) @function.name)
  right: (lambda_expression
    parameters: (parameter_list) @function.parameters)) @function
