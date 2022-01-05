-- Server portion
listener=openListener("$:5000");
-- Block until a connection is received.  Open the connection
i = 0 
while (i < 1) do (

conn=openInOut(listener);
stdio<<"Connection opened!"<<endl<<flush;

    stdio<<"Waiting for a command."<<endl<<flush;
    inString=read(conn);
    -- inString has an EOL, but should be a single line.
    inStringLines=lines(inString);
    if not(#inStringLines==1) then (
        stdio<<"Received "<<#inStringLines<<" lines of input; unexpected.  Aborting"<<endl<<flush;
        break;
    );
    inStringCmd=inStringLines#0;
    stdio<<"Received \""<<inStringCmd<<"\".  Will execute."<<endl<<flush;
    outString=toString(value(inStringCmd));
    stdio<<"  Cmd evaluated to \""<<outString<<"\". Sending reply."<<endl<<flush;
    conn<<outString<<endl<<flush;
    stdio<<"Server finished with isOpen="<<isOpen(conn)<<" and atEndOfFile="<<atEndOfFile(conn)<<endl<<flush;
    close(conn);
    stdio<<"close conn" << endl<<flush;
   
)
close(listener);
stdio<<"close lis" << endl<<flush;

-- load "socket_server.m2"
