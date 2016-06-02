# OpenShift v3 Shell CGI


First, fork this repository
![fork](images/fork.jpg)

You'll have a repo called something like `https://github.com/<username>/httpd-shell` Clone that and clean it up

```
user@host$ cd /usr/local/src/
user@host$ git clone https://github.com/<username>/httpd-shell
user@host$ cd httpd-shell/
user@host$ rm -rf html/*
user@host$ rm -rf cig-bin/*
```

Copy your code/files/artifacts into the repo
```
user@host$ cp -a /path/to/html/* html/
user@host$ cp -a /path/to/cig-bin/* cgi-bin/
```

Once you added your stuff; add it to your forked repo 
```
user@host$ git add -A .
user@host$ git commit -am "Added custom code"
user@host$ git push
```

Now create a new project that will house the auth pod
```
user@host$  oc new-project test --display-name="Test Project"
```

Create your application using the following parameters
```
user@host$ oc new-app --name=cgi-test https://github.com/<username>/httpd-shell  --strategy=docker
user@host$ oc expose svc/cgi-test
```
