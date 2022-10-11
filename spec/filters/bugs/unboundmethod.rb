# NOTE: run bin/format-filters after changing this file
opal_filter "UnboundMethod" do
  fails "UnboundMethod#== returns true if both are aliases for a third method"
  fails "UnboundMethod#== returns true if either is an alias for the other"
  fails "UnboundMethod#== returns true if objects refer to the same method"
  fails "UnboundMethod#== returns true if same method is extracted from the same subclass"
  fails "UnboundMethod#arity for a Method generated by respond_to_missing? returns -1"
  fails "UnboundMethod#bind the returned Method is equal to the one directly returned by obj.method" # Expected #<Method: UnboundMethodSpecs::Methods#foo (defined in UnboundMethodSpecs::Methods in ruby/core/unboundmethod/fixtures/classes.rb:30)> to equal #<Method: UnboundMethodSpecs::Methods#foo (defined in UnboundMethodSpecs::Methods in ruby/core/unboundmethod/fixtures/classes.rb:30)>
  fails "UnboundMethod#clone returns a copy of the UnboundMethod"
  fails "UnboundMethod#hash returns the same value for builtin methods that are eql?"
  fails "UnboundMethod#hash returns the same value for user methods that are eql?"
  fails "UnboundMethod#inspect returns a String including all details" # Expected "#<UnboundMethod: UnboundMethodSpecs::Methods#from_mod (defined in UnboundMethodSpecs::Mod in ruby/core/unboundmethod/fixtures/classes.rb:24)>".start_with? "#<UnboundMethod: UnboundMethodSpecs::Methods(UnboundMethodSpecs::Mod)#from_mod" to be truthy but was false
  fails "UnboundMethod#original_name returns the name of the method" # NoMethodError: undefined method `original_name' for #<UnboundMethod: String#upcase (defined in String in corelib/string.rb:1672)>
  fails "UnboundMethod#original_name returns the original name even when aliased twice" # NoMethodError: undefined method `original_name' for #<UnboundMethod: UnboundMethodSpecs::Methods#foo (defined in UnboundMethodSpecs::Methods in ruby/core/unboundmethod/fixtures/classes.rb:30)>
  fails "UnboundMethod#original_name returns the original name" # NoMethodError: undefined method `original_name' for #<UnboundMethod: UnboundMethodSpecs::Methods#foo (defined in UnboundMethodSpecs::Methods in ruby/core/unboundmethod/fixtures/classes.rb:30)>
  fails "UnboundMethod#source_location sets the first value to the path of the file in which the method was defined" # Expected "ruby/core/unboundmethod/fixtures/classes.rb" to equal "./ruby/core/unboundmethod/fixtures/classes.rb"
  fails "UnboundMethod#super_method returns nil when the parent's method is removed"
  fails "UnboundMethod#super_method returns nil when there's no super method in the parent"
  fails "UnboundMethod#super_method returns the method that would be called by super in the method"
  fails "UnboundMethod#to_s does not show the defining module if it is the same as the origin" # Expected "#<UnboundMethod:0x10e>".start_with? "#<UnboundMethod: UnboundMethodSpecs::A#baz" to be truthy but was false
  fails "UnboundMethod#to_s returns a String including all details" # Expected "#<UnboundMethod:0x14c>".start_with? "#<UnboundMethod: UnboundMethodSpecs::Methods(UnboundMethodSpecs::Mod)#from_mod" to be truthy but was false
  fails "UnboundMethod#to_s the String shows the method name, Module defined in and Module extracted from"
end
