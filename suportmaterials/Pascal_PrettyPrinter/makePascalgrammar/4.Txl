#pragma -comment

comments
    { }
end comments    

keys
    'program 'end 'begin 'Write 'Readln 'uses 'crt 'ClrScr
end keys    

define program
    [repeat statement]
end define

define statement
    [programTitle]
    | [comment] [NL] %a comment is anything between {}
    | [usesStatement]
    | [actionStatement]
    | [startStatement]
    | [writeStatement]
    | [readStatement]
    | [endStatement]
end define

define programTitle
    'program [id] '; [NL][NL]
end define    

define startStatement
   begin [NL][IN]
end define        

define endStatement
    [EX] 'end.
end define    

define usesStatement
    uses [NL][IN] [useTypes] [NL][EX]
end define    

define actionStatement
    ClrScr; [NL]
end define

define useTypes
    crt;
end define

define writeStatement
    Write '( [charlit] '); [NL]
    | Writeln '( [charlit] '); [NL]
end define

define readStatement
    Readln; [NL]
end define    

function main
    replace [program]
        P [program]
    by
        P
end function    
    
