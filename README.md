Thing that I learned:

MODELS
- When creating a password_digest column and adding the has_secure_password method on the model,
it generates virtual password and password confirmation attributes that are securely hashed in password_digest
by running them through bcrypt (uncomment the bcrypt gem)
- You can add validations on the model and on the migration
- Creating a Current model can help us set attributes that are set for that request, for example
user, timezone etc..

DATABASE
- DON'T FORGET TO SETUP APP WITH POSTGRES!!
- rails db:migrate redo will run rails db:rollback and then migrate
- In the console you can run Model.errors.first to check for any error

VIEWS
- Partials are like components in react

ROUTES
- You can rename url names but have the same path name using "as: :whatever"

CONTROLLERS
- Instance variables (ones with @) can be used in views apart from regular variables that are only used
inside that method where it was defined
- When using params.require(:user) it is the same as using params[:user]
except require will raise an error if user not found
- Model.find will throw an error if it cant find the record in the DB, it is
used for when we are sure it should exist. But find_by will not
- @user.authenticate is a method provided by adding has_secure_password to the model

FORMS
- When adding a model to the form_with helper it automatically looks for route with that model,
but you can change the path by adding a url option to it
- Add data: {turbo: false} on forms, also add status: :unprocessable_entity when rendering after
failed save

FLASHES
- You can declare flashes as a hash in the controller to display
- You can use flash.now to have it show up only once

DEBUGGING
- You can use .inspect to debug variables inside html