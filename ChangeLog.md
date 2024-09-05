### 3.0.4 / 2024-09-05

* Change ffi gem version to '~> 1.15.0'

### 3.0.3 / 2024-08-29

* Remove the verification encryption key and unnecessary configurations

### 3.0.2 / 2020-06-29

* Rescue exceptions in update manager thread

### 3.0.1 / 2020-06-29

* Fix client dispose

### 3.0.0 / 2020-06-28

* Extract schema to separate gem

### 2.1.0 / 2019-10-18

* Support tdlib 1.5
* Fix TD::Client#dispose race condition and client crash

### 2.0.0 / 2019-02-08

* Generated types and client functions
* Async handlers
* Use ffi instead of fiddle
* Use Concurrent::Promises
* TD errors handling in promises
* Add use_file_database setting to config

### 1.0.0 / 2018-05-27

* Return promises from TD::Client#broadcast
* Add #fetch as alias to #broadcast_and_receive

### 0.9.4 / 2018-05-16

* Fix recursive locking in nested handlers

### 0.9.3 / 2018-05-04

* Add proxy support

### 0.9.2 / 2018-05-04

* Fix some potential deadlocks

### 0.9.1 / 2018-04-27

* Fix deadlock in Client#on_ready

### 0.9.0 / 2018-04-26

* Use Celluloid

### 0.8.0 / 2018-04-25

* Fix await methods

### 0.4.0 / 2018-04-12

* Add configurable timeout
* Fix hanging threads after timeout

### 0.3.0 / 2018-04-04

* Use Concurrent::Promise instead of timeout module
* Add integration tests

### 0.2.0 / 2018-02-16

* Improved lib path detection

* TD::Client#on_ready method

### 0.1.0 / 2018-02-01

* Initial release:

Basic featues
