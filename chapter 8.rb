Last login: Wed Feb 19 08:00:32 on console
Rubis:) cd /Users/Sedclerk/Documents/sample_app/test/sample_app
Rubis:) bundle exec rspec spec/
No DRb server is running. Running in local process instead ...
/Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `load': /Users/Sedclerk/Documents/sample_app/test/sample_app/spec/requests/user_pages_spec.rb:117: syntax error, unexpected keyword_end, expecting $end (SyntaxError)
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `block in load'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:214:in `load_dependency'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `load'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `block in load_spec_files'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `each'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `load_spec_files'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/command_line.rb:22:in `run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:77:in `rescue in run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:73:in `run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:17:in `block in autorun'
Rubis:) bundle exec rspec spec/
No DRb server is running. Running in local process instead ...
..........................F...............FFFFFFFF....................

Failures:

1) Authentication signin with valid information
Failure/Error: it { should have_link('Settings',    href: edit_user_path(user)) }
expected #has_link?("Settings", {:href=>"/users/1/edit"}) to return true, got false
# ./spec/requests/authentication_pages_spec.rb:27:in `block (4 levels) in <top (required)>'

2) User pages index
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

3) User pages index
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

4) User pages index delete links
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

5) User pages index delete links as an admin user
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

6) User pages index delete links as an admin user should be able to delete another user
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

7) User pages index delete links as an admin user
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

8) User pages index pagination
Failure/Error: before(:all) { 30.times { FactoryGirl.create(:user) } }
ActiveRecord::RecordInvalid:
Validation failed: Email has already been taken
# ./spec/requests/user_pages_spec.rb:21:in `block (5 levels) in <top (required)>'
# ./spec/requests/user_pages_spec.rb:21:in `times'
# ./spec/requests/user_pages_spec.rb:21:in `block (4 levels) in <top (required)>'

9) User pages index pagination should list each user
Failure/Error: before(:all) { 30.times { FactoryGirl.create(:user) } }
ActiveRecord::RecordInvalid:
Validation failed: Email has already been taken
# ./spec/requests/user_pages_spec.rb:21:in `block (5 levels) in <top (required)>'
# ./spec/requests/user_pages_spec.rb:21:in `times'
# ./spec/requests/user_pages_spec.rb:21:in `block (4 levels) in <top (required)>'

Finished in 4.89 seconds
70 examples, 9 failures

Failed examples:

rspec ./spec/requests/authentication_pages_spec.rb:27 # Authentication signin with valid information
rspec ./spec/requests/user_pages_spec.rb:17 # User pages index
rspec ./spec/requests/user_pages_spec.rb:16 # User pages index
rspec ./spec/requests/user_pages_spec.rb:35 # User pages index delete links
rspec ./spec/requests/user_pages_spec.rb:44 # User pages index delete links as an admin user
rspec ./spec/requests/user_pages_spec.rb:45 # User pages index delete links as an admin user should be able to delete another user
rspec ./spec/requests/user_pages_spec.rb:50 # User pages index delete links as an admin user
rspec ./spec/requests/user_pages_spec.rb:24 # User pages index pagination
rspec ./spec/requests/user_pages_spec.rb:26 # User pages index pagination should list each user

Randomized with seed 60210

Rubis:) bundle exec rspec spec/
No DRb server is running. Running in local process instead ...
FFFFFFFF.........................................................F....

Failures:

1) User pages index
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

2) User pages index
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

3) User pages index pagination
Failure/Error: before(:all) { 30.times { FactoryGirl.create(:user) } }
ActiveRecord::RecordInvalid:
Validation failed: Email has already been taken
# ./spec/requests/user_pages_spec.rb:21:in `block (5 levels) in <top (required)>'
# ./spec/requests/user_pages_spec.rb:21:in `times'
# ./spec/requests/user_pages_spec.rb:21:in `block (4 levels) in <top (required)>'

4) User pages index pagination should list each user
Failure/Error: before(:all) { 30.times { FactoryGirl.create(:user) } }
ActiveRecord::RecordInvalid:
Validation failed: Email has already been taken
# ./spec/requests/user_pages_spec.rb:21:in `block (5 levels) in <top (required)>'
# ./spec/requests/user_pages_spec.rb:21:in `times'
# ./spec/requests/user_pages_spec.rb:21:in `block (4 levels) in <top (required)>'

5) User pages index delete links
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

6) User pages index delete links as an admin user
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

7) User pages index delete links as an admin user should be able to delete another user
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

8) User pages index delete links as an admin user
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

9) Authentication signin with valid information
Failure/Error: it { should have_link('Settings',    href: edit_user_path(user)) }
expected #has_link?("Settings", {:href=>"/users/3/edit"}) to return true, got false
# ./spec/requests/authentication_pages_spec.rb:27:in `block (4 levels) in <top (required)>'

Finished in 2.13 seconds
70 examples, 9 failures

Failed examples:

rspec ./spec/requests/user_pages_spec.rb:16 # User pages index
rspec ./spec/requests/user_pages_spec.rb:17 # User pages index
rspec ./spec/requests/user_pages_spec.rb:24 # User pages index pagination
rspec ./spec/requests/user_pages_spec.rb:26 # User pages index pagination should list each user
rspec ./spec/requests/user_pages_spec.rb:35 # User pages index delete links
rspec ./spec/requests/user_pages_spec.rb:50 # User pages index delete links as an admin user
rspec ./spec/requests/user_pages_spec.rb:45 # User pages index delete links as an admin user should be able to delete another user
rspec ./spec/requests/user_pages_spec.rb:44 # User pages index delete links as an admin user
rspec ./spec/requests/authentication_pages_spec.rb:27 # Authentication signin with valid information

Randomized with seed 26254

Rubis:) bundle exec rspec spec/
No DRb server is running. Running in local process instead ...
........................FFFFFFFF...........................F............

Failures:

1) User pages index
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

2) User pages index
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

3) User pages index pagination
Failure/Error: before(:all) { 30.times { FactoryGirl.create(:user) } }
ActiveRecord::RecordInvalid:
Validation failed: Email has already been taken
# ./spec/requests/user_pages_spec.rb:21:in `block (5 levels) in <top (required)>'
# ./spec/requests/user_pages_spec.rb:21:in `times'
# ./spec/requests/user_pages_spec.rb:21:in `block (4 levels) in <top (required)>'

4) User pages index pagination should list each user
Failure/Error: before(:all) { 30.times { FactoryGirl.create(:user) } }
ActiveRecord::RecordInvalid:
Validation failed: Email has already been taken
# ./spec/requests/user_pages_spec.rb:21:in `block (5 levels) in <top (required)>'
# ./spec/requests/user_pages_spec.rb:21:in `times'
# ./spec/requests/user_pages_spec.rb:21:in `block (4 levels) in <top (required)>'

5) User pages index delete links
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

6) User pages index delete links as an admin user
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

7) User pages index delete links as an admin user should be able to delete another user
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

8) User pages index delete links as an admin user
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

9) Authentication signin with valid information
Failure/Error: it { should have_link('Settings',    href: edit_user_path(user)) }
expected #has_link?("Settings", {:href=>"/users/4/edit"}) to return true, got false
# ./spec/requests/authentication_pages_spec.rb:27:in `block (4 levels) in <top (required)>'

Finished in 2.2 seconds
72 examples, 9 failures

Failed examples:

rspec ./spec/requests/user_pages_spec.rb:16 # User pages index
rspec ./spec/requests/user_pages_spec.rb:17 # User pages index
rspec ./spec/requests/user_pages_spec.rb:24 # User pages index pagination
rspec ./spec/requests/user_pages_spec.rb:26 # User pages index pagination should list each user
rspec ./spec/requests/user_pages_spec.rb:35 # User pages index delete links
rspec ./spec/requests/user_pages_spec.rb:44 # User pages index delete links as an admin user
rspec ./spec/requests/user_pages_spec.rb:45 # User pages index delete links as an admin user should be able to delete another user
rspec ./spec/requests/user_pages_spec.rb:50 # User pages index delete links as an admin user
rspec ./spec/requests/authentication_pages_spec.rb:27 # Authentication signin with valid information

Randomized with seed 59512

Rubis:) bundle exec rspec spec/
No DRb server is running. Running in local process instead ...
...F..........................................FFFFFFFF..................

Failures:

1) Authentication signin with valid information
Failure/Error: it { should have_link('Settings',    href: edit_user_path(user)) }
expected #has_link?("Settings", {:href=>"/users/4/edit"}) to return true, got false
# ./spec/requests/authentication_pages_spec.rb:27:in `block (4 levels) in <top (required)>'

2) User pages index
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

3) User pages index
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

4) User pages index pagination
Failure/Error: before(:all) { 30.times { FactoryGirl.create(:user) } }
ActiveRecord::RecordInvalid:
Validation failed: Email has already been taken
# ./spec/requests/user_pages_spec.rb:21:in `block (5 levels) in <top (required)>'
# ./spec/requests/user_pages_spec.rb:21:in `times'
# ./spec/requests/user_pages_spec.rb:21:in `block (4 levels) in <top (required)>'

5) User pages index pagination should list each user
Failure/Error: before(:all) { 30.times { FactoryGirl.create(:user) } }
ActiveRecord::RecordInvalid:
Validation failed: Email has already been taken
# ./spec/requests/user_pages_spec.rb:21:in `block (5 levels) in <top (required)>'
# ./spec/requests/user_pages_spec.rb:21:in `times'
# ./spec/requests/user_pages_spec.rb:21:in `block (4 levels) in <top (required)>'

6) User pages index delete links
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

7) User pages index delete links as an admin user should be able to delete another user
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

8) User pages index delete links as an admin user
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

9) User pages index delete links as an admin user
Failure/Error: visit users_path
AbstractController::ActionNotFound:
The action 'index' could not be found for UsersController
# ./spec/requests/user_pages_spec.rb:13:in `block (3 levels) in <top (required)>'

Finished in 2.28 seconds
72 examples, 9 failures

Failed examples:

rspec ./spec/requests/authentication_pages_spec.rb:27 # Authentication signin with valid information
rspec ./spec/requests/user_pages_spec.rb:16 # User pages index
rspec ./spec/requests/user_pages_spec.rb:17 # User pages index
rspec ./spec/requests/user_pages_spec.rb:24 # User pages index pagination
rspec ./spec/requests/user_pages_spec.rb:26 # User pages index pagination should list each user
rspec ./spec/requests/user_pages_spec.rb:35 # User pages index delete links
rspec ./spec/requests/user_pages_spec.rb:45 # User pages index delete links as an admin user should be able to delete another user
rspec ./spec/requests/user_pages_spec.rb:50 # User pages index delete links as an admin user
rspec ./spec/requests/user_pages_spec.rb:44 # User pages index delete links as an admin user

Randomized with seed 13447

Rubis:) bundle exec rspec spec/

No DRb server is running. Running in local process instead ...
/Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `load': /Users/Sedclerk/Documents/sample_app/test/sample_app/spec/requests/user_pages_spec.rb:161: syntax error, unexpected keyword_end, expecting $end (SyntaxError)
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `block in load'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:214:in `load_dependency'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `load'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `block in load_spec_files'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `each'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `load_spec_files'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/command_line.rb:22:in `run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:77:in `rescue in run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:73:in `run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:17:in `block in autorun'
Rubis:)
Rubis:) rails s
=> Booting WEBrick
=> Rails 4.0.2 application starting in development on http://0.0.0.0:3000
=> Run `rails server -h` for more startup options
=> Ctrl-C to shutdown server
[2014-02-20 16:02:44] INFO  WEBrick 1.3.1
[2014-02-20 16:02:44] INFO  ruby 1.9.3 (2013-02-22) [x86_64-darwin12.4.0]
[2014-02-20 16:02:44] INFO  WEBrick::HTTPServer#start: pid=11920 port=3000


Started GET "/users" for 127.0.0.1 at 2014-02-20 16:02:54 +0300
ActiveRecord::SchemaMigration Load (0.7ms)  SELECT "schema_migrations".* FROM "schema_migrations"

SyntaxError (/Users/Sedclerk/Documents/sample_app/test/sample_app/app/controllers/users_controller.rb:63: syntax error, unexpected keyword_end, expecting $end):
activesupport (4.0.2) lib/active_support/dependencies.rb:424:in `load'
activesupport (4.0.2) lib/active_support/dependencies.rb:424:in `block in load_file'
activesupport (4.0.2) lib/active_support/dependencies.rb:616:in `new_constants_in'
activesupport (4.0.2) lib/active_support/dependencies.rb:423:in `load_file'
activesupport (4.0.2) lib/active_support/dependencies.rb:324:in `require_or_load'
activesupport (4.0.2) lib/active_support/dependencies.rb:463:in `load_missing_constant'
activesupport (4.0.2) lib/active_support/dependencies.rb:184:in `const_missing'
activesupport (4.0.2) lib/active_support/inflector/methods.rb:226:in `const_get'
activesupport (4.0.2) lib/active_support/inflector/methods.rb:226:in `block in constantize'
activesupport (4.0.2) lib/active_support/inflector/methods.rb:224:in `each'
activesupport (4.0.2) lib/active_support/inflector/methods.rb:224:in `inject'
activesupport (4.0.2) lib/active_support/inflector/methods.rb:224:in `constantize'
activesupport (4.0.2) lib/active_support/dependencies.rb:535:in `get'
activesupport (4.0.2) lib/active_support/dependencies.rb:566:in `constantize'
actionpack (4.0.2) lib/action_dispatch/routing/route_set.rb:76:in `controller_reference'
actionpack (4.0.2) lib/action_dispatch/routing/route_set.rb:66:in `controller'
actionpack (4.0.2) lib/action_dispatch/routing/route_set.rb:44:in `call'
actionpack (4.0.2) lib/action_dispatch/journey/router.rb:71:in `block in call'
actionpack (4.0.2) lib/action_dispatch/journey/router.rb:59:in `each'
actionpack (4.0.2) lib/action_dispatch/journey/router.rb:59:in `call'
actionpack (4.0.2) lib/action_dispatch/routing/route_set.rb:680:in `call'
rack (1.5.2) lib/rack/etag.rb:23:in `call'
rack (1.5.2) lib/rack/conditionalget.rb:25:in `call'
rack (1.5.2) lib/rack/head.rb:11:in `call'
actionpack (4.0.2) lib/action_dispatch/middleware/params_parser.rb:27:in `call'
actionpack (4.0.2) lib/action_dispatch/middleware/flash.rb:241:in `call'
rack (1.5.2) lib/rack/session/abstract/id.rb:225:in `context'
rack (1.5.2) lib/rack/session/abstract/id.rb:220:in `call'
actionpack (4.0.2) lib/action_dispatch/middleware/cookies.rb:486:in `call'
activerecord (4.0.2) lib/active_record/query_cache.rb:36:in `call'
activerecord (4.0.2) lib/active_record/connection_adapters/abstract/connection_pool.rb:626:in `call'
activerecord (4.0.2) lib/active_record/migration.rb:369:in `call'
actionpack (4.0.2) lib/action_dispatch/middleware/callbacks.rb:29:in `block in call'
activesupport (4.0.2) lib/active_support/callbacks.rb:373:in `_run__1493049518569452848__call__callbacks'
activesupport (4.0.2) lib/active_support/callbacks.rb:80:in `run_callbacks'
actionpack (4.0.2) lib/action_dispatch/middleware/callbacks.rb:27:in `call'
actionpack (4.0.2) lib/action_dispatch/middleware/reloader.rb:64:in `call'
actionpack (4.0.2) lib/action_dispatch/middleware/remote_ip.rb:76:in `call'
actionpack (4.0.2) lib/action_dispatch/middleware/debug_exceptions.rb:17:in `call'
actionpack (4.0.2) lib/action_dispatch/middleware/show_exceptions.rb:30:in `call'
railties (4.0.2) lib/rails/rack/logger.rb:38:in `call_app'
railties (4.0.2) lib/rails/rack/logger.rb:20:in `block in call'
activesupport (4.0.2) lib/active_support/tagged_logging.rb:67:in `block in tagged'
activesupport (4.0.2) lib/active_support/tagged_logging.rb:25:in `tagged'
activesupport (4.0.2) lib/active_support/tagged_logging.rb:67:in `tagged'
railties (4.0.2) lib/rails/rack/logger.rb:20:in `call'
actionpack (4.0.2) lib/action_dispatch/middleware/request_id.rb:21:in `call'
rack (1.5.2) lib/rack/methodoverride.rb:21:in `call'
rack (1.5.2) lib/rack/runtime.rb:17:in `call'
activesupport (4.0.2) lib/active_support/cache/strategy/local_cache.rb:83:in `call'
rack (1.5.2) lib/rack/lock.rb:17:in `call'
actionpack (4.0.2) lib/action_dispatch/middleware/static.rb:64:in `call'
rack (1.5.2) lib/rack/sendfile.rb:112:in `call'
railties (4.0.2) lib/rails/engine.rb:511:in `call'
railties (4.0.2) lib/rails/application.rb:97:in `call'
rack (1.5.2) lib/rack/lock.rb:17:in `call'
rack (1.5.2) lib/rack/content_length.rb:14:in `call'
rack (1.5.2) lib/rack/handler/webrick.rb:60:in `service'
/Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/1.9.1/webrick/httpserver.rb:138:in `service'
/Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/1.9.1/webrick/httpserver.rb:94:in `run'
/Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/1.9.1/webrick/server.rb:191:in `block in start_thread'


Rendered /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/actionpack-4.0.2/lib/action_dispatch/middleware/templates/rescues/_source.erb (0.7ms)
Rendered /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/actionpack-4.0.2/lib/action_dispatch/middleware/templates/rescues/_trace.erb (1.3ms)
Rendered /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/actionpack-4.0.2/lib/action_dispatch/middleware/templates/rescues/_request_and_response.erb (28.3ms)
Rendered /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/actionpack-4.0.2/lib/action_dispatch/middleware/templates/rescues/diagnostics.erb within rescues/layout (50.3ms)
[2014-02-20 16:02:55] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/users" for 127.0.0.1 at 2014-02-20 16:03:32 +0300
Processing by UsersController#index as HTML
User Load (0.8ms)  SELECT "users".* FROM "users"
Rendered users/index.html.erb within layouts/application (10.0ms)
Rendered layouts/_shim.html.erb (0.3ms)
User Load (0.6ms)  SELECT "users".* FROM "users" WHERE "users"."remember_token" = '97e2b163982e78f2abaaee5e50f0e9fa5efa0f67' LIMIT 1
Rendered layouts/_header.html.erb (7.0ms)
Rendered layouts/_footer.html.erb (0.8ms)
Completed 200 OK in 1368ms (Views: 1348.5ms | ActiveRecord: 1.8ms)


Started GET "/assets/application.css?body=1" for 127.0.0.1 at 2014-02-20 16:03:33 +0300
[2014-02-20 16:03:33] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/custom.css?body=1" for 127.0.0.1 at 2014-02-20 16:03:33 +0300


Started GET "/assets/sessions.css?body=1" for 127.0.0.1 at 2014-02-20 16:03:33 +0300
[2014-02-20 16:03:33] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/static_pages.css?body=1" for 127.0.0.1 at 2014-02-20 16:03:33 +0300
[2014-02-20 16:03:33] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/users.css?body=1" for 127.0.0.1 at 2014-02-20 16:03:33 +0300
[2014-02-20 16:03:33] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/jquery.js?body=1" for 127.0.0.1 at 2014-02-20 16:03:33 +0300
[2014-02-20 16:03:33] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/jquery_ujs.js?body=1" for 127.0.0.1 at 2014-02-20 16:03:33 +0300
[2014-02-20 16:03:33] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/turbolinks.js?body=1" for 127.0.0.1 at 2014-02-20 16:03:33 +0300
[2014-02-20 16:03:33] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/sessions.js?body=1" for 127.0.0.1 at 2014-02-20 16:03:33 +0300
[2014-02-20 16:03:33] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/static_pages.js?body=1" for 127.0.0.1 at 2014-02-20 16:03:33 +0300
[2014-02-20 16:03:33] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/users.js?body=1" for 127.0.0.1 at 2014-02-20 16:03:33 +0300
[2014-02-20 16:03:33] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/application.js?body=1" for 127.0.0.1 at 2014-02-20 16:03:33 +0300
[2014-02-20 16:03:33] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true
^C[2014-02-20 16:04:35] INFO  going to shutdown ...
[2014-02-20 16:04:35] INFO  WEBrick::HTTPServer#start done.
Exiting
Rubis:) bundle exec rspec spec/
No DRb server is running. Running in local process instead ...
/Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `load': /Users/Sedclerk/Documents/sample_app/test/sample_app/spec/requests/user_pages_spec.rb:161: syntax error, unexpected keyword_end, expecting $end (SyntaxError)
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `block in load'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:214:in `load_dependency'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `load'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `block in load_spec_files'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `each'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `load_spec_files'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/command_line.rb:22:in `run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:77:in `rescue in run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:73:in `run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:17:in `block in autorun'
Rubis:) bundle install
Fetching gem metadata from https://rubygems.org/.........
Fetching additional metadata from https://rubygems.org/..
Resolving dependencies...
Using rake (10.1.1)
Using i18n (0.6.9)
Using minitest (4.7.5)
Using multi_json (1.8.4)
Using atomic (1.1.14)
Using thread_safe (0.1.3)
Using tzinfo (0.3.38)
Using activesupport (4.0.2)
Using builder (3.1.4)
Using erubis (2.7.0)
Using rack (1.5.2)
Using rack-test (0.6.2)
Using actionpack (4.0.2)
Using mime-types (1.25.1)
Using polyglot (0.3.3)
Using treetop (1.4.15)
Using mail (2.5.4)
Using actionmailer (4.0.2)
Using activemodel (4.0.2)
Using activerecord-deprecated_finders (1.0.3)
Using arel (4.0.1)
Using activerecord (4.0.2)
Using bcrypt-ruby (3.1.2)
Using sass (3.2.14)
Using bootstrap-sass (2.3.2.0)
Using bundler (1.5.2)
Using mini_portile (0.5.2)
Using nokogiri (1.6.1)
Using xpath (2.0.0)
Using capybara (2.1.0)
Using timers (1.1.0)
Using celluloid (0.15.2)
Using ffi (1.9.3)
Using childprocess (0.3.6)
Using coderay (1.1.0)
Using coffee-script-source (1.7.0)
Using execjs (2.0.2)
Using coffee-script (2.2.0)
Using thor (0.18.1)
Using railties (4.0.2)
Using coffee-rails (4.0.1)
Using diff-lcs (1.2.5)
Using gherkin (2.12.2)
Using multi_test (0.0.3)
Using cucumber (1.3.10)
Using hike (1.2.3)
Using tilt (1.4.1)
Using sprockets (2.10.1)
Using sprockets-rails (2.0.1)
Using rails (4.0.2)
Using cucumber-rails (1.4.0)
Using database_cleaner (1.2.0) from git://github.com/bmabey/database_cleaner.git (at master)
Using factory_girl (4.2.0)
Using factory_girl_rails (4.2.1)
Installing faker (1.1.2)
Using formatador (0.2.4)
Using rb-fsevent (0.9.4)
Using rb-inotify (0.9.3)
Using listen (2.4.0)
Using lumberjack (1.0.4)
Using method_source (0.8.2)
Using slop (3.4.7)
Using pry (0.9.12.6)
Using guard (2.3.0)
Using rspec-core (2.13.1)
Using rspec-expectations (2.13.0)
Using rspec-mocks (2.13.1)
Using rspec (2.13.0)
Using guard-rspec (2.5.0)
Using spork (1.0.0rc4)
Using guard-spork (1.5.0)
Using jbuilder (1.0.2)
Using jquery-rails (3.0.4)
Using json (1.8.1)
Using rdoc (3.12.2)
Using rspec-rails (2.13.1)
Using rubyzip (0.9.9)
Using sass-rails (4.0.1)
Using sdoc (0.3.20)
Using websocket (1.0.7)
Using selenium-webdriver (2.35.1)
Using spork-rails (4.0.0)
Using sqlite3 (1.3.8)
Using turbolinks (1.1.1)
Using uglifier (2.1.1)
Your bundle is complete!
Gems in the group production were not installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
Rubis:) bundle exec rake db:reset
-- create_table("users", {:force=>true})
-> 0.0390s
-- add_index("users", ["email"], {:name=>"index_users_on_email", :unique=>true})
-> 0.0016s
-- add_index("users", ["remember_token"], {:name=>"index_users_on_remember_token"})
-> 0.0017s
-- initialize_schema_migrations_table()
-> 0.0068s
Rubis:) bundle exec rake db:populate
Rubis:) bundle exec rake test:prepare
Rubis:) bundle install
Fetching gem metadata from https://rubygems.org/.........
Fetching additional metadata from https://rubygems.org/..
Resolving dependencies...
Using rake (10.1.1)
Using i18n (0.6.9)
Using minitest (4.7.5)
Using multi_json (1.8.4)
Using atomic (1.1.14)
Using thread_safe (0.1.3)
Using tzinfo (0.3.38)
Using activesupport (4.0.2)
Using builder (3.1.4)
Using erubis (2.7.0)
Using rack (1.5.2)
Using rack-test (0.6.2)
Using actionpack (4.0.2)
Using mime-types (1.25.1)
Using polyglot (0.3.3)
Using treetop (1.4.15)
Using mail (2.5.4)
Using actionmailer (4.0.2)
Using activemodel (4.0.2)
Using activerecord-deprecated_finders (1.0.3)
Using arel (4.0.1)
Using activerecord (4.0.2)
Using bcrypt-ruby (3.1.2)
Using sass (3.2.14)
Using bootstrap-sass (2.3.2.0)
Installing will_paginate (3.0.4)
Installing bootstrap-will_paginate (0.0.9)
Using bundler (1.5.2)
Using mini_portile (0.5.2)
Using nokogiri (1.6.1)
Using xpath (2.0.0)
Using capybara (2.1.0)
Using timers (1.1.0)
Using celluloid (0.15.2)
Using ffi (1.9.3)
Using childprocess (0.3.6)
Using coderay (1.1.0)
Using coffee-script-source (1.7.0)
Using execjs (2.0.2)
Using coffee-script (2.2.0)
Using thor (0.18.1)
Using railties (4.0.2)
Using coffee-rails (4.0.1)
Using diff-lcs (1.2.5)
Using gherkin (2.12.2)
Using multi_test (0.0.3)
Using cucumber (1.3.10)
Using hike (1.2.3)
Using tilt (1.4.1)
Using sprockets (2.10.1)
Using sprockets-rails (2.0.1)
Using rails (4.0.2)
Using cucumber-rails (1.4.0)
Using database_cleaner (1.2.0) from git://github.com/bmabey/database_cleaner.git (at master)
Using factory_girl (4.2.0)
Using factory_girl_rails (4.2.1)
Using faker (1.1.2)
Using formatador (0.2.4)
Using rb-fsevent (0.9.4)
Using rb-inotify (0.9.3)
Using listen (2.4.0)
Using lumberjack (1.0.4)
Using method_source (0.8.2)
Using slop (3.4.7)
Using pry (0.9.12.6)
Using guard (2.3.0)
Using rspec-core (2.13.1)
Using rspec-expectations (2.13.0)
Using rspec-mocks (2.13.1)
Using rspec (2.13.0)
Using guard-rspec (2.5.0)
Using spork (1.0.0rc4)
Using guard-spork (1.5.0)
Using jbuilder (1.0.2)
Using jquery-rails (3.0.4)
Using json (1.8.1)
Using rdoc (3.12.2)
Using rspec-rails (2.13.1)
Using rubyzip (0.9.9)
Using sass-rails (4.0.1)
Using sdoc (0.3.20)
Using websocket (1.0.7)
Using selenium-webdriver (2.35.1)
Using spork-rails (4.0.0)
Using sqlite3 (1.3.8)
Using turbolinks (1.1.1)
Using uglifier (2.1.1)
Your bundle is complete!
Gems in the group production were not installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
Rubis:) rails s
=> Booting WEBrick
=> Rails 4.0.2 application starting in development on http://0.0.0.0:3000
=> Run `rails server -h` for more startup options
=> Ctrl-C to shutdown server
[2014-02-20 16:10:21] INFO  WEBrick 1.3.1
[2014-02-20 16:10:21] INFO  ruby 1.9.3 (2013-02-22) [x86_64-darwin12.4.0]
[2014-02-20 16:10:21] INFO  WEBrick::HTTPServer#start: pid=12156 port=3000


Started GET "/users" for 127.0.0.1 at 2014-02-20 16:10:24 +0300
ActiveRecord::SchemaMigration Load (0.1ms)  SELECT "schema_migrations".* FROM "schema_migrations"
Processing by UsersController#index as HTML
User Load (0.6ms)  SELECT "users".* FROM "users"
Rendered users/index.html.erb within layouts/application (30.6ms)
Rendered layouts/_shim.html.erb (0.4ms)
User Load (0.2ms)  SELECT "users".* FROM "users" WHERE "users"."remember_token" = '97e2b163982e78f2abaaee5e50f0e9fa5efa0f67' LIMIT 1
Rendered layouts/_header.html.erb (4.9ms)
Rendered layouts/_footer.html.erb (0.6ms)
Completed 200 OK in 214ms (Views: 191.2ms | ActiveRecord: 1.1ms)


Started GET "/assets/application.css?body=1" for 127.0.0.1 at 2014-02-20 16:10:25 +0300
[2014-02-20 16:10:25] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/custom.css?body=1" for 127.0.0.1 at 2014-02-20 16:10:25 +0300
[2014-02-20 16:10:25] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/sessions.css?body=1" for 127.0.0.1 at 2014-02-20 16:10:25 +0300
[2014-02-20 16:10:25] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/static_pages.css?body=1" for 127.0.0.1 at 2014-02-20 16:10:25 +0300
[2014-02-20 16:10:25] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/jquery.js?body=1" for 127.0.0.1 at 2014-02-20 16:10:25 +0300
[2014-02-20 16:10:25] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/users.css?body=1" for 127.0.0.1 at 2014-02-20 16:10:25 +0300
[2014-02-20 16:10:25] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/jquery_ujs.js?body=1" for 127.0.0.1 at 2014-02-20 16:10:25 +0300
[2014-02-20 16:10:25] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/turbolinks.js?body=1" for 127.0.0.1 at 2014-02-20 16:10:25 +0300
[2014-02-20 16:10:25] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/sessions.js?body=1" for 127.0.0.1 at 2014-02-20 16:10:25 +0300
[2014-02-20 16:10:25] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/static_pages.js?body=1" for 127.0.0.1 at 2014-02-20 16:10:25 +0300
[2014-02-20 16:10:25] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/users.js?body=1" for 127.0.0.1 at 2014-02-20 16:10:25 +0300
[2014-02-20 16:10:25] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/application.js?body=1" for 127.0.0.1 at 2014-02-20 16:10:25 +0300
[2014-02-20 16:10:25] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true
^C[2014-02-20 16:11:07] INFO  going to shutdown ...
[2014-02-20 16:11:07] INFO  WEBrick::HTTPServer#start done.
Exiting
Rubis:) rails console
Loading development environment (Rails 4.0.2)
irb(main):001:0> User.paginate(page: 1)
User Load (2.9ms)  SELECT "users".* FROM "users" LIMIT 30 OFFSET 0
(0.2ms)  SELECT COUNT(*) FROM "users"
=> #<ActiveRecord::Relation [#<User id: 1, name: "Example User", email: "example@railstutorial.org", created_at: "2014-02-20 13:08:07", updated_at: "2014-02-20 13:08:07", password_digest: "$2a$10$fJZ3zBCXw2XnGE8odmf9xultELs9iUHOK8Dp2m8cohmm...", remember_token: "43caa3d135a7ff27c85895a1597a78d32282a9a7">, #<User id: 2, name: "Eldon Stehr", email: "example-1@railstutorial.org", created_at: "2014-02-20 13:08:08", updated_at: "2014-02-20 13:08:08", password_digest: "$2a$10$H30pp79vOZ7d46sJSselqeNRdh6G8D0LsvacS5Clh/cl...", remember_token: "702a97fcdf0369f51d8f68fe62af809b5849b7c3">, #<User id: 3, name: "Freeda Kris", email: "example-2@railstutorial.org", created_at: "2014-02-20 13:08:08", updated_at: "2014-02-20 13:08:08", password_digest: "$2a$10$wYDDpdoOmPZyISUuegLegO0DXZJzdEKJ86hfy7EuKUoF...", remember_token: "8ce2ddea8e3cdc6b62db0b4aa3b6cecf949f291d">, #<User id: 4, name: "April Crona", email: "example-3@railstutorial.org", created_at: "2014-02-20 13:08:08", updated_at: "2014-02-20 13:08:08", password_digest: "$2a$10$5EklqgubajRbWQEJKO85..G8xFvyIVfY9aB8/LAew0SO...", remember_token: "2f0a9c8d0747b1c9d1ea71ba56d5e1e1f50f9d22">, #<User id: 5, name: "Ms. Giovanny Herzog", email: "example-4@railstutorial.org", created_at: "2014-02-20 13:08:08", updated_at: "2014-02-20 13:08:08", password_digest: "$2a$10$nB8N6Bm2mmL3sk1n0sVtJu9woXnh5YUejCpDtZv2Yqgd...", remember_token: "9778c54642cf7a64b35495e887de50d09ec14b51">, #<User id: 6, name: "Deron Graham", email: "example-5@railstutorial.org", created_at: "2014-02-20 13:08:08", updated_at: "2014-02-20 13:08:08", password_digest: "$2a$10$XUVBsFLH6a4ROj6UWHldDOX.SooVoUV7hn4cfVZrOtDN...", remember_token: "434b0951ef029094f52a75e8c45e091b0f6637d7">, #<User id: 7, name: "Laura Effertz", email: "example-6@railstutorial.org", created_at: "2014-02-20 13:08:08", updated_at: "2014-02-20 13:08:08", password_digest: "$2a$10$q3QKn9Ws.n5ADbNchaMG4unslj9wzUqV8M9BSrhsFSdj...", remember_token: "e4613b08ccaec609ca03424cf79189c0b19ef6e0">, #<User id: 8, name: "Turner Veum Jr.", email: "example-7@railstutorial.org", created_at: "2014-02-20 13:08:08", updated_at: "2014-02-20 13:08:08", password_digest: "$2a$10$CD7mpS6Bw4rZ5MFTxQiQsuKbZ/VVeo07GVbeCiAEFS6O...", remember_token: "43f307cbbbedd01aff6c5f546ca1d2f804d444ba">, #<User id: 9, name: "Stan Marks", email: "example-8@railstutorial.org", created_at: "2014-02-20 13:08:08", updated_at: "2014-02-20 13:08:08", password_digest: "$2a$10$rmRQm4b.0VnQhcnYSgwaCe5eNI3LpN947X/uRLf1Xg/....", remember_token: "4aba01e3961dcd0e350320a005e755236edbba78">, #<User id: 10, name: "Oswald Renner", email: "example-9@railstutorial.org", created_at: "2014-02-20 13:08:08", updated_at: "2014-02-20 13:08:08", password_digest: "$2a$10$oeTC5hgtfZJ9F/TlAb6cOurvRJH7Pvl2IzXkReq.IFjA...", remember_token: "c0c4e701643bd4586d72c1b86b3b75745a623ccb">, ...]>
irb(main):002:0> exit
Rubis:) bundle exec rspec spec/
No DRb server is running. Running in local process instead ...
/Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `load': /Users/Sedclerk/Documents/sample_app/test/sample_app/spec/requests/user_pages_spec.rb:170: syntax error, unexpected keyword_end, expecting $end (SyntaxError)
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `block in load'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:214:in `load_dependency'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `load'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `block in load_spec_files'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `each'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `load_spec_files'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/command_line.rb:22:in `run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:77:in `rescue in run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:73:in `run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:17:in `block in autorun'
Rubis:) bundle exec rspec spec/

No DRb server is running. Running in local process instead ...
/Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `load': /Users/Sedclerk/Documents/sample_app/test/sample_app/spec/requests/user_pages_spec.rb:170: syntax error, unexpected keyword_end, expecting $end (SyntaxError)
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `block in load'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:214:in `load_dependency'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `load'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `block in load_spec_files'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `each'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `load_spec_files'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/command_line.rb:22:in `run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:77:in `rescue in run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:73:in `run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:17:in `block in autorun'
Rubis:)
Rubis:) rails generate migration add_admin_to_users admin:boolean
invoke  active_record
create    db/migrate/20140220131918_add_admin_to_users.rb
Rubis:) bundle exec rake db:migrate
==  AddAdminToUsers: migrating ================================================
-- add_column(:users, :admin, :boolean, {:default=>false})
-> 0.0116s
==  AddAdminToUsers: migrated (0.0117s) =======================================

Rubis:) bundle exec rake test:prepare
Rubis:) rails console --sandbox
Loading development environment in sandbox (Rails 4.0.2)
Any modifications you make will be rolled back on exit
irb(main):001:0> user = User.first
User Load (0.2ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT 1
=> #<User id: 1, name: "Example User", email: "example@railstutorial.org", created_at: "2014-02-20 13:08:07", updated_at: "2014-02-20 13:08:07", password_digest: "$2a$10$fJZ3zBCXw2XnGE8odmf9xultELs9iUHOK8Dp2m8cohmm...", remember_token: "43caa3d135a7ff27c85895a1597a78d32282a9a7", admin: false>
irb(main):002:0> >> user.admin?
SyntaxError: (irb):2: syntax error, unexpected tRSHFT
>> user.admin?
^
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/railties-4.0.2/lib/rails/commands/console.rb:90:in `start'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/railties-4.0.2/lib/rails/commands/console.rb:9:in `start'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/railties-4.0.2/lib/rails/commands.rb:62:in `<top (required)>'
from bin/rails:4:in `require'
from bin/rails:4:in `<main>'
irb(main):003:0> user.admin?
=> false
irb(main):004:0> user.toggle!(:admin)
(0.3ms)  SAVEPOINT active_record_1
SQL (7.1ms)  UPDATE "users" SET "admin" = ?, "updated_at" = ? WHERE "users"."id" = 1  [["admin", true], ["updated_at", Thu, 20 Feb 2014 13:21:31 UTC +00:00]]
(0.1ms)  RELEASE SAVEPOINT active_record_1
=> true
irb(main):005:0> user.admin?
=> true
irb(main):006:0> exit
(0.5ms)  rollback transaction
Rubis:) bundle exec rspec spec/models/user_spec.rb
No DRb server is running. Running in local process instead ...
........................

Finished in 0.38641 seconds
24 examples, 0 failures

Randomized with seed 11093

Rubis:) bundle exec rake db:reset
-- create_table("users", {:force=>true})
-> 0.0188s
-- add_index("users", ["email"], {:name=>"index_users_on_email", :unique=>true})
-> 0.0016s
-- add_index("users", ["remember_token"], {:name=>"index_users_on_remember_token"})
-> 0.0014s
-- initialize_schema_migrations_table()
-> 0.0063s
Rubis:)  bundle exec rake db:populate
Rubis:) bundle exec rake test:prepare
Rubis:) rails s
=> Booting WEBrick
=> Rails 4.0.2 application starting in development on http://0.0.0.0:3000
=> Run `rails server -h` for more startup options
=> Ctrl-C to shutdown server
[2014-02-20 16:27:45] INFO  WEBrick 1.3.1
[2014-02-20 16:27:45] INFO  ruby 1.9.3 (2013-02-22) [x86_64-darwin12.4.0]
[2014-02-20 16:27:45] INFO  WEBrick::HTTPServer#start: pid=12595 port=3000


Started GET "/users" for 127.0.0.1 at 2014-02-20 16:27:49 +0300
ActiveRecord::SchemaMigration Load (0.1ms)  SELECT "schema_migrations".* FROM "schema_migrations"
Processing by UsersController#index as HTML
(0.1ms)  SELECT COUNT(*) FROM "users"
User Load (0.4ms)  SELECT "users".* FROM "users" LIMIT 30 OFFSET 0
User Load (0.2ms)  SELECT "users".* FROM "users" WHERE "users"."remember_token" = '97e2b163982e78f2abaaee5e50f0e9fa5efa0f67' LIMIT 1
Rendered users/_user.html.erb (11.5ms)
Rendered users/index.html.erb within layouts/application (263.0ms)
Completed 500 Internal Server Error in 321ms

ActionView::Template::Error (undefined method `admin?' for nil:NilClass):
                             1: <li>
                             2:   <%= gravatar_for user, size: 52 %>
                             3:   <%= link_to user.name, user %>
                             4:   <% if current_user.admin? && !current_user?(user) %>
                             5:     | <%= link_to "delete", user, method: :delete,
                             6:                                   data: { confirm: "You sure?" } %>
                             7:   <% end %>
                             app/views/users/_user.html.erb:4:in `_app_views_users__user_html_erb___2772820858077367735_70111615303320'
                             app/views/users/index.html.erb:7:in `_app_views_users_index_html_erb__2415482852441719655_70111638181140'
                             
                             
                             Rendered /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/actionpack-4.0.2/lib/action_dispatch/middleware/templates/rescues/_trace.erb (1.3ms)
                             Rendered /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/actionpack-4.0.2/lib/action_dispatch/middleware/templates/rescues/_request_and_response.erb (27.8ms)
                             Rendered /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/actionpack-4.0.2/lib/action_dispatch/middleware/templates/rescues/template_error.erb within rescues/layout (41.0ms)
                             
                             
                             Started GET "/users" for 127.0.0.1 at 2014-02-20 16:29:16 +0300
                             
                             SyntaxError (/Users/Sedclerk/Documents/sample_app/test/sample_app/app/controllers/users_controller.rb:67: syntax error, unexpected $end, expecting keyword_end):
                             activesupport (4.0.2) lib/active_support/dependencies.rb:424:in `load'
                             activesupport (4.0.2) lib/active_support/dependencies.rb:424:in `block in load_file'
                             activesupport (4.0.2) lib/active_support/dependencies.rb:616:in `new_constants_in'
                             activesupport (4.0.2) lib/active_support/dependencies.rb:423:in `load_file'
                             activesupport (4.0.2) lib/active_support/dependencies.rb:324:in `require_or_load'
                             activesupport (4.0.2) lib/active_support/dependencies.rb:463:in `load_missing_constant'
                             activesupport (4.0.2) lib/active_support/dependencies.rb:184:in `const_missing'
                             activesupport (4.0.2) lib/active_support/inflector/methods.rb:226:in `const_get'
                             activesupport (4.0.2) lib/active_support/inflector/methods.rb:226:in `block in constantize'
                             activesupport (4.0.2) lib/active_support/inflector/methods.rb:224:in `each'
                             activesupport (4.0.2) lib/active_support/inflector/methods.rb:224:in `inject'
                             activesupport (4.0.2) lib/active_support/inflector/methods.rb:224:in `constantize'
                             activesupport (4.0.2) lib/active_support/dependencies.rb:535:in `get'
                             activesupport (4.0.2) lib/active_support/dependencies.rb:566:in `constantize'
                             actionpack (4.0.2) lib/action_dispatch/routing/route_set.rb:76:in `controller_reference'
                             actionpack (4.0.2) lib/action_dispatch/routing/route_set.rb:66:in `controller'
                             actionpack (4.0.2) lib/action_dispatch/routing/route_set.rb:44:in `call'
                             actionpack (4.0.2) lib/action_dispatch/journey/router.rb:71:in `block in call'
                             actionpack (4.0.2) lib/action_dispatch/journey/router.rb:59:in `each'
                             actionpack (4.0.2) lib/action_dispatch/journey/router.rb:59:in `call'
                             actionpack (4.0.2) lib/action_dispatch/routing/route_set.rb:680:in `call'
                             rack (1.5.2) lib/rack/etag.rb:23:in `call'
                             rack (1.5.2) lib/rack/conditionalget.rb:25:in `call'
                             rack (1.5.2) lib/rack/head.rb:11:in `call'
                             actionpack (4.0.2) lib/action_dispatch/middleware/params_parser.rb:27:in `call'
                             actionpack (4.0.2) lib/action_dispatch/middleware/flash.rb:241:in `call'
                             rack (1.5.2) lib/rack/session/abstract/id.rb:225:in `context'
                             rack (1.5.2) lib/rack/session/abstract/id.rb:220:in `call'
                             actionpack (4.0.2) lib/action_dispatch/middleware/cookies.rb:486:in `call'
                             activerecord (4.0.2) lib/active_record/query_cache.rb:36:in `call'
                             activerecord (4.0.2) lib/active_record/connection_adapters/abstract/connection_pool.rb:626:in `call'
                             activerecord (4.0.2) lib/active_record/migration.rb:369:in `call'
                             actionpack (4.0.2) lib/action_dispatch/middleware/callbacks.rb:29:in `block in call'
                             activesupport (4.0.2) lib/active_support/callbacks.rb:373:in `_run__2797916919585302936__call__callbacks'
                             activesupport (4.0.2) lib/active_support/callbacks.rb:80:in `run_callbacks'
                             actionpack (4.0.2) lib/action_dispatch/middleware/callbacks.rb:27:in `call'
                             actionpack (4.0.2) lib/action_dispatch/middleware/reloader.rb:64:in `call'
                             actionpack (4.0.2) lib/action_dispatch/middleware/remote_ip.rb:76:in `call'
                             actionpack (4.0.2) lib/action_dispatch/middleware/debug_exceptions.rb:17:in `call'
                             actionpack (4.0.2) lib/action_dispatch/middleware/show_exceptions.rb:30:in `call'
                             railties (4.0.2) lib/rails/rack/logger.rb:38:in `call_app'
                             railties (4.0.2) lib/rails/rack/logger.rb:20:in `block in call'
                             activesupport (4.0.2) lib/active_support/tagged_logging.rb:67:in `block in tagged'
                             activesupport (4.0.2) lib/active_support/tagged_logging.rb:25:in `tagged'
                             activesupport (4.0.2) lib/active_support/tagged_logging.rb:67:in `tagged'
                             railties (4.0.2) lib/rails/rack/logger.rb:20:in `call'
                             actionpack (4.0.2) lib/action_dispatch/middleware/request_id.rb:21:in `call'
                             rack (1.5.2) lib/rack/methodoverride.rb:21:in `call'
                             rack (1.5.2) lib/rack/runtime.rb:17:in `call'
                             activesupport (4.0.2) lib/active_support/cache/strategy/local_cache.rb:83:in `call'
                             rack (1.5.2) lib/rack/lock.rb:17:in `call'
                             actionpack (4.0.2) lib/action_dispatch/middleware/static.rb:64:in `call'
                             rack (1.5.2) lib/rack/sendfile.rb:112:in `call'
                             railties (4.0.2) lib/rails/engine.rb:511:in `call'
                             railties (4.0.2) lib/rails/application.rb:97:in `call'
                             rack (1.5.2) lib/rack/lock.rb:17:in `call'
                             rack (1.5.2) lib/rack/content_length.rb:14:in `call'
                             rack (1.5.2) lib/rack/handler/webrick.rb:60:in `service'
                             /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/1.9.1/webrick/httpserver.rb:138:in `service'
                             /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/1.9.1/webrick/httpserver.rb:94:in `run'
                             /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/1.9.1/webrick/server.rb:191:in `block in start_thread'
                             
                             
                             Rendered /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/actionpack-4.0.2/lib/action_dispatch/middleware/templates/rescues/_source.erb (0.6ms)
                             Rendered /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/actionpack-4.0.2/lib/action_dispatch/middleware/templates/rescues/_trace.erb (1.0ms)
                             Rendered /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/actionpack-4.0.2/lib/action_dispatch/middleware/templates/rescues/_request_and_response.erb (1.3ms)
                             Rendered /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/actionpack-4.0.2/lib/action_dispatch/middleware/templates/rescues/diagnostics.erb within rescues/layout (17.5ms)
                             
                             
                             Started GET "/users" for 127.0.0.1 at 2014-02-20 16:29:51 +0300
                             Processing by UsersController#index as HTML
                             (0.1ms)  SELECT COUNT(*) FROM "users"
                             User Load (0.3ms)  SELECT "users".* FROM "users" LIMIT 30 OFFSET 0
                             User Load (0.3ms)  SELECT "users".* FROM "users" WHERE "users"."remember_token" = '97e2b163982e78f2abaaee5e50f0e9fa5efa0f67' LIMIT 1
                             Rendered users/_user.html.erb (3.5ms)
                             Rendered users/index.html.erb within layouts/application (17.9ms)
                             Completed 500 Internal Server Error in 25ms
                             
                             ActionView::Template::Error (undefined method `admin?' for nil:NilClass):
                                                          1: <li>
                                                          2:   <%= gravatar_for user, size: 52 %>
                                                          3:   <%= link_to user.name, user %>
                                                          4:   <% if current_user.admin? && !current_user?(user) %>
                                                          5:     | <%= link_to "delete", user, method: :delete,
                                                          6:                                   data: { confirm: "You sure?" } %>
                                                          7:   <% end %>
                                                          app/views/users/_user.html.erb:4:in `_app_views_users__user_html_erb___2772820858077367735_70111615303320'
                                                          app/views/users/index.html.erb:7:in `_app_views_users_index_html_erb__2415482852441719655_70111638181140'
                                                          
                                                          
                                                          Rendered /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/actionpack-4.0.2/lib/action_dispatch/middleware/templates/rescues/_trace.erb (1.2ms)
                                                          Rendered /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/actionpack-4.0.2/lib/action_dispatch/middleware/templates/rescues/_request_and_response.erb (1.3ms)
                                                          Rendered /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/actionpack-4.0.2/lib/action_dispatch/middleware/templates/rescues/template_error.erb within rescues/layout (12.3ms)
                                                          
                                                          
                                                          Started GET "/users" for 127.0.0.1 at 2014-02-20 16:30:24 +0300
                                                          Processing by UsersController#index as HTML
                                                          User Load (0.2ms)  SELECT "users".* FROM "users" WHERE "users"."remember_token" = '97e2b163982e78f2abaaee5e50f0e9fa5efa0f67' LIMIT 1
                                                          Redirected to http://localhost:3000/signin
                                                          Filter chain halted as :signed_in_user rendered or redirected
                                                          Completed 302 Found in 9ms (ActiveRecord: 0.9ms)
                                                          
                                                          
                                                          Started GET "/signin" for 127.0.0.1 at 2014-02-20 16:30:24 +0300
                                                          Processing by SessionsController#new as HTML
                                                          Rendered sessions/new.html.erb within layouts/application (15.3ms)
                                                          Rendered layouts/_shim.html.erb (0.5ms)
                                                          User Load (0.2ms)  SELECT "users".* FROM "users" WHERE "users"."remember_token" = '97e2b163982e78f2abaaee5e50f0e9fa5efa0f67' LIMIT 1
                                                          Rendered layouts/_header.html.erb (2.1ms)
                                                          Rendered layouts/_footer.html.erb (0.6ms)
                                                          Completed 200 OK in 103ms (Views: 101.7ms | ActiveRecord: 0.2ms)
                                                          
                                                          
                                                          Started GET "/assets/application.css?body=1" for 127.0.0.1 at 2014-02-20 16:30:24 +0300
                                                          [2014-02-20 16:30:24] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true
                                                          
                                                          
                                                          Started GET "/assets/custom.css?body=1" for 127.0.0.1 at 2014-02-20 16:30:24 +0300
                                                          [2014-02-20 16:30:24] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true
                                                          
                                                          
                                                          Started GET "/assets/sessions.css?body=1" for 127.0.0.1 at 2014-02-20 16:30:24 +0300
                                                          [2014-02-20 16:30:24] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true
                                                          
                                                          
                                                          Started GET "/assets/static_pages.css?body=1" for 127.0.0.1 at 2014-02-20 16:30:24 +0300
                                                          [2014-02-20 16:30:24] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true
                                                          
                                                          
                                                          Started GET "/assets/users.css?body=1" for 127.0.0.1 at 2014-02-20 16:30:24 +0300
                                                          [2014-02-20 16:30:24] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true
                                                          
                                                          
                                                          Started GET "/assets/jquery.js?body=1" for 127.0.0.1 at 2014-02-20 16:30:24 +0300
                                                          [2014-02-20 16:30:24] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true
                                                          
                                                          
                                                          Started GET "/assets/jquery_ujs.js?body=1" for 127.0.0.1 at 2014-02-20 16:30:24 +0300
                                                          [2014-02-20 16:30:24] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true
                                                          
                                                          
                                                          Started GET "/assets/turbolinks.js?body=1" for 127.0.0.1 at 2014-02-20 16:30:24 +0300
                                                          [2014-02-20 16:30:24] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true
                                                          
                                                          
                                                          Started GET "/assets/sessions.js?body=1" for 127.0.0.1 at 2014-02-20 16:30:24 +0300
                                                          [2014-02-20 16:30:24] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true
                                                          
                                                          
                                                          Started GET "/assets/static_pages.js?body=1" for 127.0.0.1 at 2014-02-20 16:30:24 +0300
                                                          [2014-02-20 16:30:24] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true
                                                          
                                                          
                                                          Started GET "/assets/users.js?body=1" for 127.0.0.1 at 2014-02-20 16:30:24 +0300
                                                          [2014-02-20 16:30:24] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true
                                                          
                                                          
                                                          Started GET "/assets/application.js?body=1" for 127.0.0.1 at 2014-02-20 16:30:24 +0300
                                                          [2014-02-20 16:30:24] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true
                                                          ^C[2014-02-20 16:33:50] INFO  going to shutdown ...
                                                          [2014-02-20 16:33:50] INFO  WEBrick::HTTPServer#start done.
                                                          Exiting
                                                          Rubis:)  bundle exec rspec spec/
                             No DRb server is running. Running in local process instead ...
                             /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `load': /Users/Sedclerk/Documents/sample_app/test/sample_app/spec/requests/user_pages_spec.rb:172: syntax error, unexpected keyword_end, expecting $end (SyntaxError)
                             from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `block in load'
                             from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:214:in `load_dependency'
                             from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `load'
                             from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `block in load_spec_files'
                             from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `each'
                             from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `load_spec_files'
                             from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/command_line.rb:22:in `run'
                             from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:77:in `rescue in run'
                             from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:73:in `run'
                             from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:17:in `block in autorun'
                             Rubis:) git add .
Rubis:) cd ..
Rubis:) git add
Nothing specified, nothing added.
Maybe you wanted to say 'git add .'?
Rubis:) git add .
Rubis:) git  commit -m "Finish user edit, update, index, and destroy actions"
[master 5cb640e] Finish user edit, update, index, and destroy actions
1 file changed, 1 insertion(+)
create mode 160000 test/sample_app
Rubis:) git checkout master
D	new/sample_app
D	new/sample_app.rb
D	old/sample_app
D	old/sample_app.rb
M	sample_app
M	test/sample_app
Already on 'master'
Your branch is ahead of 'origin/master' by 1 commit.

