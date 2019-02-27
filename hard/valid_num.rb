
/^[+-]?\d+[\.]0$/ =~ "123.0"  # => 0

/[+-]?(\d+[e?]|\d+[e?]\d*)([.]\d*)?/ =~ "123"  # => nil

def is_number(s)

  /^[+-]?\d+[\.]0$/ =~ s  # => nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, ...

#    /[+-]?(\d+[e?]|\d+[e?]\d*)([.]\d*)?/ =~ s  # => nil, nil, nil, nil, 0, 1, 1, nil, 1, 1, ...
end                                             # => :is_number


is_number("2e10")        # => 0
is_number(" -90e3   " )  # => 1
is_number(" 1e" )        # => 1
is_number(" 6e-1" )      # => 1
is_number(" 99e2.5 " )   # => 1
is_number("53.5e93" )    # => 3
is_number("95a54e53" )   # => 3


is_number("0")           # => nil
is_number(" 0.1 ")       # => nil
is_number("abc" )        # => nil
is_number("1 a" )        # => nil
is_number("e3" )         # => nil
is_number(" --6 " )      # => nil
is_number("-+3" )        # => nil
