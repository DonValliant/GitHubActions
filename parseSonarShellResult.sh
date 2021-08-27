#! /bin/sh
awk  '
{
    if (match($0,/Swift/)) {shouldPrint = "YES"}
    if (match($0,/coverage/)) {shouldPrint = "YES"}
    if (match($0,/\.m/)) {shouldPrint = "NO"}
}
{
    if (shouldPrint == "YES") {print $0}
    else
    { if (match($0,/\/file/)) {shouldPrint = "YES"} }
}
'
