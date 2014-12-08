# encoding: utf-8

# # Modules: Mercural
# Adds settings and tasks related to managing Mercurial.
#
#     require 'mina/mercurial'

# ## Settings
# Any and all of these settings can be overriden in your `deploy.rb`.

# ### branch
# Sets the branch to be deployed.

set_default :branch, 'default'

namespace :mercurial do
  # ## Deploy tasks
  # These tasks are meant to be invoked inside deploy scripts, not invoked on
  # their own.

  # ### mercurial:clone
  # Clones the Mercurial repository. Meant to be used inside a deploy script.

  desc "Clones the Mercurial repository to the release path."
  task :clone do
    if commit?
      error "The Mercurial option `:commit` has now not supported."
      error "Please use `:revision` or `:branch` instead."
      exit
    end

    clone = if revision?
      %[
        echo "-----> Using mercurial commit '#{revision}'" &&
        #{echo_cmd %[mercurial clone "#{repository!}" -r #{revision} .]}
      ]
    else
      %{
        echo "-----> Cloning the Mercurial repository" &&
        #{echo_cmd %[hg clone "#{repository!}" -r #{branch} .]}
      }
    end

    status = %[
      echo "-----> Using this mercurial revision" &&
      echo &&
      #{echo_cmd %[hg log -l 1]} &&
      #{echo_cmd %[rm -rf .hg]} &&
      echo
    ]

    queue clone + status
  end
end
