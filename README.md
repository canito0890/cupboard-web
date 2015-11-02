# Cupboard Web App

## Versions

- Ruby 2.2.1
- Rails 4.2.3
- PostgreSQL 9.3.1

## Configuration

Should take care of project gem dependencies:
```sh
bundle
```

## Database Configuration

### PostgreSQL Specific

Create user and grant privileges:
```sql
CREATE USER cupboard;
ALTER ROLE cupboard CREATEDB;
```

## Database Init

Create DB:
```rake
rake db:create
```

Apply Migrations:
```rake
rake db:migrate
```

## Testing Suite

### RSpec

TODO

## Services (job queues, cache servers, search engines, etc.)

None yet.

## Deployment Instructions

### Database Init (Should be run only once for fresh install):

#### PostgreSQL

```sql
ALTER ROLE cupboard WITH PASSWORD '<prod_env_password>';
```

TODO
