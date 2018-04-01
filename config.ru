require './config/environment'

use Rack::MethodOverride
use VotesController
use CommentsController
use UsersController
use PostsController
run ApplicationController
