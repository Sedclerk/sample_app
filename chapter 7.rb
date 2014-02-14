
Rubis:) gem install factory_girl_rails
Fetching: factory_girl-4.4.0.gem (100%)
Successfully installed factory_girl-4.4.0
Fetching: factory_girl_rails-4.4.0.gem (100%)
Successfully installed factory_girl_rails-4.4.0
Parsing documentation for factory_girl-4.4.0
Installing ri documentation for factory_girl-4.4.0
Parsing documentation for factory_girl_rails-4.4.0
Installing ri documentation for factory_girl_rails-4.4.0
Done installing documentation for factory_girl, factory_girl_rails after 1 seconds
2 gems installed
Rubis:) bundle install
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
Using factory_girl (4.4.0)
Using factory_girl_rails (4.4.0)
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
Using hike (1.2.3)
Using jbuilder (1.0.2)
Using jquery-rails (3.0.4)
Using json (1.8.1)
Using tilt (1.4.1)
Using sprockets (2.10.1)
Using sprockets-rails (2.0.1)
Using rails (4.0.2)
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
Rubis:) bundle exec rspec spec/
No DRb server is running. Running in local process instead ...
...............................FF

Failures:

1) User pages profile page
Failure/Error: before { visit user_path(user) }
ActionView::Template::Error:
undefined method `name' for nil:NilClass
# ./app/views/users/show.html.erb:1:in `_app_views_users_show_html_erb__3464451235954483825_70289998928400'
# ./spec/requests/user_pages_spec.rb:9:in `block (3 levels) in <top (required)>'

2) User pages profile page
Failure/Error: before { visit user_path(user) }
ActionView::Template::Error:
undefined method `name' for nil:NilClass
# ./app/views/users/show.html.erb:1:in `_app_views_users_show_html_erb__3464451235954483825_70289998928400'
# ./spec/requests/user_pages_spec.rb:9:in `block (3 levels) in <top (required)>'

Finished in 3.97 seconds
33 examples, 2 failures

Failed examples:

rspec ./spec/requests/user_pages_spec.rb:12 # User pages profile page
rspec ./spec/requests/user_pages_spec.rb:11 # User pages profile page

Randomized with seed 44373

Rubis:) bundle exec rspec spec/
No DRb server is running. Running in local process instead ...
....................FF...........

Failures:

1) User pages profile page
Failure/Error: before { visit user_path(user) }
ActionView::Template::Error:
undefined method `name' for nil:NilClass
# ./app/views/users/show.html.erb:1:in `_app_views_users_show_html_erb__617183622331427260_70209870552240'
# ./spec/requests/user_pages_spec.rb:9:in `block (3 levels) in <top (required)>'

2) User pages profile page
Failure/Error: before { visit user_path(user) }
ActionView::Template::Error:
undefined method `name' for nil:NilClass
# ./app/views/users/show.html.erb:1:in `_app_views_users_show_html_erb__617183622331427260_70209870552240'
# ./spec/requests/user_pages_spec.rb:9:in `block (3 levels) in <top (required)>'

Finished in 0.44545 seconds
33 examples, 2 failures

Failed examples:

rspec ./spec/requests/user_pages_spec.rb:11 # User pages profile page
rspec ./spec/requests/user_pages_spec.rb:12 # User pages profile page

Randomized with seed 58592

Rubis:) bundle exec rspec spec
No DRb server is running. Running in local process instead ...
...............................FF

Failures:

1) User pages profile page
Failure/Error: before { visit user_path(user) }
ActionView::Template::Error:
undefined method `name' for nil:NilClass
# ./app/views/users/show.html.erb:1:in `_app_views_users_show_html_erb__2229544169701677197_70096557242800'
# ./spec/requests/user_pages_spec.rb:9:in `block (3 levels) in <top (required)>'

2) User pages profile page
Failure/Error: before { visit user_path(user) }
ActionView::Template::Error:
undefined method `name' for nil:NilClass
# ./app/views/users/show.html.erb:1:in `_app_views_users_show_html_erb__2229544169701677197_70096557242800'
# ./spec/requests/user_pages_spec.rb:9:in `block (3 levels) in <top (required)>'

Finished in 0.53456 seconds
33 examples, 2 failures

Failed examples:

rspec ./spec/requests/user_pages_spec.rb:12 # User pages profile page
rspec ./spec/requests/user_pages_spec.rb:11 # User pages profile page

Randomized with seed 59289

Rubis:) bundle exec rspec spec/
No DRb server is running. Running in local process instead ...
.........FF......................

Failures:

1) User pages profile page
Failure/Error: before { visit user_path(user) }
ActionView::Template::Error:
undefined method `name' for nil:NilClass
# ./app/views/users/show.html.erb:1:in `_app_views_users_show_html_erb__432336073844351743_70294640742100'
# ./spec/requests/user_pages_spec.rb:9:in `block (3 levels) in <top (required)>'

2) User pages profile page
Failure/Error: before { visit user_path(user) }
ActionView::Template::Error:
undefined method `name' for nil:NilClass
# ./app/views/users/show.html.erb:1:in `_app_views_users_show_html_erb__432336073844351743_70294640742100'
# ./spec/requests/user_pages_spec.rb:9:in `block (3 levels) in <top (required)>'

Finished in 0.43641 seconds
33 examples, 2 failures

Failed examples:

rspec ./spec/requests/user_pages_spec.rb:11 # User pages profile page
rspec ./spec/requests/user_pages_spec.rb:12 # User pages profile page

Randomized with seed 31088

Rubis:) bundle exec rspec spec/
No DRb server is running. Running in local process instead ...
.............................FF..

Failures:

1) User pages profile page
Failure/Error: before { visit user_path(user) }
ActionView::Template::Error:
undefined method `name' for nil:NilClass
# ./app/views/users/show.html.erb:1:in `_app_views_users_show_html_erb___2513942441715007191_70124799361220'
# ./spec/requests/user_pages_spec.rb:9:in `block (3 levels) in <top (required)>'

2) User pages profile page
Failure/Error: before { visit user_path(user) }
ActionView::Template::Error:
undefined method `name' for nil:NilClass
# ./app/views/users/show.html.erb:1:in `_app_views_users_show_html_erb___2513942441715007191_70124799361220'
# ./spec/requests/user_pages_spec.rb:9:in `block (3 levels) in <top (required)>'

Finished in 0.44991 seconds
33 examples, 2 failures

Failed examples:

rspec ./spec/requests/user_pages_spec.rb:11 # User pages profile page
rspec ./spec/requests/user_pages_spec.rb:12 # User pages profile page

Randomized with seed 11577

Rubis:) rails console
Loading development environment (Rails 4.0.2)
irb(main):001:0> Rails.env
=> "development"
irb(main):002:0> Rails.env.development?
=> true
irb(main):003:0> Rails.env.test?
=> false
irb(main):004:0> exit
Rubis:) rails console test
Loading test environment (Rails 4.0.2)
irb(main):001:0> Rails.env
=> "test"
irb(main):002:0> Rails.env.test?
=> true
irb(main):003:0> exit
Rubis:) rails server --environment production
=> Booting WEBrick
=> Rails 4.0.2 application starting in production on http://0.0.0.0:3000
=> Run `rails server -h` for more startup options
=> Ctrl-C to shutdown server
A server is already running. Check /Users/Sedclerk/Documents/sample_app/sample_app/tmp/pids/server.pid.
Exiting
Rubis:) bundle exec rake db:migrate RAILS_ENV=production
==  CreateUsers: migrating ====================================================
-- create_table(:users)
-> 0.0010s
==  CreateUsers: migrated (0.0011s) ===========================================

==  AddIndexToUsersEmail: migrating ===========================================
-- add_index(:users, :email, {:unique=>true})
-> 0.0006s
==  AddIndexToUsersEmail: migrated (0.0006s) ==================================

==  AddPasswordDigestToUsers: migrating =======================================
-- add_column(:users, :password_digest, :string)
-> 0.0006s
==  AddPasswordDigestToUsers: migrated (0.0006s) ==============================

Rubis:) heroku run console
!    No app specified.
!    Run this command from an app folder or specify which app to use with --app APP.
Rubis:) rails console
Loading development environment (Rails 4.0.2)
irb(main):001:0> user = User.first
User Load (2.7ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT 1
=> #<User id: 1, name: "Michael Hartl", email: "mhartl@example.com", created_at: "2014-02-11 09:30:29", updated_at: "2014-02-11 09:30:29", password_digest: "$2a$10$gIrbupLD73HMs1QwGjPvL.p7d42lmYeb.NhqrYno1cQI...">
irb(main):002:0> user.update_attributes(name: "Example User",
                                        irb(main):003:1* email: "example@railstutorial.org",
                                        irb(main):004:1* password: "foobar",
                                        irb(main):005:1* password_confirmation: "foobar")
(0.2ms)  begin transaction
    User Exists (0.2ms)  SELECT 1 AS one FROM "users" WHERE (LOWER("users"."email") = LOWER('example@railstutorial.org') AND "users"."id" != 1) LIMIT 1
    Binary data inserted for `string` type on column `password_digest`
    SQL (8.9ms)  UPDATE "users" SET "name" = ?, "email" = ?, "password_digest" = ?, "updated_at" = ? WHERE "users"."id" = 1  [["name", "Example User"], ["email", "example@railstutorial.org"], ["password_digest", "$2a$10$wBalA2UGtgZvIvQxYVJrYuPzM64i5u.DMh5UQa7En5MqPGNzD3fke"], ["updated_at", Fri, 14 Feb 2014 13:00:18 UTC +00:00]]
    (1.2ms)  commit transaction
    => true
    irb(main):006:0> exit
    Rubis:) bundle exec rake db:reset
    -- create_table("users", {:force=>true})
    -> 0.0123s
    -- add_index("users", ["email"], {:name=>"index_users_on_email", :unique=>true})
    -> 0.0015s
    -- initialize_schema_migrations_table()
    -> 0.0058s
    Rubis:) bundle exec rake test:prepare
    Rubis:) rails console
    Loading development environment (Rails 4.0.2)
    irb(main):001:0>  User.count
    (0.1ms)  SELECT COUNT(*) FROM "users"
    => 0
    irb(main):002:0> exit
    Rubis:) bundle exec rspec spec/
    No DRb server is running. Running in local process instead ...
    /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/activesupport-4.0.2/lib/active_support/dependencies.rb:223:in `load': /Users/Sedclerk/Documents/sample_app/sample_app/spec/requests/user_pages_spec.rb:7: syntax error, unexpected '.' (SyntaxError)
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
    Rubis:) bundle exec rspec spec/requests/user_pages_spec.rb -e "signup page"
    No DRb server is running. Running in local process instead ...
    /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `load': /Users/Sedclerk/Documents/sample_app/sample_app/spec/requests/user_pages_spec.rb:7: syntax error, unexpected '.' (SyntaxError)
	from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `block in load_spec_files'
	from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `each'
	from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `load_spec_files'
	from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/command_line.rb:22:in `run'
	from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:77:in `rescue in run'
	from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:73:in `run'
	from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:17:in `block in autorun'
    Rubis:) bundle exec rspec spec/requests/user_pages_spec.rb \
    > -e "signup with invalid information"
    No DRb server is running. Running in local process instead ...
    /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `load': /Users/Sedclerk/Documents/sample_app/sample_app/spec/requests/user_pages_spec.rb:7: syntax error, unexpected '.' (SyntaxError)
	from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `block in load_spec_files'
	from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `each'
	from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `load_spec_files'
	from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/command_line.rb:22:in `run'
	from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:77:in `rescue in run'
	from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:73:in `run'
	from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:17:in `block in autorun'
    Rubis:)  rails console
    Loading development environment (Rails 4.0.2)
    irb(main):001:0> user = User.new(name: "Foo Bar", email: "foo@invalid",password: "dude", password_confirmation: "dude")
    => #<User id: nil, name: "Foo Bar", email: "foo@invalid", created_at: nil, updated_at: nil, password_digest: "$2a$10$/HwUNscj7E/inpIo1ZoNvunEj4a7usJQ31KcvI0vdJUN...">
    irb(main):002:0> user.save
    (0.2ms)  begin transaction
        User Exists (0.2ms)  SELECT 1 AS one FROM "users" WHERE LOWER("users"."email") = LOWER('foo@invalid') LIMIT 1
        (0.1ms)  rollback transaction
        => false
        irb(main):003:0> user.errors.full_messages
        => ["Email is invalid", "Email is invalid", "Password is too short (minimum is 6 characters)"]
        irb(main):004:0> exit
        Rubis:) bundle exec rspec spec/requests/user_pages_spec.rb \
        > > -e "signup with valid information"
        No DRb server is running. Running in local process instead ...
        /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `load': cannot load such file -- /Users/Sedclerk/Documents/sample_app/sample_app/signup with valid information (LoadError)
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `block in load_spec_files'
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `each'
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/configuration.rb:819:in `load_spec_files'
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/command_line.rb:22:in `run'
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:77:in `rescue in run'
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:73:in `run'
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/rspec-core-2.13.1/lib/rspec/core/runner.rb:17:in `block in autorun'
        Rubis:) rails s
        => Booting WEBrick
        => Rails 4.0.2 application starting in development on http://0.0.0.0:3000
        => Run `rails server -h` for more startup options
        => Ctrl-C to shutdown server
        A server is already running. Check /Users/Sedclerk/Documents/sample_app/sample_app/tmp/pids/server.pid.
        Exiting
        Rubis:) rails console
        Loading development environment (Rails 4.0.2)
        irb(main):001:0> flash = { success: "It worked!", error: "It failed." }
        => {:success=>"It worked!", :error=>"It failed."}
        irb(main):002:0> flash.each do |key, value|
            irb(main):003:1* puts "#{key}"
            irb(main):004:1> puts "#{value}"
            irb(main):005:1> end
        success
        It worked!
        error
        It failed.
        => {:success=>"It worked!", :error=>"It failed."}
        irb(main):006:0> User.find_by(email: "example@railstutorial.org")
        User Load (0.1ms)  SELECT "users".* FROM "users" WHERE "users"."email" = 'example@railstutorial.org' LIMIT 1
        => nil
        irb(main):007:0> git add .
        irb(main):008:0* git commit -m "Finish user signup"
        SyntaxError: (irb):8: syntax error, unexpected tSTRING_BEG, expecting keyword_do or '{' or '('
        git commit -m "Finish user signup"
        ^
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/railties-4.0.2/lib/rails/commands/console.rb:90:in `start'
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/railties-4.0.2/lib/rails/commands/console.rb:9:in `start'
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/railties-4.0.2/lib/rails/commands.rb:62:in `<top (required)>'
        from bin/rails:4:in `require'
        from bin/rails:4:in `<main>'
        irb(main):009:0> git add .
        irb(main):010:0* git commit -m "Finish user signup"
        SyntaxError: (irb):10: syntax error, unexpected tSTRING_BEG, expecting keyword_do or '{' or '('
        git commit -m "Finish user signup"
        ^
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/railties-4.0.2/lib/rails/commands/console.rb:90:in `start'
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/railties-4.0.2/lib/rails/commands/console.rb:9:in `start'
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/railties-4.0.2/lib/rails/commands.rb:62:in `<top (required)>'
        from bin/rails:4:in `require'
        from bin/rails:4:in `<main>'
        irb(main):011:0> git commit -m "finish user signup"
        SyntaxError: (irb):11: syntax error, unexpected tSTRING_BEG, expecting keyword_do or '{' or '('
        git commit -m "finish user signup"
        ^
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/railties-4.0.2/lib/rails/commands/console.rb:90:in `start'
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/railties-4.0.2/lib/rails/commands/console.rb:9:in `start'
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/railties-4.0.2/lib/rails/commands.rb:62:in `<top (required)>'
        from bin/rails:4:in `require'
        from bin/rails:4:in `<main>'
        irb(main):012:0> git commit -a -m "Add SSL in production"
        SyntaxError: (irb):12: syntax error, unexpected tUMINUS, expecting keyword_do or '{' or '('
        git commit -a -m "Add SSL in production"
        ^
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/railties-4.0.2/lib/rails/commands/console.rb:90:in `start'
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/railties-4.0.2/lib/rails/commands/console.rb:9:in `start'
        from /Users/Sedclerk/.rbenv/versions/1.9.3-p392/lib/ruby/gems/1.9.1/gems/railties-4.0.2/lib/rails/commands.rb:62:in `<top (required)>'
        from bin/rails:4:in `require'
        from bin/rails:4:in `<main>'
        irb(main):013:0> exit
        Rubis:) git add .
        Rubis:) git commit -m "Finish user signup"
        [master 3a33765] Finish user signup
        14 files changed, 201 insertions(+), 10 deletions(-)
        create mode 100644 -e
        create mode 100644 app/views/shared/_error_messages.html.erb
        create mode 100644 app/views/users/show.html.erb
        create mode 100644 spec/factories.rb
        Rubis:) git checkout master
        Already on 'master'
        Your branch is ahead of 'origin/master' by 1 commit.
        Rubis:) git merge sign-up
        fatal: sign-up - not something we can merge
        Rubis:) git commit -a -m "Add SSL in production"
        # On branch master
        # Your branch is ahead of 'origin/master' by 1 commit.
        #
        nothing to commit (working directory clean)
        Rubis:) git push heroku
        fatal: 'heroku' does not appear to be a git repository
        fatal: Could not read from remote repository.
        
        Please make sure you have the correct access rights
        and the repository exists.
        Rubis:) heroku run rake db:migrate
        !    No app specified.
        !    Run this command from an app folder or specify which app to use with --app APP.
        Rubis:) heroku open
        
        !    No app specified.
        !    Run this command from an app folder or specify which app to use with --app APP.
        Rubis:) 
        Rubis:) heroku logs
        !    No app specified.
        !    Run this command from an app folder or specify which app to use with --app APP.
        Rubis:)
        
        Rubis:) git add .
        Rubis:) git status
        # On branch master
        # Changes to be committed:
        #   (use "git reset HEAD <file>..." to unstage)
        #
        #	new file:   chapter 7.rb
        #	modified:   sample_app
        #
        # Changes not staged for commit:
        #   (use "git add/rm <file>..." to update what will be committed)
        #   (use "git checkout -- <file>..." to discard changes in working directory)
        #   (commit or discard the untracked or modified content in submodules)
        #
        #	deleted:    old/sample_app
        #	deleted:    old/sample_app.rb
        #	modified:   sample_app (modified content)
        #
        Rubis:) git commit -m "Finish user signup"
        [master f628f62] Finish user signup
        2 files changed, 474 insertions(+), 1 deletion(-)
        create mode 100644 chapter 7.rb
        Rubis:) git push
        Counting objects: 4, done.
        Delta compression using up to 4 threads.
        Compressing objects: 100% (3/3), done.
        Writing objects: 100% (3/3), 4.46 KiB, done.
        Total 3 (delta 1), reused 0 (delta 0)
        To https://github.com/Sedclerk/sample_app.git
        1c1f32b..f628f62  master -> master
        Rubis:) git status
        # On branch master
        # Changes not staged for commit:
        #   (use "git add/rm <file>..." to update what will be committed)
        #   (use "git checkout -- <file>..." to discard changes in working directory)
        #   (commit or discard the untracked or modified content in submodules)
        #
        #	deleted:    old/sample_app
        #	deleted:    old/sample_app.rb
        #	modified:   sample_app (modified content)
        #
        no changes added to commit (use "git add" and/or "git commit -a")
        Rubis:) 

