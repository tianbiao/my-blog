Biao Tian's Blog[![Build Status](https://travis-ci.org/tianbiao/my-blog.svg?branch=master)](https://travis-ci.org/tianbiao/my-blog)
=================
Blog Address: http://blog-biao-tian.herokuapp.com/

Pre-req's
---------
* install rvm (https://rvm.io/rvm/install)
* `rvm install 2.2.5`
* `gem install bundler`

Setup
-----
* `git clone https://github.com/tianbiao/my-blog.git`
* `cd my-blog`
* `bundle install`

Running locally
-----
* Run application
`rails s`

* Run tests
`rake`

TDD/BDD
-----
* Rspec for TDD, run `rspec` for unit tests.
* Cucumber for BDD, run `cucumber` for integration tests. ( use `cucumber -p selenium` to open browser run tests)
