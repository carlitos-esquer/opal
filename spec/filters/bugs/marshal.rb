# NOTE: run bin/format-filters after changing this file
opal_filter "Marshal" do
  fails "Marshal.dump ignores the recursion limit if the limit is negative" # ArgumentError: [Marshal.dump] wrong number of arguments (given 2, expected 1)
  fails "Marshal.dump raises a TypeError if dumping a Mutex instance" # Expected TypeError but no exception was raised ( "\x04\bo: Mutex\x06:\f@lockedF" was returned)
  fails "Marshal.dump when passed a StringIO should raise an error" # Expected TypeError but no exception was raised ( "\x04\bo:\rStringIO :\f@string\"\x00:\x0E@positioni\x00:\b@fd0:\v@flags\"\arw:\t@eofF" was returned)
  fails "Marshal.dump with a Bignum increases the object links counter" # Expected  "\x04\b[\bl+ \x00\x00\x00\x00\x00\x00\x00\x00\x01\x00o:\vObject\x00@\x06" ==  "\u0004\b[\bl+ \u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0001\u0000o:\vObject\u0000@\a" to be truthy but was false
  fails "Marshal.dump with a Class ignores overridden name method" # Expected "\x04\bc\bFoo" == "\x04\bc)MarshalSpec::ClassWithOverriddenName" to be truthy but was false
  fails "Marshal.dump with a Complex dumps a Complex" # Expected  "\x04\bo:\fComplex\a: @reali\a: @imagi\b" == "\x04\bU:\fComplex[\ai\ai\b" to be truthy but was false
  fails "Marshal.dump with a Hash dumps a Hash subclass with compare_by_identity" # Expected "\x04\bC:\rUserHash{\x00" == "\x04\bC:\rUserHashC:\tHash{\x00" to be truthy but was false
  fails "Marshal.dump with a Hash dumps a Hash with compare_by_identity" # Expected "\x04\b{\x00" == "\x04\bC:\tHash{\x00" to be truthy but was false
  fails "Marshal.dump with a Hash dumps a non-empty Hash" # Expected "\x04\b{\x06\"\x06ai\x06" == "\x04\b{\x06:\x06ai\x06" to be truthy but was false
  fails "Marshal.dump with a Hash ignores overridden name method when dumps a Hash subclass" # Expected "\x04\bC:\bFoo{\x00" == "\x04\bC:(MarshalSpec::HashWithOverriddenName{\x00" to be truthy but was false
  fails "Marshal.dump with a Module ignores overridden name method" # Expected "\x04\bc\bFoo" == "\x04\bc*MarshalSpec::ModuleWithOverriddenName" to be truthy but was false
  fails "Marshal.dump with a Range raises TypeError with an anonymous Range subclass" # Expected TypeError (/can't dump anonymous class/) but got: NoMethodError (undefined method `length' for nil)
  fails "Marshal.dump with a Rational dumps a Rational" # Expected "\x04\bo:\rRational\a:\t@numi\a:\t@deni\b" == "\x04\bU:\rRational[\ai\ai\b" to be truthy but was false
  fails "Marshal.dump with a Regexp dumps a Regexp subclass" # Expected "\x04\b/\t(?:)\x00" == "\x04\bIC:\x0FUserRegexp/\x00\x00\x06:\x06EF" to be truthy but was false
  fails "Marshal.dump with a Regexp dumps a Regexp with instance variables" # Expected  "\x04\bI/\t(?:)\x00\x06: @ivar\"\tivar" ==  "\x04\bI/\x00\x00\a:\x06EF: @ivar:\tivar" to be truthy but was false
  fails "Marshal.dump with a Regexp dumps an ascii-compatible Regexp" # NameError: uninitialized constant Regexp::FIXEDENCODING
  fails "Marshal.dump with a Regexp ignores overridden name method when dumps a Regexp subclass" # Expected "\x04\b/\t(?:)\x00" == "\x04\bIC:*MarshalSpec::RegexpWithOverriddenName/\x00\x00\x06:\x06EF" to be truthy but was false
  fails "Marshal.dump with a String ignores overridden name method when dumps a String subclass" # Expected "\x04\bC:\bFoo\"\x00" == "\x04\bC:*MarshalSpec::StringWithOverriddenName\"\x00" to be truthy but was false
  fails "Marshal.dump with a Struct dumps an extended Struct" # Expected  "\x04\be: MethsS:\x15Struct::Extended\a:\x06a[\a\"\x06a\"\ahi:\x06b[\a\" Meths@\b" ==  "\x04\be: MethsS:\x15Struct::Extended\a:\x06a[\a;\a\"\ahi:\x06b[\a;\x00@\a" to be truthy but was false
  fails "Marshal.dump with a Struct ignores overridden name method" # Expected "\x04\bS:\bFoo\x06:\x06a\"\vmember" == "\x04\bS:*MarshalSpec::StructWithOverriddenName\x06:\x06a\"\vmember" to be truthy but was false
  fails "Marshal.dump with a Struct raises TypeError with an anonymous Struct" # Expected TypeError (/can't dump anonymous class/) but got: NoMethodError (undefined method `length' for nil)
  fails "Marshal.dump with a Symbol dumps multiple Symbols sharing the same encoding" # Expected "\x04\b[\a\"\tâ\x82¬a\"\tâ\x82¬b" == "\u0004\b[\aI:\tâ\u0082¬a\u0006:\u0006ETI:\tâ\u0082¬b\u0006;\u0006T" to be truthy but was false
  fails "Marshal.dump with a Time dumps a Time subclass with multibyte characters in name" # NoMethodError: undefined method `default_internal' for Encoding
  fails "Marshal.dump with a Time dumps the zone and the offset" # NoMethodError: undefined method `default_internal' for Encoding
  fails "Marshal.dump with a Time dumps the zone, but not the offset if zone is UTC" # NoMethodError: undefined method `default_internal' for Encoding
  fails "Marshal.dump with a Time ignores overridden name method" # NoMethodError: undefined method `default_internal' for Encoding
  fails "Marshal.dump with a Time raises TypeError with an anonymous Time subclass" # NoMethodError: undefined method `default_internal' for Encoding
  fails "Marshal.dump with an Array ignores overridden name method when dumps an Array subclass" # Expected "\x04\bC:\bFoo[\x00" == "\x04\bC:)MarshalSpec::ArrayWithOverriddenName[\x00" to be truthy but was false
  fails "Marshal.dump with an Exception contains the filename in the backtrace" # Expected  "\x04\bo:\x0EException\b: @name\"\x0EException:\v@cause0:\x0F@backtrace[\x06\"\x12foo/bar.rb:10" == "\x04\bo:\x0EException\a:\tmesg\"\bfoo:\abt[\x06\"\x12foo/bar.rb:10" to be truthy but was false
  fails "Marshal.dump with an Exception dumps an empty Exception" # Expected  "\x04\bo:\x0EException\a: @name\"\x0EException:\v@cause0" == "\x04\bo:\x0EException\a:\tmesg0:\abt0" to be truthy but was false
  fails "Marshal.dump with an Exception dumps instance variables if they exist" # Expected  "\x04\bo:\x0EException\b: @name\"\x0EException:\v@cause0: @ivari\x06" ==  "\x04\bo:\x0EException\b:\tmesg\"\bfoo:\abt0: @ivari\x06" to be truthy but was false
  fails "Marshal.dump with an Exception dumps the cause for the exception" # Expected "StandardError" == "the cause" to be truthy but was false
  fails "Marshal.dump with an Exception dumps the message for the exception" # Expected  "\x04\bo:\x0EException\a: @name\"\x0EException:\v@cause0" == "\x04\bo:\x0EException\a:\tmesg\"\bfoo:\abt0" to be truthy but was false
  fails "Marshal.dump with an Exception dumps the message for the raised NoMethodError exception" # Expected  "\x04\bo:\x12NoMethodError\t: @name\"\bfoo:\v@cause0: @args[\x00:\x0F@backtrace[)\"=ruby/core/marshal/dump_spec.rb:739:11:in `instance_exec'\"@<internal:corelib/basic_object.rb>:126:1:in `instance_exec'\".mspec/runner/mspec.rb:117:11:in `protect'\"-mspec/runner/context.rb:176:39:in `$$17'\"4<internal:corelib/enumerable.rb>:28:16:in `$$3'\"0<internal:corelib/array.rb>:976:1:in `each'\"E<internal:corelib/enumerable.rb>:27:7:in `Enumerable_all$ques$1'\"0mspec/runner/context.rb:176:18:in `protect'\"-mspec/runner/context.rb:212:26:in `$$21'\",mspec/runner/mspec.rb:285:7:in `repeat'\"-mspec/runner/context.rb:204:16:in `$$20'\"0<internal:corelib/array.rb>:976:1:in `each'\"0mspec/runner/context.rb:203:18:in `process'\"-mspec/runner/context.rb:235:34:in `$$23'\"0<internal:corelib/array.rb>:976:1:in `each'\"0mspec/runner/context.rb:235:13:in `process'\".mspec/runner/mspec.rb:56:10:in `describe'\"/mspec/runner/object.rb:11:10:in `describe'\"Uruby/core/marshal/dump_spec.rb:6:1:in `Opal.modules.ruby/core/marshal/dump_spec'\"1<internal:corelib/kernel.rb>:591:6:in `load'\"4mspec/runner/mspec.rb:100:42:in `instance_exec'\"@<internal:corelib/basic_object.rb>:126:1:in `instance_exec'\".mspec/runner/mspec.rb:117:11:in `protect'\")mspec/runner/mspec.rb:100:7:in `$$1'\"0<internal:corelib/array.rb>:976:1:in `each'\"/mspec/runner/mspec.rb:91:12:in `each_file'\"*mspec/runner/mspec.rb:96:5:in `files'\",mspec/runner/mspec.rb:64:5:in `process'\".tmp/mspec_nodejs.rb:3975:6:in `undefined'\"&tmp/mspec_nodejs.rb:1:1:in `null'\"Bnode:internal/modules/cjs/loader:1241:14:in `Module._compile'\"Inode:internal/modules/cjs/loader:1295:10:in `Module._extensions..js'\">node:internal/modules/cjs/loader:1091:32:in `Module.load'\">node:internal/modules/cjs/loader:938:12:in `Module._load'\"Dnode:internal/modules/run_main:83:12:in `executeUserEntryPoint'\"<node:internal/main/run_main_module:23:47:in `undefined'" =~ /undefined method `foo' for ("":String|an instance of String)/ to be truthy but was nil
  fails "Marshal.dump with an Exception raises TypeError if an Object is an instance of an anonymous class" # Expected TypeError (/can't dump anonymous class/) but got: NoMethodError (undefined method `length' for nil)
  fails "Marshal.dump with an Object dumps a BasicObject subclass if it defines respond_to?" # NoMethodError: undefined method `object_id' for #<MarshalSpec::BasicObjectSubWithRespondToFalse:0x8585e>
  fails "Marshal.dump with an Object dumps an Object with a non-US-ASCII instance variable" # NameError: '@Ã©' is not allowed as an instance variable name
  fails "Marshal.dump with an Object ignores overridden name method" # Expected "\x04\bo:\bFoo\x00" == "\x04\bo:)MarshalSpec::ClassWithOverriddenName\x00" to be truthy but was false
  fails "Marshal.dump with an Object raises TypeError if an Object extends an anonymous module" # Expected TypeError (/can't dump anonymous class/) but got: NoMethodError (undefined method `length' for nil)
  fails "Marshal.dump with an Object raises TypeError if an Object has a singleton class and singleton instance variables" # Expected TypeError (singleton can't be dumped) but no exception was raised ("\x04\bo:\vObject\x00" was returned)
  fails "Marshal.dump with an Object raises TypeError if an Object has a singleton class and singleton methods" # Expected TypeError (singleton can't be dumped) but no exception was raised ("\x04\bo:\vObject\x00" was returned)
  fails "Marshal.dump with an Object raises TypeError if an Object is an instance of an anonymous class" # Expected TypeError (/can't dump anonymous class/) but got: NoMethodError (undefined method `length' for nil)
  fails "Marshal.dump with an object responding to #_dump Core library classes with #_dump returning a String with instance variables indexes instance variables and then a Time object itself" # Expected "\x04\b[\ao:\tTime\x06:\x0E@timezonei\x00@\x06" == "\u0004\b[\aIu:\tTime\r \u0080\u001EÀ\u0000\u0000\u0000\u0000\u0006:\tzoneI\"\bUTC\u0006:\u0006EF@\a" to be truthy but was false
  fails "Marshal.dump with an object responding to #_dump dumps the String in multibyte encoding" # Expected "\x04\bu:\x16UserDefinedString\x06a" == "\x04\bIu:\x16UserDefinedString\ta\x00\x00\x00\x06:\rencoding\"\rUTF-32LE" to be truthy but was false
  fails "Marshal.dump with an object responding to #_dump dumps the String in non US-ASCII and non UTF-8 encoding" # ArgumentError: unknown encoding name - windows-1251
  fails "Marshal.dump with an object responding to #_dump dumps the String returned by #_dump" # Expected  "\x04\bu:\x10UserDefined\x17\x04\b[\a\" stuff\" stuff" ==  "\x04\bu:\x10UserDefined\x12\x04\b[\a: stuff;\x00" to be truthy but was false
  fails "Marshal.dump with an object responding to #_dump ignores overridden name method" # Expected  "\x04\bu:\bFoo\x17\x04\b[\a\" stuff\" stuff" ==  "\x04\bu:/MarshalSpec::UserDefinedWithOverriddenName\x12\x04\b[\a: stuff;\x00" to be truthy but was false
  fails "Marshal.dump with an object responding to #_dump indexes instance variables of a String returned by #_dump at first and then indexes the object itself" # Expected "\x04\b[\au:\x17MarshalSpec::M1::A\v<dump>u:\x17MarshalSpec::M1::A\v<dump>" == "\u0004\b[\aIu:\u0017MarshalSpec::M1::A\v<dump>\u0006:\t@foo\"\bbar@\a" to be truthy but was false
  fails "Marshal.dump with an object responding to #_dump raises TypeError if an Object is an instance of an anonymous class" # Expected TypeError (/can't dump anonymous class/) but got: NoMethodError (undefined method `length' for nil)
  fails "Marshal.dump with an object responding to #marshal_dump raises TypeError if an Object is an instance of an anonymous class" # Expected TypeError (/can't dump anonymous class/) but got: Exception (Cannot read properties of undefined (reading '$equal?'))
  fails "Marshal.load for a Complex loads" # Expected (4+3i).frozen? to be truthy but was false
  fails "Marshal.load for a Hash preserves compare_by_identity behaviour for a Hash subclass" # Expected {}.compare_by_identity? to be truthy but was false
  fails "Marshal.load for a Hash preserves compare_by_identity behaviour" # Expected {"a"=>1}.compare_by_identity? to be truthy but was false
  fails "Marshal.load for a Module loads an old module" # NotImplementedError: ModuleOld type cannot be demarshaled yet
  fails "Marshal.load for a Rational loads" # Expected (1/3).frozen? to be truthy but was false
  fails "Marshal.load for a Regexp loads a Regexp subclass instance variables when it is extended with a module" # Expected [Meths, Regexp, Object] == [Meths, UserRegexp, Regexp] to be truthy but was false
  fails "Marshal.load for a Regexp loads an extended Regexp" # Expected /[a-z]/ == /(?:)/ to be truthy but was false
  fails "Marshal.load for a Regexp preserves Regexp encoding" # NoMethodError: undefined method `encoding' for /a/
  fails "Marshal.load for a Regexp raises ArgumentError when end of byte sequence reached before source string end" # Expected "\x04\b/\x10hello world\x00" == "\x04\bI/\x10hello world\x00\x06:\x06EF" to be truthy but was false
  fails "Marshal.load for a String loads a String as BINARY if no encoding is specified at the end" # Expected #<Encoding:UTF-8> == #<Encoding:ASCII-8BIT> to be truthy but was false
  fails "Marshal.load for a String loads a String subclass with custom constructor" # ArgumentError: [UserCustomConstructorString#initialize] wrong number of arguments (given 1, expected 2)
  fails "Marshal.load for a String sets binmode if it is loading through StringIO stream" # Expected RuntimeError (binmode) but got: TypeError (incompatible marshal file format (can't be read))
  fails "Marshal.load for a Struct does not call initialize on the unmarshaled struct" # Expected ["foo"] == nil to be truthy but was false
  fails "Marshal.load for a Symbol loads a Symbol" # Expected #<Encoding:UTF-8> == #<Encoding:US-ASCII> to be truthy but was false
  fails "Marshal.load for a Symbol loads a binary encoded Symbol" # Expected "â\u0086\u0092" == "→" to be truthy but was false
  fails "Marshal.load for a Symbol loads an encoded Symbol" # Expected "â\u0086\u0092" == "→" to be truthy but was false
  fails "Marshal.load for a Symbol raises ArgumentError when end of byte sequence reached before symbol characters end" # Expected  "\x04\b\" hello" ==  "\x04\b: hello" to be truthy but was false
  fails "Marshal.load for a Time keeps nanoseconds" # NoMethodError: undefined method `nsec' for 2023-09-20 22:51:57 +0200
  fails "Marshal.load for a Time keeps the local zone" # Expected "Central European Summer Time" == "Central European Standard Time" to be truthy but was false
  fails "Marshal.load for a Time keeps the zone" # Expected "Central European Summer Time" == "AST" to be truthy but was false
  fails "Marshal.load for a Time keeps utc offset" # Expected 540 == 32400 to be truthy but was false
  fails "Marshal.load for a Time loads" # Expected 2022-12-07 05:35:14 +0100 == 1970-01-01 01:00:01 +0100 to be truthy but was false
  fails "Marshal.load for a user object that extends a core type other than Object or BasicObject raises ArgumentError if the resulting class does not extend the same type" # Expected ArgumentError but got: TypeError (no implicit conversion of Hash into Integer)
  fails "Marshal.load for an Exception loads a marshalled exception with a backtrace" # Expected "Exception" == "foo" to be truthy but was false
  fails "Marshal.load for an Exception loads a marshalled exception with a message" # Expected "Exception" == "foo" to be truthy but was false
  fails "Marshal.load for an Exception loads a marshalled exception with no message" # Expected ["<internal:corelib/class.rb>:19:1:in `allocate'",  "<internal:corelib/marshal/read_buffer.rb>:392:21:in `read_object'",  "<internal:corelib/marshal/read_buffer.rb>:78:9:in `read'",  "<internal:corelib/marshal.rb>:14:38:in `__send__'",  "<internal:corelib/basic_object.rb>:40:1:in `__send__'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `Opal.send'",  "<internal:corelib/runtime.js>:2124:7:in `send'",  "ruby/core/marshal/shared/load.rb:570:23:in `instance_exec'",  "<internal:corelib/basic_object.rb>:125:1:in `instance_exec'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `instance_exec'",  "mspec/runner/mspec.rb:116:11:in `protect'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `protect'",  "mspec/runner/context.rb:176:39:in `$$17'",  "<internal:corelib/runtime.js>:1667:5:in `Opal.yieldX'",  "<internal:corelib/enumerable.rb>:27:16:in `$$3'",  "<internal:corelib/runtime.js>:1644:7:in `each'",  "<internal:corelib/array.rb>:983:1:in `each'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `each'",  "<internal:corelib/enumerable.rb>:26:7:in `Enumerable_all$ques$1'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `all?'",  "mspec/runner/context.rb:176:18:in `protect'",  "mspec/runner/context.rb:212:26:in `$$21'",  "<internal:corelib/runtime.js>:1667:5:in `Opal.yieldX'",  "mspec/runner/mspec.rb:284:7:in `repeat'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `repeat'",  "mspec/runner/context.rb:204:16:in `$$20'",  "<internal:corelib/runtime.js>:1644:7:in `each'",  "<internal:corelib/array.rb>:983:1:in `each'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `each'",  "mspec/runner/context.rb:203:18:in `process'",  "mspec/runner/context.rb:235:34:in `$$23'",  "<internal:corelib/runtime.js>:1644:7:in `each'",  "<internal:corelib/array.rb>:983:1:in `each'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `each'",  "mspec/runner/context.rb:235:13:in `process'",  "mspec/runner/mspec.rb:55:10:in `describe'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `describe'",  "mspec/runner/object.rb:11:10:in `describe'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `describe'",  "ruby/core/marshal/load_spec.rb:4:1:in `Opal.modules.ruby/core/marshal/load_spec'",  "<internal:corelib/runtime.js>:2692:7:in `Opal.load_normalized'",  "<internal:corelib/runtime.js>:2721:5:in `load'",  "<internal:corelib/kernel.rb>:535:6:in `load'",  "mspec/runner/mspec.rb:99:42:in `instance_exec'",  "<internal:corelib/basic_object.rb>:125:1:in `instance_exec'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `instance_exec'",  "mspec/runner/mspec.rb:116:11:in `protect'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `protect'",  "mspec/runner/mspec.rb:99:7:in `$$1'",  "<internal:corelib/runtime.js>:1644:7:in `each'",  "<internal:corelib/array.rb>:983:1:in `each'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `each'",  "mspec/runner/mspec.rb:90:12:in `each_file'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `each_file'",  "mspec/runner/mspec.rb:95:5:in `files'",  "mspec/runner/mspec.rb:63:5:in `process'",  "tmp/mspec_nodejs.rb:3880:6:in `undefined'",  "<internal:corelib/runtime.js>:2805:7:in `<main>'",  "tmp/mspec_nodejs.rb:1:1:in `null'",  "node:internal/modules/cjs/loader:1105:14:in `Module._compile'",  "node:internal/modules/cjs/loader:1159:10:in `Module._extensions..js'",  "node:internal/modules/cjs/loader:981:32:in `Module.load'",  "node:internal/modules/cjs/loader:822:12:in `Module._load'",  "node:internal/modules/run_main:77:12:in `executeUserEntryPoint'",  "node:internal/main/run_main_module:17:47:in `undefined'"] == ["ruby/core/marshal/shared/load.rb:569:22:in `instance_exec'",  "<internal:corelib/basic_object.rb>:125:1:in `instance_exec'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `instance_exec'",  "mspec/runner/mspec.rb:116:11:in `protect'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `protect'",  "mspec/runner/context.rb:176:39:in `$$17'",  "<internal:corelib/runtime.js>:1667:5:in `Opal.yieldX'",  "<internal:corelib/enumerable.rb>:27:16:in `$$3'",  "<internal:corelib/runtime.js>:1644:7:in `each'",  "<internal:corelib/array.rb>:983:1:in `each'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `each'",  "<internal:corelib/enumerable.rb>:26:7:in `Enumerable_all$ques$1'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `all?'",  "mspec/runner/context.rb:176:18:in `protect'",  "mspec/runner/context.rb:212:26:in `$$21'",  "<internal:corelib/runtime.js>:1667:5:in `Opal.yieldX'",  "mspec/runner/mspec.rb:284:7:in `repeat'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `repeat'",  "mspec/runner/context.rb:204:16:in `$$20'",  "<internal:corelib/runtime.js>:1644:7:in `each'",  "<internal:corelib/array.rb>:983:1:in `each'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `each'",  "mspec/runner/context.rb:203:18:in `process'",  "mspec/runner/context.rb:235:34:in `$$23'",  "<internal:corelib/runtime.js>:1644:7:in `each'",  "<internal:corelib/array.rb>:983:1:in `each'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `each'",  "mspec/runner/context.rb:235:13:in `process'",  "mspec/runner/mspec.rb:55:10:in `describe'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `describe'",  "mspec/runner/object.rb:11:10:in `describe'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `describe'",  "ruby/core/marshal/load_spec.rb:4:1:in `Opal.modules.ruby/core/marshal/load_spec'",  "<internal:corelib/runtime.js>:2692:7:in `Opal.load_normalized'",  "<internal:corelib/runtime.js>:2721:5:in `load'",  "<internal:corelib/kernel.rb>:535:6:in `load'",  "mspec/runner/mspec.rb:99:42:in `instance_exec'",  "<internal:corelib/basic_object.rb>:125:1:in `instance_exec'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `instance_exec'",  "mspec/runner/mspec.rb:116:11:in `protect'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `protect'",  "mspec/runner/mspec.rb:99:7:in `$$1'",  "<internal:corelib/runtime.js>:1644:7:in `each'",  "<internal:corelib/array.rb>:983:1:in `each'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `each'",  "mspec/runner/mspec.rb:90:12:in `each_file'",  "<internal:corelib/runtime.js>:1878:5:in `Opal.send2'",  "<internal:corelib/runtime.js>:1866:5:in `each_file'",  "mspec/runner/mspec.rb:95:5:in `files'",  "mspec/runner/mspec.rb:63:5:in `process'",  "tmp/mspec_nodejs.rb:3880:6:in `undefined'",  "<internal:corelib/runtime.js>:2805:7:in `<main>'",  "tmp/mspec_nodejs.rb:1:1:in `null'",  "node:internal/modules/cjs/loader:1105:14:in `Module._compile'",  "node:internal/modules/cjs/loader:1159:10:in `Module._extensions..js'",  "node:internal/modules/cjs/loader:981:32:in `Module.load'",  "node:internal/modules/cjs/loader:822:12:in `Module._load'",  "node:internal/modules/run_main:77:12:in `executeUserEntryPoint'",  "node:internal/main/run_main_module:17:47:in `undefined'"] to be truthy but was false
  fails "Marshal.load for an Exception loads an marshalled exception with ivars" # Expected "Exception" == "foo" to be truthy but was false
  fails "Marshal.load for an Object loads an Object with a non-US-ASCII instance variable" # NameError: '@Ã©' is not allowed as an instance variable name
  fails "Marshal.load for an Object raises ArgumentError if the object from an 'o' stream is not dumpable as 'o' type user class" # Expected ArgumentError but no exception was raised (#<File:0x89744 @path="/etc/passwd"> was returned)
  fails "Marshal.load for an object responding to #marshal_dump and #marshal_load loads a user-marshaled object" # Expected "\x04\b[\aU:\x10UserMarshal\"\tdata@\x06" == "\x04\b[\aU:\x10UserMarshal:\tdata;\x06" to be truthy but was false
  fails "Marshal.load loads an array containing objects having _dump method, and with proc" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load loads an array containing objects having marshal_dump method, and with proc" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when a class does not exist in the namespace raises an ArgumentError" # Expected ArgumentError (undefined class/module NamespaceTest::SameName) but no exception was raised (#<SameName:0x89b06> was returned)
  fails "Marshal.load when called on objects with custom _dump methods loads the String in non US-ASCII and non UTF-8 encoding" # ArgumentError: unknown encoding name - windows-1251
  fails "Marshal.load when called with a proc call the proc with extended objects" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with a proc call the proc with fully initialized strings" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with a proc calls the proc for recursively visited data" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with a proc loads an Array with proc" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with a proc no longer mutate the object after it was passed to the proc" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with a proc returns the value of the proc" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with freeze: true deep freezing deduplicates frozen strings" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with freeze: true deep freezing returns arrays with frozen elements" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with freeze: true deep freezing returns hashes with frozen keys and values" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with freeze: true deep freezing returns objects with frozen instance variables" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with freeze: true deep freezing returns structs with frozen members" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with freeze: true does freeze extended objects with instance variables" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with freeze: true does freeze extended objects" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with freeze: true does not call freeze method" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with freeze: true returns a frozen object when is an instance of String/Array/Regexp/Hash subclass and has instance variables" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with freeze: true returns frozen object even if object does not respond to freeze method" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with freeze: true returns frozen object extended by a module" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with freeze: true returns frozen object having #_dump method" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with freeze: true returns frozen object responding to #marshal_dump and #marshal_load" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with freeze: true returns frozen structs" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)
  fails "Marshal.load when called with nil for the proc argument behaves as if no proc argument was passed" # ArgumentError: [Marshal.load] wrong number of arguments (given 2, expected 1)  
end
