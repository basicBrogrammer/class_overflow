

RSpec.configure do |config|

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
    FactoryGirl.reload
    #TODO clean FactoryGirl.reload
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
    FactoryGirl.reload
  end

  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :truncation
    FactoryGirl.reload

  end

  config.before(:each) do
    DatabaseCleaner.start
    FactoryGirl.reload
  end

  config.after(:each) do
    DatabaseCleaner.clean
    FactoryGirl.reload
  end
end