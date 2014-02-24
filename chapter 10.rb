Last login: Fri Feb 21 09:15:13 on ttys000
Rubis:) cd /Users/Sedclerk/Documents/sample_app/sample_app
Rubis:) rails generate model Micropost content:string user_id:integer
invoke  active_record
create    db/migrate/20140221112706_create_microposts.rb
create    app/models/micropost.rb
invoke    rspec
create      spec/models/micropost_spec.rb
invoke      factory_girl
create        spec/factories/microposts.rb
Rubis:) rm -f spec/factories/microposts.rb
Rubis:) bundle exec rake db:migrate
==  CreateMicroposts: migrating ===============================================
-- create_table(:microposts)
-> 0.0092s
-- add_index(:microposts, [:user_id, :created_at])
-> 0.0005s
==  CreateMicroposts: migrated (0.0099s) ======================================

Rubis:) bundle exec rake test:prepare
Rubis:) bundle exec rake db:migrate
Rubis:) bundle exec rake test:prepare
Rubis:) bundle exec rspec spec/models/micropost_spec.rb
No DRb server is running. Running in local process instead ...
..

Finished in 0.10071 seconds
2 examples, 0 failures

Randomized with seed 36481

Rubis:) bundle exec rspec spec/models
No DRb server is running. Running in local process instead ...
.......F........................

Failures:

1) User
Failure/Error: it { should respond_to(:admin) }
expected #<User id: nil, name: "Example User", email: "user@example.com", created_at: nil, updated_at: nil, password_digest: "$2a$04$VoWfdEjY/a4Z.5Yl4744.eqfoL23hrG8V.KNPLrJtRe4...", remember_token: nil> to respond to :admin
# ./spec/models/user_spec.rb:21:in `block (2 levels) in <top (required)>'

Finished in 0.33433 seconds
32 examples, 1 failure

Failed examples:

rspec ./spec/models/user_spec.rb:21 # User

Randomized with seed 41315

Rubis:) bundle exec rspec spec/
No DRb server is running. Running in local process instead ...
...F..................................................F................

Failures:

1) Authentication signin with valid information
Failure/Error: it { should have_link('Settings',    href: edit_user_path(user)) }
expected #has_link?("Settings", {:href=>"/users/1/edit"}) to return true, got false
# ./spec/requests/authentication_pages_spec.rb:27:in `block (4 levels) in <top (required)>'

2) User
Failure/Error: it { should respond_to(:admin) }
expected #<User id: nil, name: "Example User", email: "user@example.com", created_at: nil, updated_at: nil, password_digest: "$2a$04$mEtqUF/UmwX1J6MfklMBl.M2RRTYndTIJGwcUP1XQS20...", remember_token: nil> to respond to :admin
# ./spec/models/user_spec.rb:21:in `block (2 levels) in <top (required)>'

Finished in 4.81 seconds
71 examples, 2 failures

Failed examples:

rspec ./spec/requests/authentication_pages_spec.rb:27 # Authentication signin with valid information
rspec ./spec/models/user_spec.rb:21 # User

Randomized with seed 14556

Rubis:) bundle exec rake db:reset
rake aborted!
/Users/Sedclerk/Documents/sample_app/sample_app/lib/tasks/sample_data.rake:4: syntax error, unexpected '.'
/Users/Sedclerk/Documents/sample_app/sample_app/Rakefile:6:in `<top (required)>'
(See full trace by running task with --trace)
Rubis:) bundle exec rake db:reset
-- create_table("microposts", {:force=>true})
-> 0.0125s
-- add_index("microposts", ["user_id", "created_at"], {:name=>"index_microposts_on_user_id_and_created_at"})
-> 0.0015s
-- create_table("users", {:force=>true})
-> 0.0019s
-- add_index("users", ["email"], {:name=>"index_users_on_email", :unique=>true})
-> 0.0012s
-- add_index("users", ["remember_token"], {:name=>"index_users_on_remember_token"})
-> 0.0013s
-- initialize_schema_migrations_table()
-> 0.0064s
Rubis:) bundle exec rake db:populate
rake aborted!
unknown attribute: admin
/Users/Sedclerk/Documents/sample_app/sample_app/lib/tasks/sample_data.rake:4:in `block (2 levels) in <top (required)>'
Tasks: TOP => db:populate
(See full trace by running task with --trace)
Rubis:) bundle exec rake db:populate
rake aborted!
unknown attribute: admin
/Users/Sedclerk/Documents/sample_app/sample_app/lib/tasks/sample_data.rake:4:in `block (2 levels) in <top (required)>'
Tasks: TOP => db:populate
(See full trace by running task with --trace)
Rubis:) bundle exec rake test:prepare
Rubis:) bundle exec rspec spec/requests/authentication_pages_spec.rb

No DRb server is running. Running in local process instead ...
/Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `load': /Users/Sedclerk/Documents/sample_app/sample_app/spec/requests/authentication_pages_spec.rb:54: syntax error, unexpected $end, expecting keyword_end (SyntaxError)
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `block in load_spec_files'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `each'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `load_spec_files'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/command_line.rb:22:in `run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:77:in `rescue in run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:73:in `run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:17:in `block in autorun'
Rubis:)
Rubis:) bundle exec rspec spec/requests/authentication_pages_spec.rb
No DRb server is running. Running in local process instead ...
/Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `load': /Users/Sedclerk/Documents/sample_app/sample_app/spec/requests/authentication_pages_spec.rb:54: syntax error, unexpected $end, expecting keyword_end (SyntaxError)
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `block in load_spec_files'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `each'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `load_spec_files'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/command_line.rb:22:in `run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:77:in `rescue in run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:73:in `run'
from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:17:in `block in autorun'
Rubis:) bundle exec rspec spec/requests/authentication_pages_spec.rb
No DRb server is running. Running in local process instead ...
FFFFFF...FF

Failures:

1) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

2) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

3) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

4) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

5) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

6) Authentication signin authorization for non-signed-in users with valid information followed by signout
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

7) Authentication signin authorization for non-signed-in users with invalid information in the Microposts controller submitting to the destroy action
Failure/Error: before { delete micropost_path(FactoryGirl.create(:micropost)) }
NameError:
undefined local variable or method `store_location' for #<MicropostsController:0x007f872e437490>
# ./app/helpers/sessions_helper.rb:23:in `signed_in_user'
# ./spec/requests/authentication_pages_spec.rb:28:in `block (8 levels) in <top (required)>'

8) Authentication signin authorization for non-signed-in users with invalid information in the Microposts controller submitting to the create action
Failure/Error: before { post microposts_path }
NameError:
undefined local variable or method `store_location' for #<MicropostsController:0x007f872e782910>
# ./app/helpers/sessions_helper.rb:23:in `signed_in_user'
# ./spec/requests/authentication_pages_spec.rb:23:in `block (8 levels) in <top (required)>'

Finished in 3.16 seconds
11 examples, 8 failures

Failed examples:

rspec ./spec/requests/authentication_pages_spec.rb:45 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:41 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:42 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:44 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:43 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:49 # Authentication signin authorization for non-signed-in users with valid information followed by signout
rspec ./spec/requests/authentication_pages_spec.rb:29 # Authentication signin authorization for non-signed-in users with invalid information in the Microposts controller submitting to the destroy action
rspec ./spec/requests/authentication_pages_spec.rb:24 # Authentication signin authorization for non-signed-in users with invalid information in the Microposts controller submitting to the create action

Randomized with seed 16257

Rubis:) rails generate integration_test micropost_pages
invoke  rspec
create    spec/requests/micropost_pages_spec.rb
Rubis:) bundle exec rspec spec/requests/micropost_pages_spec.rb
No DRb server is running. Running in local process instead ...
FFF

Failures:

1) Micropost pages micropost creation with invalid information should not create a micropost
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/micropost_pages_spec.rb:8:in `block (2 levels) in <top (required)>'

2) Micropost pages micropost creation with invalid information error messages
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/micropost_pages_spec.rb:8:in `block (2 levels) in <top (required)>'

3) Micropost pages micropost creation with valid information should create a micropost
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/micropost_pages_spec.rb:8:in `block (2 levels) in <top (required)>'

Finished in 0.39565 seconds
3 examples, 3 failures

Failed examples:

rspec ./spec/requests/micropost_pages_spec.rb:15 # Micropost pages micropost creation with invalid information should not create a micropost
rspec ./spec/requests/micropost_pages_spec.rb:21 # Micropost pages micropost creation with invalid information error messages
rspec ./spec/requests/micropost_pages_spec.rb:28 # Micropost pages micropost creation with valid information should create a micropost

Randomized with seed 64003

Rubis:) bundle exec rspec spec/
No DRb server is running. Running in local process instead ...
FF..FFFFFFFFFFFFFF...FFFFFFF...........FF.FFFFFF....F...............................

Failures:

1) User pages profile page
Failure/Error: before { visit user_path(user) }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:9:in `block (3 levels) in <top (required)>'

2) User pages profile page
Failure/Error: before { visit user_path(user) }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:9:in `block (3 levels) in <top (required)>'

3) User pages edit page
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

4) User pages edit page
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

5) User pages edit page
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

6) User pages edit with invalid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

7) User pages edit with valid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

8) User pages edit with valid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

9) User pages edit with valid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

10) User pages edit with valid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

11) User pages edit with valid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

12) User pages edit profile page
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

13) User pages edit profile page
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

14) User pages edit profile page microposts
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

15) User pages edit profile page microposts
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

16) User pages edit profile page microposts
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

17) User pages signup with valid information should create a user
Failure/Error: expect { click_button submit }.to change(User, :count).by(1)
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:48:in `block (5 levels) in <top (required)>'
# ./spec/requests/user_pages_spec.rb:48:in `block (4 levels) in <top (required)>'

18) User pages signup with valid information after saving the user
Failure/Error: before { click_button submit }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:51:in `block (5 levels) in <top (required)>'

19) User pages signup with valid information after saving the user
Failure/Error: before { click_button submit }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:51:in `block (5 levels) in <top (required)>'

20) User pages signup with valid information after saving the user
Failure/Error: before { click_button submit }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:51:in `block (5 levels) in <top (required)>'

21) Micropost pages micropost creation with invalid information should not create a micropost
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/micropost_pages_spec.rb:8:in `block (2 levels) in <top (required)>'

22) Micropost pages micropost creation with invalid information error messages
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/micropost_pages_spec.rb:8:in `block (2 levels) in <top (required)>'

23) Micropost pages micropost creation with valid information should create a micropost
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/micropost_pages_spec.rb:8:in `block (2 levels) in <top (required)>'

24) Authentication signin authorization for non-signed-in users with invalid information in the Microposts controller submitting to the create action
Failure/Error: before { post microposts_path }
NameError:
undefined local variable or method `store_location' for #<MicropostsController:0x007ff164a4b700>
# ./app/helpers/sessions_helper.rb:23:in `signed_in_user'
# ./spec/requests/authentication_pages_spec.rb:23:in `block (8 levels) in <top (required)>'

25) Authentication signin authorization for non-signed-in users with invalid information in the Microposts controller submitting to the destroy action
Failure/Error: before { delete micropost_path(FactoryGirl.create(:micropost)) }
NameError:
undefined local variable or method `store_location' for #<MicropostsController:0x007ff165d98308>
# ./app/helpers/sessions_helper.rb:23:in `signed_in_user'
# ./spec/requests/authentication_pages_spec.rb:28:in `block (8 levels) in <top (required)>'

26) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

27) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

28) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

29) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

30) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

31) Authentication signin authorization for non-signed-in users with valid information followed by signout
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

32) User
Failure/Error: it { should respond_to(:admin) }
expected #<User id: nil, name: "Example User", email: "user@example.com", created_at: nil, updated_at: nil, password_digest: "$2a$04$Pl5wFuhXzDFsmqfamUjTDO31.MFwkc5fA3p.bgVx1HHc...", remember_token: nil> to respond to :admin
# ./spec/models/user_spec.rb:21:in `block (2 levels) in <top (required)>'

Finished in 2.22 seconds
84 examples, 32 failures

Failed examples:

rspec ./spec/requests/user_pages_spec.rb:11 # User pages profile page
rspec ./spec/requests/user_pages_spec.rb:12 # User pages profile page
rspec ./spec/requests/user_pages_spec.rb:69 # User pages edit page
rspec ./spec/requests/user_pages_spec.rb:70 # User pages edit page
rspec ./spec/requests/user_pages_spec.rb:71 # User pages edit page
rspec ./spec/requests/user_pages_spec.rb:77 # User pages edit with invalid information
rspec ./spec/requests/user_pages_spec.rb:110 # User pages edit with valid information
rspec ./spec/requests/user_pages_spec.rb:107 # User pages edit with valid information
rspec ./spec/requests/user_pages_spec.rb:109 # User pages edit with valid information
rspec ./spec/requests/user_pages_spec.rb:108 # User pages edit with valid information
rspec ./spec/requests/user_pages_spec.rb:106 # User pages edit with valid information
rspec ./spec/requests/user_pages_spec.rb:86 # User pages edit profile page
rspec ./spec/requests/user_pages_spec.rb:87 # User pages edit profile page
rspec ./spec/requests/user_pages_spec.rb:90 # User pages edit profile page microposts
rspec ./spec/requests/user_pages_spec.rb:91 # User pages edit profile page microposts
rspec ./spec/requests/user_pages_spec.rb:92 # User pages edit profile page microposts
rspec ./spec/requests/user_pages_spec.rb:47 # User pages signup with valid information should create a user
rspec ./spec/requests/user_pages_spec.rb:54 # User pages signup with valid information after saving the user
rspec ./spec/requests/user_pages_spec.rb:55 # User pages signup with valid information after saving the user
rspec ./spec/requests/user_pages_spec.rb:56 # User pages signup with valid information after saving the user
rspec ./spec/requests/micropost_pages_spec.rb:15 # Micropost pages micropost creation with invalid information should not create a micropost
rspec ./spec/requests/micropost_pages_spec.rb:21 # Micropost pages micropost creation with invalid information error messages
rspec ./spec/requests/micropost_pages_spec.rb:28 # Micropost pages micropost creation with valid information should create a micropost
rspec ./spec/requests/authentication_pages_spec.rb:24 # Authentication signin authorization for non-signed-in users with invalid information in the Microposts controller submitting to the create action
rspec ./spec/requests/authentication_pages_spec.rb:29 # Authentication signin authorization for non-signed-in users with invalid information in the Microposts controller submitting to the destroy action
rspec ./spec/requests/authentication_pages_spec.rb:45 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:42 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:44 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:43 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:41 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:49 # Authentication signin authorization for non-signed-in users with valid information followed by signout
rspec ./spec/models/user_spec.rb:21 # User

Randomized with seed 4149

Rubis:) rails console
Loading development environment (Rails 4.0.2)
irb(main):001:0> a = [1, "foo", :bar]
=> [1, "foo", :bar]
irb(main):002:0> a.include?("foo")
=> true
irb(main):003:0> a.include?(:bar)
=> true
irb(main):004:0> a.include?("baz")
=> false
irb(main):005:0> exit
Rubis:) bundle exec rspec spec/

No DRb server is running. Running in local process instead ...
/Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `load': /Users/Sedclerk/Documents/sample_app/sample_app/spec/models/user_spec.rb:145: syntax error, unexpected '.' (SyntaxError)
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
Rubis:) bundle exec rspec spec/
No DRb server is running. Running in local process instead ...
FF.FFFF....FFFFFFFFFFFFFFFFF..FF.FFFFFF........F..F............F.........F...F...............

Failures:

1) User pages profile page
Failure/Error: before { visit user_path(user) }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:9:in `block (3 levels) in <top (required)>'

2) User pages profile page
Failure/Error: before { visit user_path(user) }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:9:in `block (3 levels) in <top (required)>'

3) User pages signup with valid information should create a user
Failure/Error: expect { click_button submit }.to change(User, :count).by(1)
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:48:in `block (5 levels) in <top (required)>'
# ./spec/requests/user_pages_spec.rb:48:in `block (4 levels) in <top (required)>'

4) User pages signup with valid information after saving the user
Failure/Error: before { click_button submit }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:51:in `block (5 levels) in <top (required)>'

5) User pages signup with valid information after saving the user
Failure/Error: before { click_button submit }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:51:in `block (5 levels) in <top (required)>'

6) User pages signup with valid information after saving the user
Failure/Error: before { click_button submit }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:51:in `block (5 levels) in <top (required)>'

7) User pages edit page
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

8) User pages edit page
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

9) User pages edit page
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

10) User pages edit profile page
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

11) User pages edit profile page
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

12) User pages edit profile page microposts
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

13) User pages edit profile page microposts
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

14) User pages edit profile page microposts
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

15) User pages edit with invalid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

16) User pages edit with valid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

17) User pages edit with valid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

18) User pages edit with valid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

19) User pages edit with valid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

20) User pages edit with valid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

21) Micropost pages micropost creation with invalid information should not create a micropost
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/micropost_pages_spec.rb:8:in `block (2 levels) in <top (required)>'

22) Micropost pages micropost creation with invalid information error messages
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/micropost_pages_spec.rb:8:in `block (2 levels) in <top (required)>'

23) Micropost pages micropost creation with valid information should create a micropost
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/micropost_pages_spec.rb:8:in `block (2 levels) in <top (required)>'

24) Authentication signin authorization for non-signed-in users with invalid information in the Microposts controller submitting to the create action
Failure/Error: before { post microposts_path }
NameError:
undefined local variable or method `store_location' for #<MicropostsController:0x007faa74e64508>
# ./app/helpers/sessions_helper.rb:23:in `signed_in_user'
# ./spec/requests/authentication_pages_spec.rb:23:in `block (8 levels) in <top (required)>'

25) Authentication signin authorization for non-signed-in users with invalid information in the Microposts controller submitting to the destroy action
Failure/Error: before { delete micropost_path(FactoryGirl.create(:micropost)) }
NameError:
undefined local variable or method `store_location' for #<MicropostsController:0x007faa7759fd20>
# ./app/helpers/sessions_helper.rb:23:in `signed_in_user'
# ./spec/requests/authentication_pages_spec.rb:28:in `block (8 levels) in <top (required)>'

26) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

27) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

28) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

29) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

30) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

31) Authentication signin authorization for non-signed-in users with valid information followed by signout
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

32) User
Failure/Error: it { should_not be_admin }
NoMethodError:
undefined method `admin?' for #<User:0x007faa74aee8b0>
# ./spec/models/user_spec.rb:27:in `block (2 levels) in <top (required)>'

33) User
Failure/Error: it { should respond_to(:admin) }
expected #<User id: nil, name: "Example User", email: "user@example.com", created_at: nil, updated_at: nil, password_digest: "$2a$04$yretnigFtttiGMzjLTCIue6.U71eZ5AHXkvJAO878vWl...", remember_token: nil> to respond to :admin
# ./spec/models/user_spec.rb:22:in `block (2 levels) in <top (required)>'

34) User micropost associations should destroy associated microposts
Failure/Error: expect(Micropost.where(id: micropost.id)).to be_empty
expected empty? to return true, got false
# ./spec/models/user_spec.rb:152:in `block (4 levels) in <top (required)>'
# ./spec/models/user_spec.rb:151:in `each'
# ./spec/models/user_spec.rb:151:in `block (3 levels) in <top (required)>'

35) User with admin attribute set to 'true'
Failure/Error: @user.toggle!(:admin)
NoMethodError:
undefined method `admin?' for #<User:0x007faa79a3d9c0>
# ./spec/models/user_spec.rb:32:in `block (3 levels) in <top (required)>'

36) Static pages Home page for signed-in users should render the user's feed
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy::ActiveRecord_Associations_CollectionProxy_Micropost:0x007faa7712f880>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/static_pages_spec.rb:19:in `block (4 levels) in <top (required)>'

Finished in 2.17 seconds
93 examples, 36 failures

Failed examples:

rspec ./spec/requests/user_pages_spec.rb:11 # User pages profile page
rspec ./spec/requests/user_pages_spec.rb:12 # User pages profile page
rspec ./spec/requests/user_pages_spec.rb:47 # User pages signup with valid information should create a user
rspec ./spec/requests/user_pages_spec.rb:54 # User pages signup with valid information after saving the user
rspec ./spec/requests/user_pages_spec.rb:56 # User pages signup with valid information after saving the user
rspec ./spec/requests/user_pages_spec.rb:55 # User pages signup with valid information after saving the user
rspec ./spec/requests/user_pages_spec.rb:69 # User pages edit page
rspec ./spec/requests/user_pages_spec.rb:71 # User pages edit page
rspec ./spec/requests/user_pages_spec.rb:70 # User pages edit page
rspec ./spec/requests/user_pages_spec.rb:86 # User pages edit profile page
rspec ./spec/requests/user_pages_spec.rb:87 # User pages edit profile page
rspec ./spec/requests/user_pages_spec.rb:90 # User pages edit profile page microposts
rspec ./spec/requests/user_pages_spec.rb:92 # User pages edit profile page microposts
rspec ./spec/requests/user_pages_spec.rb:91 # User pages edit profile page microposts
rspec ./spec/requests/user_pages_spec.rb:77 # User pages edit with invalid information
rspec ./spec/requests/user_pages_spec.rb:110 # User pages edit with valid information
rspec ./spec/requests/user_pages_spec.rb:108 # User pages edit with valid information
rspec ./spec/requests/user_pages_spec.rb:107 # User pages edit with valid information
rspec ./spec/requests/user_pages_spec.rb:106 # User pages edit with valid information
rspec ./spec/requests/user_pages_spec.rb:109 # User pages edit with valid information
rspec ./spec/requests/micropost_pages_spec.rb:15 # Micropost pages micropost creation with invalid information should not create a micropost
rspec ./spec/requests/micropost_pages_spec.rb:21 # Micropost pages micropost creation with invalid information error messages
rspec ./spec/requests/micropost_pages_spec.rb:28 # Micropost pages micropost creation with valid information should create a micropost
rspec ./spec/requests/authentication_pages_spec.rb:24 # Authentication signin authorization for non-signed-in users with invalid information in the Microposts controller submitting to the create action
rspec ./spec/requests/authentication_pages_spec.rb:29 # Authentication signin authorization for non-signed-in users with invalid information in the Microposts controller submitting to the destroy action
rspec ./spec/requests/authentication_pages_spec.rb:45 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:43 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:42 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:41 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:44 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:49 # Authentication signin authorization for non-signed-in users with valid information followed by signout
rspec ./spec/models/user_spec.rb:27 # User
rspec ./spec/models/user_spec.rb:22 # User
rspec ./spec/models/user_spec.rb:147 # User micropost associations should destroy associated microposts
rspec ./spec/models/user_spec.rb:35 # User with admin attribute set to 'true'
rspec ./spec/requests/static_pages_spec.rb:23 # Static pages Home page for signed-in users should render the user's feed

Randomized with seed 8451

Rubis:) bundle exec rspec spec/
No DRb server is running. Running in local process instead ...
...FFFFFFFFFFFFFFFFFFFF........F.....F.....F...........F.........F....FFFF..FF.FFFFFF.........

Failures:

1) User pages signup with valid information should create a user
Failure/Error: expect { click_button submit }.to change(User, :count).by(1)
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:48:in `block (5 levels) in <top (required)>'
# ./spec/requests/user_pages_spec.rb:48:in `block (4 levels) in <top (required)>'

2) User pages signup with valid information after saving the user
Failure/Error: before { click_button submit }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:51:in `block (5 levels) in <top (required)>'

3) User pages signup with valid information after saving the user
Failure/Error: before { click_button submit }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:51:in `block (5 levels) in <top (required)>'

4) User pages signup with valid information after saving the user
Failure/Error: before { click_button submit }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:51:in `block (5 levels) in <top (required)>'

5) User pages profile page
Failure/Error: before { visit user_path(user) }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:9:in `block (3 levels) in <top (required)>'

6) User pages profile page
Failure/Error: before { visit user_path(user) }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/requests/user_pages_spec.rb:9:in `block (3 levels) in <top (required)>'

7) User pages edit profile page
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

8) User pages edit profile page
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

9) User pages edit profile page microposts
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

10) User pages edit profile page microposts
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

11) User pages edit profile page microposts
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

12) User pages edit page
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

13) User pages edit page
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

14) User pages edit page
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

15) User pages edit with valid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

16) User pages edit with valid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

17) User pages edit with valid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

18) User pages edit with valid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

19) User pages edit with valid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

20) User pages edit with invalid information
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/user_pages_spec.rb:64:in `block (3 levels) in <top (required)>'

21) User
Failure/Error: it { should respond_to(:admin) }
expected #<User id: nil, name: "Example User", email: "user@example.com", created_at: nil, updated_at: nil, password_digest: "$2a$04$WLuhtEtQ53XH9HSfb3KmfuMEjhpsn5wAwVPuxcCDlCYb...", remember_token: nil> to respond to :admin
# ./spec/models/user_spec.rb:22:in `block (2 levels) in <top (required)>'

22) User
Failure/Error: it { should_not be_admin }
NoMethodError:
undefined method `admin?' for #<User:0x007fc7cc3bad30>
# ./spec/models/user_spec.rb:27:in `block (2 levels) in <top (required)>'

23) User with admin attribute set to 'true'
Failure/Error: @user.toggle!(:admin)
NoMethodError:
undefined method `admin?' for #<User:0x007fc7cc728378>
# ./spec/models/user_spec.rb:32:in `block (3 levels) in <top (required)>'

24) User micropost associations should destroy associated microposts
Failure/Error: expect(Micropost.where(id: micropost.id)).to be_empty
expected empty? to return true, got false
# ./spec/models/user_spec.rb:152:in `block (4 levels) in <top (required)>'
# ./spec/models/user_spec.rb:151:in `each'
# ./spec/models/user_spec.rb:151:in `block (3 levels) in <top (required)>'

25) Static pages Home page for signed-in users should render the user's feed
Failure/Error: sign_in user
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy::ActiveRecord_Associations_CollectionProxy_Micropost:0x007fc7cc6898b8>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/static_pages_spec.rb:19:in `block (4 levels) in <top (required)>'

26) Micropost pages micropost creation with invalid information should not create a micropost
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/micropost_pages_spec.rb:8:in `block (2 levels) in <top (required)>'

27) Micropost pages micropost creation with invalid information error messages
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/micropost_pages_spec.rb:8:in `block (2 levels) in <top (required)>'

28) Micropost pages micropost creation with valid information should create a micropost
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/micropost_pages_spec.rb:8:in `block (2 levels) in <top (required)>'

29) Micropost pages micropost destruction as correct user should delete a micropost
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/micropost_pages_spec.rb:8:in `block (2 levels) in <top (required)>'

30) Authentication signin authorization for non-signed-in users with invalid information in the Microposts controller submitting to the create action
Failure/Error: before { post microposts_path }
NameError:
undefined local variable or method `store_location' for #<MicropostsController:0x007fc7cc178ba8>
# ./app/helpers/sessions_helper.rb:23:in `signed_in_user'
# ./spec/requests/authentication_pages_spec.rb:23:in `block (8 levels) in <top (required)>'

31) Authentication signin authorization for non-signed-in users with invalid information in the Microposts controller submitting to the destroy action
Failure/Error: before { delete micropost_path(FactoryGirl.create(:micropost)) }
NameError:
undefined local variable or method `store_location' for #<MicropostsController:0x007fc7cb8c0038>
# ./app/helpers/sessions_helper.rb:23:in `signed_in_user'
# ./spec/requests/authentication_pages_spec.rb:28:in `block (8 levels) in <top (required)>'

32) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

33) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

34) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

35) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

36) Authentication signin authorization for non-signed-in users with valid information
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

37) Authentication signin authorization for non-signed-in users with valid information followed by signout
Failure/Error: before { sign_in user }
NoMethodError:
undefined method `paginate' for #<ActiveRecord::Associations::CollectionProxy []>
# ./app/controllers/users_controller.rb:22:in `show'
# ./spec/support/utilities.rb:25:in `sign_in'
# ./spec/requests/authentication_pages_spec.rb:39:in `block (6 levels) in <top (required)>'

Finished in 2.21 seconds
94 examples, 37 failures

Failed examples:

rspec ./spec/requests/user_pages_spec.rb:47 # User pages signup with valid information should create a user
rspec ./spec/requests/user_pages_spec.rb:55 # User pages signup with valid information after saving the user
rspec ./spec/requests/user_pages_spec.rb:54 # User pages signup with valid information after saving the user
rspec ./spec/requests/user_pages_spec.rb:56 # User pages signup with valid information after saving the user
rspec ./spec/requests/user_pages_spec.rb:11 # User pages profile page
rspec ./spec/requests/user_pages_spec.rb:12 # User pages profile page
rspec ./spec/requests/user_pages_spec.rb:86 # User pages edit profile page
rspec ./spec/requests/user_pages_spec.rb:87 # User pages edit profile page
rspec ./spec/requests/user_pages_spec.rb:91 # User pages edit profile page microposts
rspec ./spec/requests/user_pages_spec.rb:90 # User pages edit profile page microposts
rspec ./spec/requests/user_pages_spec.rb:92 # User pages edit profile page microposts
rspec ./spec/requests/user_pages_spec.rb:70 # User pages edit page
rspec ./spec/requests/user_pages_spec.rb:69 # User pages edit page
rspec ./spec/requests/user_pages_spec.rb:71 # User pages edit page
rspec ./spec/requests/user_pages_spec.rb:107 # User pages edit with valid information
rspec ./spec/requests/user_pages_spec.rb:110 # User pages edit with valid information
rspec ./spec/requests/user_pages_spec.rb:108 # User pages edit with valid information
rspec ./spec/requests/user_pages_spec.rb:109 # User pages edit with valid information
rspec ./spec/requests/user_pages_spec.rb:106 # User pages edit with valid information
rspec ./spec/requests/user_pages_spec.rb:77 # User pages edit with invalid information
rspec ./spec/models/user_spec.rb:22 # User
rspec ./spec/models/user_spec.rb:27 # User
rspec ./spec/models/user_spec.rb:35 # User with admin attribute set to 'true'
rspec ./spec/models/user_spec.rb:147 # User micropost associations should destroy associated microposts
rspec ./spec/requests/static_pages_spec.rb:23 # Static pages Home page for signed-in users should render the user's feed
rspec ./spec/requests/micropost_pages_spec.rb:15 # Micropost pages micropost creation with invalid information should not create a micropost
rspec ./spec/requests/micropost_pages_spec.rb:21 # Micropost pages micropost creation with invalid information error messages
rspec ./spec/requests/micropost_pages_spec.rb:28 # Micropost pages micropost creation with valid information should create a micropost
rspec ./spec/requests/micropost_pages_spec.rb:39 # Micropost pages micropost destruction as correct user should delete a micropost
rspec ./spec/requests/authentication_pages_spec.rb:24 # Authentication signin authorization for non-signed-in users with invalid information in the Microposts controller submitting to the create action
rspec ./spec/requests/authentication_pages_spec.rb:29 # Authentication signin authorization for non-signed-in users with invalid information in the Microposts controller submitting to the destroy action
rspec ./spec/requests/authentication_pages_spec.rb:42 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:45 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:43 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:44 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:41 # Authentication signin authorization for non-signed-in users with valid information
rspec ./spec/requests/authentication_pages_spec.rb:49 # Authentication signin authorization for non-signed-in users with valid information followed by signout

Randomized with seed 829

Rubis:) cd ..
Rubis:) git add .
Rubis:) git commit -m "Add user microposts"
# On branch master
# Changes not staged for commit:
#   (use "git add/rm <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#   (commit or discard the untracked or modified content in submodules)
#
#	deleted:    new/sample_app
#	deleted:    new/sample_app.rb
#	deleted:    old/sample_app
#	deleted:    old/sample_app.rb
#	modified:   sample_app (modified content, untracked content)
#	modified:   test/sample_app (modified content)
#
no changes added to commit (use "git add" and/or "git commit -a")
Rubis:)
Rubis:) git checkout master
D	new/sample_app
D	new/sample_app.rb
D	old/sample_app
D	old/sample_app.rb
M	sample_app
M	test/sample_app
Already on 'master'
Rubis:) git merge user-microposts
fatal: user-microposts - not something we can merge
Rubis:) git push
Everything up-to-date

