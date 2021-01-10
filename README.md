Import all relevant retailers/dealers from Salesforce into a local database

```ruby
bundle exec rake salesforce:import_all_accounts
```

Synchronize all retailers

```ruby
bundle exec rake salesforce:sync_retailers
```

Access

```sh
http://localhost:3000/v1/retailers
```
