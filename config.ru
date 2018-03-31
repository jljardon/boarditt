require './config/environment'

use Rack::MethodOverride
use CommentsController
use UsersController
use PostsController
run ApplicationController
