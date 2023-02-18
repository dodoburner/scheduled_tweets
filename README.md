Thing that I learned:

MODELS
- When creating a password_digest column and adding the has_secure_password method on the model, it generates virtual password and password confirmation atributes that are securely hashed in password_digest by running them through bycrpyt (uncomment the bycrpyt gem)
- You can add validations on the model and on the migration

DATABASE
- DON'T FORGET TO SETUP APP WITH POSTGRES!!
- rails db:migrate redo will run rails db:rollback and then migrate
- In the console you can run Model.errors.first to check for any error

VIEWS
- Partials are like components in react

ROUTES
- You can rename url names but have the same path name using "as: :whatever"

FLASHES
- You can declare flashes as a hash in the controller to display
- You can use flash.now to have it show up only once

DEBUGGIN
- You can use .inspect to debug variables