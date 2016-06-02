#!/bin/bash -fuh
echo "Content-type: text/html"
cat <<ENDHTML
<html>
<head>
<title>CGI Test</title>
</head>
<body>
<a href="index.html">Click Here</a>
</body>
</html>
ENDHTML
##
##
