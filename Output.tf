task1>terraform apply --auto-approve
tls_private_key.mykey1a: Creating...
tls_private_key.mykey1a: Creation complete after 0s [id=87342a99cc0409eb2033814a411b36f8f9ddc8e0]
aws_key_pair.opensshkey: Creating...
aws_security_group.allow_tls: Creating...
aws_key_pair.opensshkey: Creation complete after 0s [id=mykey1a]
aws_security_group.allow_tls: Creation complete after 4s [id=sg-039202f49f45c7467]
aws_instance.myos: Creating...
aws_instance.myos: Still creating... [10s elapsed]
aws_instance.myos: Still creating... [20s elapsed]
aws_instance.myos: Provisioning with 'remote-exec'...
aws_instance.myos (remote-exec): Connecting to remote host via SSH...
aws_instance.myos (remote-exec):   Host: 13.233.116.8
aws_instance.myos (remote-exec):   User: ec2-user
aws_instance.myos (remote-exec):   Password: false
aws_instance.myos (remote-exec):   Private key: true
aws_instance.myos (remote-exec):   Certificate: false
aws_instance.myos (remote-exec):   SSH Agent: false
aws_instance.myos (remote-exec):   Checking Host Key: false
aws_instance.myos: Still creating... [30s elapsed]
aws_instance.myos (remote-exec): Connecting to remote host via SSH...
aws_instance.myos (remote-exec):   Host: 13.233.116.8
aws_instance.myos (remote-exec):   User: ec2-user
aws_instance.myos (remote-exec):   Password: false
aws_instance.myos (remote-exec):   Private key: true
aws_instance.myos (remote-exec):   Certificate: false
aws_instance.myos (remote-exec):   SSH Agent: false
aws_instance.myos (remote-exec):   Checking Host Key: false
aws_instance.myos (remote-exec): Connected!
aws_instance.myos (remote-exec): Loaded plugins: extras_suggestions,
aws_instance.myos (remote-exec):               : langpacks, priorities,
aws_instance.myos (remote-exec):               : update-motd
aws_instance.myos (remote-exec): Existing lock /var/run/yum.pid: another copy is running as pid 3287.
aws_instance.myos (remote-exec): Another app is currently holding the yum lock; waiting for it to exit...
aws_instance.myos (remote-exec):   The other application is: yum
aws_instance.myos (remote-exec):     Memory : 131 M RSS (421 MB VSZ)
aws_instance.myos (remote-exec):     Started: Tue Jun 16 12:16:47 2020 - 00:07 ago
aws_instance.myos (remote-exec):     State  : Running, pid: 3287
aws_instance.myos (remote-exec): Existing lock /var/run/yum.pid: another copy is running as pid 3403.
aws_instance.myos (remote-exec): Another app is currently holding the yum lock; waiting for it to exit...
aws_instance.myos (remote-exec):   The other application is: yum
aws_instance.myos (remote-exec):     Memory :  33 M RSS (250 MB VSZ)
aws_instance.myos (remote-exec):     Started: Tue Jun 16 12:16:48 2020 - 00:08 ago
aws_instance.myos (remote-exec):     State  : Running, pid: 3403
aws_instance.myos: Still creating... [40s elapsed]
aws_instance.myos (remote-exec): Another app is currently holding the yum lock; waiting for it to exit...
aws_instance.myos (remote-exec):   The other application is: yum
aws_instance.myos (remote-exec):     Memory :  83 M RSS (318 MB VSZ)
aws_instance.myos (remote-exec):     Started: Tue Jun 16 12:16:48 2020 - 00:10 ago
aws_instance.myos (remote-exec):     State  : Sleeping, pid: 3403
aws_instance.myos (remote-exec): Existing lock /var/run/yum.pid: another copy is running as pid 3567.
aws_instance.myos (remote-exec): Another app is currently holding the yum lock; waiting for it to exit...
aws_instance.myos (remote-exec):   The other application is: yum
aws_instance.myos (remote-exec):     Memory :  79 M RSS (295 MB VSZ)
aws_instance.myos (remote-exec):     Started: Tue Jun 16 12:16:58 2020 - 00:02 ago
aws_instance.myos (remote-exec):     State  : Running, pid: 3567
aws_instance.myos (remote-exec): Another app is currently holding the yum lock; waiting for it to exit...
aws_instance.myos (remote-exec):   The other application is: yum
aws_instance.myos (remote-exec):     Memory : 112 M RSS (329 MB VSZ)
aws_instance.myos (remote-exec):     Started: Tue Jun 16 12:16:58 2020 - 00:04 ago
aws_instance.myos (remote-exec):     State  : Running, pid: 3567
aws_instance.myos (remote-exec): Resolving Dependencies
aws_instance.myos (remote-exec): --> Running transaction check
aws_instance.myos (remote-exec): ---> Package httpd.x86_64 0:2.4.43-1.amzn2 will be installed
aws_instance.myos (remote-exec): --> Processing Dependency: httpd-tools = 2.4.43-1.amzn2 for package: httpd-2.4.43-1.amzn2.x86_64
aws_instance.myos (remote-exec): --> Processing Dependency: httpd-filesystem = 2.4.43-1.amzn2 for package: httpd-2.4.43-1.amzn2.x86_64
aws_instance.myos (remote-exec): --> Processing Dependency: system-logos-httpd for package: httpd-2.4.43-1.amzn2.x86_64
aws_instance.myos (remote-exec): --> Processing Dependency: mod_http2 for package: httpd-2.4.43-1.amzn2.x86_64
aws_instance.myos (remote-exec): --> Processing Dependency: httpd-filesystem for package: httpd-2.4.43-1.amzn2.x86_64
aws_instance.myos (remote-exec): --> Processing Dependency: /etc/mime.types for package: httpd-2.4.43-1.amzn2.x86_64
aws_instance.myos (remote-exec): --> Processing Dependency: libaprutil-1.so.0()(64bit) for package: httpd-2.4.43-1.amzn2.x86_64
aws_instance.myos (remote-exec): --> Processing Dependency: libapr-1.so.0()(64bit) for package: httpd-2.4.43-1.amzn2.x86_64
aws_instance.myos (remote-exec): --> Running transaction check
aws_instance.myos (remote-exec): ---> Package apr.x86_64 0:1.6.3-5.amzn2.0.2 will be installed
aws_instance.myos (remote-exec): ---> Package apr-util.x86_64 0:1.6.1-5.amzn2.0.2 will be installed
aws_instance.myos (remote-exec): --> Processing Dependency: apr-util-bdb(x86-64) = 1.6.1-5.amzn2.0.2 for package: apr-util-1.6.1-5.amzn2.0.2.x86_64
aws_instance.myos (remote-exec): ---> Package generic-logos-httpd.noarch 0:18.0.0-4.amzn2 will be installed
aws_instance.myos (remote-exec): ---> Package httpd-filesystem.noarch 0:2.4.43-1.amzn2 will be installed
aws_instance.myos (remote-exec): ---> Package httpd-tools.x86_64 0:2.4.43-1.amzn2 will be installed
aws_instance.myos (remote-exec): ---> Package mailcap.noarch 0:2.1.41-2.amzn2 will be installed
aws_instance.myos (remote-exec): ---> Package mod_http2.x86_64 0:1.15.3-2.amzn2 will be installed
aws_instance.myos (remote-exec): --> Running transaction check
aws_instance.myos (remote-exec): ---> Package apr-util-bdb.x86_64 0:1.6.1-5.amzn2.0.2 will be installed
aws_instance.myos (remote-exec): --> Finished Dependency Resolution

aws_instance.myos (remote-exec): Dependencies Resolved

aws_instance.myos (remote-exec): ========================================
aws_instance.myos (remote-exec):  Package      Arch   Version
aws_instance.myos (remote-exec):                        Repository  Size
aws_instance.myos (remote-exec): ========================================
aws_instance.myos (remote-exec): Installing:
aws_instance.myos (remote-exec):  httpd        x86_64 2.4.43-1.amzn2
aws_instance.myos (remote-exec):                        amzn2-core 1.3 M
aws_instance.myos (remote-exec): Installing for dependencies:
aws_instance.myos (remote-exec):  apr          x86_64 1.6.3-5.amzn2.0.2
aws_instance.myos (remote-exec):                        amzn2-core 118 k
aws_instance.myos (remote-exec):  apr-util     x86_64 1.6.1-5.amzn2.0.2
aws_instance.myos (remote-exec):                        amzn2-core  99 k
aws_instance.myos (remote-exec):  apr-util-bdb x86_64 1.6.1-5.amzn2.0.2
aws_instance.myos (remote-exec):                        amzn2-core  19 k
aws_instance.myos (remote-exec):  generic-logos-httpd
aws_instance.myos (remote-exec):               noarch 18.0.0-4.amzn2
aws_instance.myos (remote-exec):                        amzn2-core  19 k
aws_instance.myos (remote-exec):  httpd-filesystem
aws_instance.myos (remote-exec):               noarch 2.4.43-1.amzn2
aws_instance.myos (remote-exec):                        amzn2-core  23 k
aws_instance.myos (remote-exec):  httpd-tools  x86_64 2.4.43-1.amzn2
aws_instance.myos (remote-exec):                        amzn2-core  87 k
aws_instance.myos (remote-exec):  mailcap      noarch 2.1.41-2.amzn2
aws_instance.myos (remote-exec):                        amzn2-core  31 k
aws_instance.myos (remote-exec):  mod_http2    x86_64 1.15.3-2.amzn2
aws_instance.myos (remote-exec):                        amzn2-core 146 k

aws_instance.myos (remote-exec): Transaction Summary
aws_instance.myos (remote-exec): ========================================
aws_instance.myos (remote-exec): Install  1 Package (+8 Dependent packages)

aws_instance.myos (remote-exec): Total download size: 1.8 M
aws_instance.myos (remote-exec): Installed size: 5.1 M
aws_instance.myos (remote-exec): Downloading packages:
aws_instance.myos (remote-exec): (1/9): apr-util-1. |  99 kB   00:00
aws_instance.myos (remote-exec): (2/9): apr-1.6.3-5 | 118 kB   00:00
aws_instance.myos (remote-exec): (3/9): apr-util-bd |  19 kB   00:00
aws_instance.myos (remote-exec): (4/9): generic-log |  19 kB   00:00
aws_instance.myos (remote-exec): (5/9): httpd-files |  23 kB   00:00
aws_instance.myos (remote-exec): (6/9): httpd-tools |  87 kB   00:00
aws_instance.myos (remote-exec): (7/9): mailcap-2.1 |  31 kB   00:00
aws_instance.myos (remote-exec): (8/9): httpd-2.4.4 | 1.3 MB   00:00
aws_instance.myos (remote-exec): (9/9): mod_http2-1 | 146 kB   00:00
aws_instance.myos (remote-exec): ----------------------------------------
aws_instance.myos (remote-exec): Total      7.9 MB/s | 1.8 MB  00:00
aws_instance.myos (remote-exec): Running transaction check
aws_instance.myos (remote-exec): Running transaction test
aws_instance.myos (remote-exec): Transaction test succeeded
aws_instance.myos (remote-exec): Running transaction
aws_instance.myos (remote-exec):   Installing : apr-1.6. [         ] 1/9
aws_instance.myos (remote-exec):   Installing : apr-1.6. [##       ] 1/9
aws_instance.myos (remote-exec):   Installing : apr-1.6. [####     ] 1/9
aws_instance.myos (remote-exec):   Installing : apr-1.6. [######   ] 1/9
aws_instance.myos (remote-exec):   Installing : apr-1.6. [######## ] 1/9
aws_instance.myos (remote-exec):   Installing : apr-1.6.3-5.amzn2.   1/9
aws_instance.myos (remote-exec):   Installing : apr-util [         ] 2/9
aws_instance.myos (remote-exec):   Installing : apr-util [######## ] 2/9
aws_instance.myos (remote-exec):   Installing : apr-util-bdb-1.6.1   2/9
aws_instance.myos (remote-exec):   Installing : apr-util [         ] 3/9
aws_instance.myos (remote-exec):   Installing : apr-util [##       ] 3/9
aws_instance.myos (remote-exec):   Installing : apr-util [#####    ] 3/9
aws_instance.myos (remote-exec):   Installing : apr-util [#######  ] 3/9
aws_instance.myos (remote-exec):   Installing : apr-util [######## ] 3/9
aws_instance.myos (remote-exec):   Installing : apr-util-1.6.1-5.a   3/9
aws_instance.myos (remote-exec):   Installing : httpd-to [         ] 4/9
aws_instance.myos (remote-exec):   Installing : httpd-to [##       ] 4/9
aws_instance.myos (remote-exec):   Installing : httpd-to [###      ] 4/9
aws_instance.myos (remote-exec):   Installing : httpd-to [####     ] 4/9
aws_instance.myos (remote-exec):   Installing : httpd-to [#####    ] 4/9
aws_instance.myos (remote-exec):   Installing : httpd-to [######   ] 4/9
aws_instance.myos (remote-exec):   Installing : httpd-to [######## ] 4/9
aws_instance.myos (remote-exec):   Installing : httpd-tools-2.4.43   4/9
aws_instance.myos (remote-exec):   Installing : generic- [         ] 5/9
aws_instance.myos (remote-exec):   Installing : generic- [#######  ] 5/9
aws_instance.myos (remote-exec):   Installing : generic- [######## ] 5/9
aws_instance.myos (remote-exec):   Installing : generic-logos-http   5/9
aws_instance.myos (remote-exec):   Installing : mailcap- [         ] 6/9
aws_instance.myos (remote-exec):   Installing : mailcap- [#######  ] 6/9
aws_instance.myos (remote-exec):   Installing : mailcap- [######## ] 6/9
aws_instance.myos (remote-exec):   Installing : mailcap-2.1.41-2.a   6/9
aws_instance.myos (remote-exec):   Installing : httpd-fi [         ] 7/9
aws_instance.myos (remote-exec):   Installing : httpd-fi [#        ] 7/9
aws_instance.myos (remote-exec):   Installing : httpd-fi [###      ] 7/9
aws_instance.myos (remote-exec):   Installing : httpd-fi [####     ] 7/9
aws_instance.myos (remote-exec):   Installing : httpd-fi [#####    ] 7/9
aws_instance.myos (remote-exec):   Installing : httpd-fi [######   ] 7/9
aws_instance.myos (remote-exec):   Installing : httpd-fi [#######  ] 7/9
aws_instance.myos (remote-exec):   Installing : httpd-fi [######## ] 7/9
aws_instance.myos (remote-exec):   Installing : httpd-filesystem-2   7/9
aws_instance.myos (remote-exec):   Installing : mod_http [         ] 8/9
aws_instance.myos (remote-exec):   Installing : mod_http [#        ] 8/9
aws_instance.myos (remote-exec):   Installing : mod_http [##       ] 8/9
aws_instance.myos (remote-exec):   Installing : mod_http [####     ] 8/9
aws_instance.myos (remote-exec):   Installing : mod_http [#####    ] 8/9
aws_instance.myos (remote-exec):   Installing : mod_http [#######  ] 8/9
aws_instance.myos (remote-exec):   Installing : mod_http [######## ] 8/9
aws_instance.myos (remote-exec):   Installing : mod_http2-1.15.3-2   8/9
aws_instance.myos (remote-exec):   Installing : httpd-2. [         ] 9/9
aws_instance.myos (remote-exec):   Installing : httpd-2. [#        ] 9/9
aws_instance.myos (remote-exec):   Installing : httpd-2. [##       ] 9/9
aws_instance.myos (remote-exec):   Installing : httpd-2. [###      ] 9/9
aws_instance.myos (remote-exec):   Installing : httpd-2. [####     ] 9/9
aws_instance.myos (remote-exec):   Installing : httpd-2. [#####    ] 9/9
aws_instance.myos (remote-exec):   Installing : httpd-2. [######   ] 9/9
aws_instance.myos (remote-exec):   Installing : httpd-2. [#######  ] 9/9
aws_instance.myos (remote-exec):   Installing : httpd-2. [######## ] 9/9
aws_instance.myos (remote-exec):   Installing : httpd-2.4.43-1.amz   9/9
aws_instance.myos (remote-exec):   Verifying  : apr-util-1.6.1-5.a   1/9
aws_instance.myos (remote-exec):   Verifying  : apr-util-bdb-1.6.1   2/9
aws_instance.myos (remote-exec):   Verifying  : httpd-2.4.43-1.amz   3/9
aws_instance.myos (remote-exec):   Verifying  : mod_http2-1.15.3-2   4/9
aws_instance.myos (remote-exec):   Verifying  : httpd-filesystem-2   5/9
aws_instance.myos (remote-exec):   Verifying  : apr-1.6.3-5.amzn2.   6/9
aws_instance.myos (remote-exec):   Verifying  : mailcap-2.1.41-2.a   7/9
aws_instance.myos (remote-exec):   Verifying  : generic-logos-http   8/9
aws_instance.myos (remote-exec):   Verifying  : httpd-tools-2.4.43   9/9

aws_instance.myos (remote-exec): Installed:
aws_instance.myos (remote-exec):   httpd.x86_64 0:2.4.43-1.amzn2

aws_instance.myos (remote-exec): Dependency Installed:
aws_instance.myos (remote-exec):   apr.x86_64 0:1.6.3-5.amzn2.0.2
aws_instance.myos (remote-exec):   apr-util.x86_64 0:1.6.1-5.amzn2.0.2
aws_instance.myos (remote-exec):   apr-util-bdb.x86_64 0:1.6.1-5.amzn2.0.2
aws_instance.myos (remote-exec):   generic-logos-httpd.noarch 0:18.0.0-4.amzn2
aws_instance.myos (remote-exec):   httpd-filesystem.noarch 0:2.4.43-1.amzn2
aws_instance.myos (remote-exec):   httpd-tools.x86_64 0:2.4.43-1.amzn2
aws_instance.myos (remote-exec):   mailcap.noarch 0:2.1.41-2.amzn2
aws_instance.myos (remote-exec):   mod_http2.x86_64 0:1.15.3-2.amzn2

aws_instance.myos (remote-exec): Complete!
aws_instance.myos (remote-exec): Loaded plugins: extras_suggestions,
aws_instance.myos (remote-exec):               : langpacks, priorities,
aws_instance.myos (remote-exec):               : update-motd
aws_instance.myos (remote-exec): Resolving Dependencies
aws_instance.myos (remote-exec): --> Running transaction check
aws_instance.myos (remote-exec): ---> Package git.x86_64 0:2.23.3-1.amzn2.0.1 will be installed
aws_instance.myos (remote-exec): --> Processing Dependency: perl-Git = 2.23.3-1.amzn2.0.1 for package: git-2.23.3-1.amzn2.0.1.x86_64
aws_instance.myos (remote-exec): --> Processing Dependency: git-core-doc = 2.23.3-1.amzn2.0.1 for package: git-2.23.3-1.amzn2.0.1.x86_64
aws_instance.myos (remote-exec): --> Processing Dependency: git-core = 2.23.3-1.amzn2.0.1 for package: git-2.23.3-1.amzn2.0.1.x86_64
aws_instance.myos (remote-exec): --> Processing Dependency: emacs-filesystem >= 25.3 for package: git-2.23.3-1.amzn2.0.1.x86_64
aws_instance.myos (remote-exec): --> Processing Dependency: perl(Term::ReadKey) for package: git-2.23.3-1.amzn2.0.1.x86_64
aws_instance.myos (remote-exec): --> Processing Dependency: perl(Git::I18N) for package: git-2.23.3-1.amzn2.0.1.x86_64
aws_instance.myos (remote-exec): --> Processing Dependency: perl(Git) for package: git-2.23.3-1.amzn2.0.1.x86_64
aws_instance.myos (remote-exec): --> Processing Dependency: libsecret-1.so.0()(64bit) for package: git-2.23.3-1.amzn2.0.1.x86_64
aws_instance.myos (remote-exec): --> Running transaction check
aws_instance.myos (remote-exec): ---> Package emacs-filesystem.noarch 1:25.3-3.amzn2.0.1 will be installed
aws_instance.myos (remote-exec): ---> Package git-core.x86_64 0:2.23.3-1.amzn2.0.1 will be installed
aws_instance.myos (remote-exec): ---> Package git-core-doc.noarch 0:2.23.3-1.amzn2.0.1 will be installed
aws_instance.myos (remote-exec): ---> Package libsecret.x86_64 0:0.18.5-2.amzn2.0.2 will be installed
aws_instance.myos (remote-exec): ---> Package perl-Git.noarch 0:2.23.3-1.amzn2.0.1 will be installed
aws_instance.myos (remote-exec): --> Processing Dependency: perl(Error) for package: perl-Git-2.23.3-1.amzn2.0.1.noarch
aws_instance.myos (remote-exec): ---> Package perl-TermReadKey.x86_64 0:2.30-20.amzn2.0.2 will be installed
aws_instance.myos (remote-exec): --> Running transaction check
aws_instance.myos (remote-exec): ---> Package perl-Error.noarch 1:0.17020-2.amzn2 will be installed
aws_instance.myos: Still creating... [50s elapsed]
aws_instance.myos (remote-exec): --> Finished Dependency Resolution

aws_instance.myos (remote-exec): Dependencies Resolved

aws_instance.myos (remote-exec): ========================================
aws_instance.myos (remote-exec):  Package      Arch   Version
aws_instance.myos (remote-exec):                        Repository  Size
aws_instance.myos (remote-exec): ========================================
aws_instance.myos (remote-exec): Installing:
aws_instance.myos (remote-exec):  git          x86_64 2.23.3-1.amzn2.0.1
aws_instance.myos (remote-exec):                        amzn2-core 135 k
aws_instance.myos (remote-exec): Installing for dependencies:
aws_instance.myos (remote-exec):  emacs-filesystem
aws_instance.myos (remote-exec):               noarch 1:25.3-3.amzn2.0.1
aws_instance.myos (remote-exec):                        amzn2-core  64 k
aws_instance.myos (remote-exec):  git-core     x86_64 2.23.3-1.amzn2.0.1
aws_instance.myos (remote-exec):                        amzn2-core 5.0 M
aws_instance.myos (remote-exec):  git-core-doc noarch 2.23.3-1.amzn2.0.1
aws_instance.myos (remote-exec):                        amzn2-core 2.4 M
aws_instance.myos (remote-exec):  libsecret    x86_64 0.18.5-2.amzn2.0.2
aws_instance.myos (remote-exec):                        amzn2-core 153 k
aws_instance.myos (remote-exec):  perl-Error   noarch 1:0.17020-2.amzn2
aws_instance.myos (remote-exec):                        amzn2-core  32 k
aws_instance.myos (remote-exec):  perl-Git     noarch 2.23.3-1.amzn2.0.1
aws_instance.myos (remote-exec):                        amzn2-core  47 k
aws_instance.myos (remote-exec):  perl-TermReadKey
aws_instance.myos (remote-exec):               x86_64 2.30-20.amzn2.0.2
aws_instance.myos (remote-exec):                        amzn2-core  31 k

aws_instance.myos (remote-exec): Transaction Summary
aws_instance.myos (remote-exec): ========================================
aws_instance.myos (remote-exec): Install  1 Package (+7 Dependent packages)

aws_instance.myos (remote-exec): Total download size: 7.9 M
aws_instance.myos (remote-exec): Installed size: 41 M
aws_instance.myos (remote-exec): Downloading packages:
aws_instance.myos (remote-exec): (1/8): git-2.23.3- | 135 kB   00:00
aws_instance.myos (remote-exec): (2/8): emacs-files |  64 kB   00:00
aws_instance.myos (remote-exec): (3/8): git-core-do | 2.4 MB   00:00
aws_instance.myos (remote-exec): (4/8): git-core-2. | 5.0 MB   00:00
aws_instance.myos (remote-exec): (5/8): libsecret-0 | 153 kB   00:00
aws_instance.myos (remote-exec): (6/8): perl-Error- |  32 kB   00:00
aws_instance.myos (remote-exec): (7/8): perl-Git-2. |  47 kB   00:00
aws_instance.myos (remote-exec): (8/8): perl-TermRe |  31 kB   00:00
aws_instance.myos (remote-exec): ----------------------------------------
aws_instance.myos (remote-exec): Total       35 MB/s | 7.9 MB  00:00
aws_instance.myos (remote-exec): Running transaction check
aws_instance.myos (remote-exec): Running transaction test
aws_instance.myos (remote-exec): Transaction test succeeded
aws_instance.myos (remote-exec): Running transaction
aws_instance.myos (remote-exec):   Installing : git-core [         ] 1/8
aws_instance.myos (remote-exec):   Installing : git-core [#        ] 1/8
aws_instance.myos (remote-exec):   Installing : git-core [##       ] 1/8
aws_instance.myos (remote-exec):   Installing : git-core [###      ] 1/8
aws_instance.myos (remote-exec):   Installing : git-core [####     ] 1/8
aws_instance.myos (remote-exec):   Installing : git-core [#####    ] 1/8
aws_instance.myos (remote-exec):   Installing : git-core [######   ] 1/8
aws_instance.myos (remote-exec):   Installing : git-core [#######  ] 1/8
aws_instance.myos (remote-exec):   Installing : git-core [######## ] 1/8
aws_instance.myos (remote-exec):   Installing : git-core-2.23.3-1.   1/8
aws_instance.myos (remote-exec):   Installing : git-core [         ] 2/8
aws_instance.myos (remote-exec):   Installing : git-core [#        ] 2/8
aws_instance.myos (remote-exec):   Installing : git-core [##       ] 2/8
aws_instance.myos (remote-exec):   Installing : git-core [###      ] 2/8
aws_instance.myos (remote-exec):   Installing : git-core [####     ] 2/8
aws_instance.myos (remote-exec):   Installing : git-core [#####    ] 2/8
aws_instance.myos (remote-exec):   Installing : git-core [######   ] 2/8
aws_instance.myos (remote-exec):   Installing : git-core [#######  ] 2/8
aws_instance.myos (remote-exec):   Installing : git-core [######## ] 2/8
aws_instance.myos (remote-exec):   Installing : git-core-doc-2.23.   2/8
aws_instance.myos (remote-exec):   Installing : 1:perl-E [         ] 3/8
aws_instance.myos (remote-exec):   Installing : 1:perl-E [#        ] 3/8
aws_instance.myos (remote-exec):   Installing : 1:perl-E [##       ] 3/8
aws_instance.myos (remote-exec):   Installing : 1:perl-E [####     ] 3/8
aws_instance.myos (remote-exec):   Installing : 1:perl-E [######## ] 3/8
aws_instance.myos (remote-exec):   Installing : 1:perl-Error-0.170   3/8
aws_instance.myos (remote-exec):   Installing : perl-Ter [         ] 4/8
aws_instance.myos (remote-exec):   Installing : perl-Ter [##       ] 4/8
aws_instance.myos (remote-exec):   Installing : perl-Ter [#######  ] 4/8
aws_instance.myos (remote-exec):   Installing : perl-Ter [######## ] 4/8
aws_instance.myos (remote-exec):   Installing : perl-TermReadKey-2   4/8
aws_instance.myos (remote-exec):   Installing : libsecre [         ] 5/8
aws_instance.myos (remote-exec):   Installing : libsecre [#        ] 5/8
aws_instance.myos (remote-exec):   Installing : libsecre [###      ] 5/8
aws_instance.myos (remote-exec):   Installing : libsecre [####     ] 5/8
aws_instance.myos (remote-exec):   Installing : libsecre [#####    ] 5/8
aws_instance.myos (remote-exec):   Installing : libsecre [######   ] 5/8
aws_instance.myos (remote-exec):   Installing : libsecre [#######  ] 5/8
aws_instance.myos (remote-exec):   Installing : libsecre [######## ] 5/8
aws_instance.myos (remote-exec):   Installing : libsecret-0.18.5-2   5/8
aws_instance.myos (remote-exec):   Installing : 1:emacs- [         ] 6/8
aws_instance.myos (remote-exec):   Installing : 1:emacs- [##       ] 6/8
aws_instance.myos (remote-exec):   Installing : 1:emacs- [####     ] 6/8
aws_instance.myos (remote-exec):   Installing : 1:emacs- [######   ] 6/8
aws_instance.myos (remote-exec):   Installing : 1:emacs-filesystem   6/8
aws_instance.myos (remote-exec):   Installing : perl-Git [         ] 7/8
aws_instance.myos (remote-exec):   Installing : perl-Git [#        ] 7/8
aws_instance.myos (remote-exec):   Installing : perl-Git [#######  ] 7/8
aws_instance.myos (remote-exec):   Installing : perl-Git [######## ] 7/8
aws_instance.myos (remote-exec):   Installing : perl-Git-2.23.3-1.   7/8
aws_instance.myos (remote-exec):   Installing : git-2.23 [         ] 8/8
aws_instance.myos (remote-exec):   Installing : git-2.23 [#        ] 8/8
aws_instance.myos (remote-exec):   Installing : git-2.23 [##       ] 8/8
aws_instance.myos (remote-exec):   Installing : git-2.23 [###      ] 8/8
aws_instance.myos (remote-exec):   Installing : git-2.23 [#####    ] 8/8
aws_instance.myos (remote-exec):   Installing : git-2.23 [#######  ] 8/8
aws_instance.myos (remote-exec):   Installing : git-2.23 [######## ] 8/8
aws_instance.myos (remote-exec):   Installing : git-2.23.3-1.amzn2   8/8
aws_instance.myos (remote-exec):   Verifying  : 1:emacs-filesystem   1/8
aws_instance.myos (remote-exec):   Verifying  : git-2.23.3-1.amzn2   2/8
aws_instance.myos (remote-exec):   Verifying  : libsecret-0.18.5-2   3/8
aws_instance.myos (remote-exec):   Verifying  : perl-TermReadKey-2   4/8
aws_instance.myos (remote-exec):   Verifying  : git-core-2.23.3-1.   5/8
aws_instance.myos (remote-exec):   Verifying  : 1:perl-Error-0.170   6/8
aws_instance.myos (remote-exec):   Verifying  : perl-Git-2.23.3-1.   7/8
aws_instance.myos (remote-exec):   Verifying  : git-core-doc-2.23.   8/8

aws_instance.myos (remote-exec): Installed:
aws_instance.myos (remote-exec):   git.x86_64 0:2.23.3-1.amzn2.0.1

aws_instance.myos (remote-exec): Dependency Installed:
aws_instance.myos (remote-exec):   emacs-filesystem.noarch 1:25.3-3.amzn2.0.1
aws_instance.myos (remote-exec):   git-core.x86_64 0:2.23.3-1.amzn2.0.1
aws_instance.myos (remote-exec):   git-core-doc.noarch 0:2.23.3-1.amzn2.0.1
aws_instance.myos (remote-exec):   libsecret.x86_64 0:0.18.5-2.amzn2.0.2
aws_instance.myos (remote-exec):   perl-Error.noarch 1:0.17020-2.amzn2
aws_instance.myos (remote-exec):   perl-Git.noarch 0:2.23.3-1.amzn2.0.1
aws_instance.myos (remote-exec):   perl-TermReadKey.x86_64 0:2.30-20.amzn2.0.2

aws_instance.myos (remote-exec): Complete!
aws_instance.myos (remote-exec): Created symlink from /etc/systemd/system/multi-user.target.wants/httpd.service to /usr/lib/systemd/system/httpd.service.
aws_instance.myos: Creation complete after 54s [id=i-0af4fbd4739f56e20]
aws_ebs_volume.tervol: Creating...
aws_s3_bucket.ters3: Creating...
aws_s3_bucket.ters3: Creation complete after 10s [id=vkb001]
aws_s3_bucket_object.pics: Creating...
aws_ebs_volume.tervol: Still creating... [10s elapsed]
aws_ebs_volume.tervol: Creation complete after 12s [id=vol-0210241263c6f9173]
aws_s3_bucket_object.pics: Creation complete after 3s [id=sunflower.png]
aws_cloudfront_origin_access_identity.terid: Creating...
aws_volume_attachment.attachebs: Creating...
aws_cloudfront_origin_access_identity.terid: Creation complete after 3s [id=E8GR8BUIVI8FR]
aws_cloudfront_distribution.tercf: Creating...
aws_volume_attachment.attachebs: Still creating... [10s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [10s elapsed]
aws_volume_attachment.attachebs: Still creating... [20s elapsed]
aws_volume_attachment.attachebs: Creation complete after 23s [id=vai-2977402859]
null_resource.create_partition: Creating...
null_resource.create_partition: Provisioning with 'remote-exec'...
null_resource.create_partition (remote-exec): Connecting to remote host via SSH...
null_resource.create_partition (remote-exec):   Host: 13.233.116.8
null_resource.create_partition (remote-exec):   User: ec2-user
null_resource.create_partition (remote-exec):   Password: false
null_resource.create_partition (remote-exec):   Private key: true
null_resource.create_partition (remote-exec):   Certificate: false
null_resource.create_partition (remote-exec):   SSH Agent: false
null_resource.create_partition (remote-exec):   Checking Host Key: false
aws_cloudfront_distribution.tercf: Still creating... [20s elapsed]
null_resource.create_partition (remote-exec): Connected!
null_resource.create_partition (remote-exec): mke2fs 1.42.9 (28-Dec-2013)
null_resource.create_partition (remote-exec): Filesystem label=
null_resource.create_partition (remote-exec): OS type: Linux
null_resource.create_partition (remote-exec): Block size=4096 (log=2)
null_resource.create_partition (remote-exec): Fragment size=4096 (log=2)
null_resource.create_partition (remote-exec): Stride=0 blocks, Stripe width=0 blocks
null_resource.create_partition (remote-exec): 65536 inodes, 262144 blocks
null_resource.create_partition (remote-exec): 13107 blocks (5.00%) reserved for the super user
null_resource.create_partition (remote-exec): First data block=0
null_resource.create_partition (remote-exec): Maximum filesystem blocks=268435456
null_resource.create_partition (remote-exec): 8 block groups
null_resource.create_partition (remote-exec): 32768 blocks per group, 32768 fragments per group
null_resource.create_partition (remote-exec): 8192 inodes per group
null_resource.create_partition (remote-exec): Superblock backups stored on blocks:
null_resource.create_partition (remote-exec):   32768, 98304, 163840, 229376

null_resource.create_partition (remote-exec): Allocating group tables: done
null_resource.create_partition (remote-exec): Writing inode tables: done
null_resource.create_partition (remote-exec): Creating journal (8192 blocks): done
null_resource.create_partition (remote-exec): Writing superblocks and filesystem accounting information: done

null_resource.create_partition (remote-exec): Cloning into '/var/www/html'...
null_resource.create_partition (remote-exec): remote: Enumerating objects: 13, done.
null_resource.create_partition (remote-exec): remote: Counting objects:   7% (1/13)
null_resource.create_partition (remote-exec): remote: Counting objects:  15% (2/13)
null_resource.create_partition (remote-exec): remote: Counting objects:  23% (3/13)
null_resource.create_partition (remote-exec): remote: Counting objects:  30% (4/13)
null_resource.create_partition (remote-exec): remote: Counting objects:  38% (5/13)
null_resource.create_partition (remote-exec): remote: Counting objects:  46% (6/13)
null_resource.create_partition (remote-exec): remote: Counting objects:  53% (7/13)
null_resource.create_partition (remote-exec): remote: Counting objects:  61% (8/13)
null_resource.create_partition (remote-exec): remote: Counting objects:  69% (9/13)
null_resource.create_partition (remote-exec): remote: Counting objects:  76% (10/13)
null_resource.create_partition (remote-exec): remote: Counting objects:  84% (11/13)
null_resource.create_partition (remote-exec): remote: Counting objects:  92% (12/13)
null_resource.create_partition (remote-exec): remote: Counting objects: 100% (13/13)
null_resource.create_partition (remote-exec): remote: Counting objects: 100% (13/13), done.
null_resource.create_partition (remote-exec): remote: Compressing objects:  10% (1/10)
null_resource.create_partition (remote-exec): remote: Compressing objects:  20% (2/10)
null_resource.create_partition (remote-exec): remote: Compressing objects:  30% (3/10)
null_resource.create_partition (remote-exec): remote: Compressing objects:  40% (4/10)
null_resource.create_partition (remote-exec): remote: Compressing objects:  50% (5/10)
null_resource.create_partition (remote-exec): remote: Compressing objects:  60% (6/10)
null_resource.create_partition (remote-exec): remote: Compressing objects:  70% (7/10)
null_resource.create_partition (remote-exec): remote: Compressing objects:  80% (8/10)
null_resource.create_partition (remote-exec): remote: Compressing objects:  90% (9/10)
null_resource.create_partition (remote-exec): remote: Compressing objects: 100% (10/10)
null_resource.create_partition (remote-exec): remote: Compressing objects: 100% (10/10), done.
null_resource.create_partition (remote-exec): Unpacking objects:   7% (1/13)
null_resource.create_partition (remote-exec): Unpacking objects:  15% (2/13)
null_resource.create_partition (remote-exec): Unpacking objects:  23% (3/13)
null_resource.create_partition (remote-exec): Unpacking objects:  30% (4/13)
null_resource.create_partition (remote-exec): Unpacking objects:  38% (5/13)
null_resource.create_partition (remote-exec): Unpacking objects:  46% (6/13)
null_resource.create_partition (remote-exec): Unpacking objects:  53% (7/13)
null_resource.create_partition (remote-exec): Unpacking objects:  61% (8/13)
null_resource.create_partition (remote-exec): remote: Total 13 (delta 1), reused 0 (delta 0), pack-reused 0
null_resource.create_partition (remote-exec): Unpacking objects:  69% (9/13)
null_resource.create_partition (remote-exec): Unpacking objects:  76% (10/13)
null_resource.create_partition (remote-exec): Unpacking objects:  84% (11/13)
null_resource.create_partition (remote-exec): Unpacking objects:  92% (12/13)
null_resource.create_partition (remote-exec): Unpacking objects: 100% (13/13)
null_resource.create_partition (remote-exec): Unpacking objects: 100% (13/13), done.
null_resource.create_partition: Creation complete after 8s [id=3521946476622368203]
aws_cloudfront_distribution.tercf: Still creating... [30s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [40s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [50s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [1m0s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [1m10s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [1m20s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [1m30s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [1m40s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [1m50s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [2m0s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [2m10s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [2m20s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [2m30s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [2m40s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [2m50s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [3m0s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [3m10s elapsed]
aws_cloudfront_distribution.tercf: Still creating... [3m20s elapsed]
aws_cloudfront_distribution.tercf: Creation complete after 3m29s [id=E37PBW2Q5PGHZJ]

Apply complete! Resources: 11 added, 0 changed, 0 destroyed.

Outputs:

cloudfront_ip = d3g4n8k27wq6m7.cloudfront.net
ec2_ip = 13.233.116.8
key_pem = -----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4pGqeeAS/NAKmG55jFpJ
8Ecr7JmCZ5tUmoDvxQ7nkHYGgzoaJCtnAfPPmqDcsaHK3rRjhBej4MPeuBI9K4dC
qjwXl9tGSsvMgDBBPMds10JeBkr1ajCoIQTUXM2yubJEpLUzQbdyhlhfyfw8CcdS
ALc37iCDRYJFQqsii0Qxp2+gRpoQO4mKKz5aDcU9t5ZMys9IhzuDzK/hLgzefIJG
P5k2r05SvJwC9D+FSZCqDRwvWqTDr/NJ65S5TKQkEA/6K/8hqU91ivTRwuKGuc8a
67arBWrA9N2yHrXpCjLw8Eh+vIjU1ktgU/qeVkULo7QlzcdK8vbTJrANXwojZSry
RQIDAQAB
-----END PUBLIC KEY-----

key_ssh = ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDikap54BL80AqYbnmMWknwRyvsmYJnm1SagO/FDueQdgaDOhokK2cB88+aoNyxocretGOEF6Pgw964Ej0rh0KqPBeX20ZKy8yAMEE8x2zXQl4GSvVqMKghBNRczbK5skSktTNBt3KGWF/J/DwJx1IAtzfuIINFgkVCqyKLRDGnb6BGmhA7iYorPloNxT23lkzKz0iHO4PMr+EuDN58gkY/mTavTlK8nAL0P4VJkKoNHC9apMOv80nrlLlMpCQQD/or/yGpT3WK9NHC4oa5zxrrtqsFasD03bIetekKMvDwSH68iNTWS2BT+p5WRQujtCXNx0ry9tMmsA1fCiNlKvJF
