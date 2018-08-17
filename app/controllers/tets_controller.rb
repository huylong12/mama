class TetsController < ApplicationController
  require 'git'
  before_action :config_git
  before_action :read_git
  def index
    
  end

  def config_git
    Git.configure do |config|

    # If you need to use a custom SSH script
    config.git_ssh = 'git@github.com:huylong12/mama.git'
    end
  end

  def commit
    
  end

  def read_git
     
    g = Git.open(working_dir = '\Sites\xxx', :log => Logger.new(STDOUT))

    # g.add('vendor/')
    # debugger
    # g.commit('dsadasdasdas')
    # g.branch('new_branch11').checkout
    # debugger
    # g.pull
    g.push
  end

end
