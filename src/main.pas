var is_running: boolean;
var one, two, answ: real;
var todo: char;
var can_continue: char;

function act(num1, num2: real; todo_proc: char): real;
var final: real;
var recognised_char: boolean;

begin
	recognised_char:=false;

	if (todo_proc = '+') then begin final := num1+num2; recognised_char := true; act := final; end;

	if (todo_proc = '-') then begin final := num1-num2; recognised_char := true; act := final; end;

	if (todo_proc = '*') then begin final := num1*num2; recognised_char := true; act := final end;

	if (todo_proc = '/') then begin final := num1/num2; recognised_char := true; act := final end;
	
	if (recognised_char = false) then begin writeln('Could not recognise command. Returned -1 as a default output'); act:=-1; end;	
end;

begin
	is_running:=true;
	writeln('WaxusBS calculator');
	writeln('Warning: never write words instead of numbers, because it causes fatal error!');
	while(is_running)do begin
		write('Write first number: ');
		readln(one);
		write('Write second number: ');
		readln(two);
		write('Write command (available: +, -, *, /): ');
		readln(todo);

		answ:=act(one, two, todo);
		writeln('Answer: ', answ:0:5);

		write('Continue [Y/n]? ');
		read(can_continue);

		if (can_continue <> 'y') and (can_continue <> 'Y') and (can_continue <> sLineBreak) then begin is_running:=false; writeln('Bye!'); end;
	end;
end.
