  $ . ${TESTDIR}/setup_test_env.sh
  $ cd ${TESTTMP}

  $ killall hyper-cgi-test-server 1> /dev/null
  * (glob)

  $ git clone -q http://someuser:somepass@localhost:8001/real_repo.git
  fatal: unable to access 'http://localhost:8001/real_repo.git/': Failed to connect to localhost port 8001: Connection refused
  [128]

  $ git clone -q http://someuser:somepass@localhost:8002/real_repo.git full_repo
  fatal: Authentication failed for 'http://localhost:8002/real_repo.git/'
  [128]

  $ cd full_repo
  /bin/sh: line 12: cd: full_repo: No such file or directory
  [1]

  $ bash ${TESTDIR}/destroy_test_env.sh
  remote/scratch/refs
  |-- heads
  `-- tags
  
  2 directories, 0 files
