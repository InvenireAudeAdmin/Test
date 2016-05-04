
PROGRAM rec(VAR i  AS Integer, VAR val  AS String, VAR t AS String)
RETURNS String
BEGIN
  result = val + i;
  //i = i -1;
END;	


PROGRAM changeAddress(VAR ctx   AS Context  : "http://www.invenireaude.org/qsystem/workers",
		   	   VAR input  AS Customer : "http://www.examples.org/akc")
RETURNS Customer : "http://www.examples.org/akc"	
BEGIN
 
  VAR counter AS Integer;


   counter = 0;
   
	WITH input.address DO BEGIN
		street="JavaScript";
		block=counter;
       // counter = counter + 1;
	END;
	
	WITH input.address DO BEGIN
		street="JavaScript";
		block=counter;
      //  counter = counter + 1;
	END;

	counter = 100;

	WHILE counter > 0 DO BEGIN
	 counter = counter - 1;
	 counter = counter - 1;
	 input.middlename="Hello there !" + rec(counter,"abc","xyz");	 
	END;
	
	ctx.attributes = NEW Attribute : "http://www.invenireaude.org/qsystem/workers" BEGIN
		name="JSON";
		value = "Hello from my module!";
	END;
	
	RETURN input;

END;
