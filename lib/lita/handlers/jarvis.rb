require "jarvis/commands/merge"
require "jarvis/commands/bounce"
require "jarvis/mixins/fancy_route"

module Lita
  module Handlers
    class Jarvis < Handler
      extend ::Jarvis::Mixins::FancyRoute

      fancy_route("merge", ::Jarvis::Command::Merge, :command => true)
      fancy_route("bounce", ::Jarvis::Command::Bounce, :command => true, :pool => ::Jarvis::WorkPool::ADMINISTRATIVE)

      Lita.register_handler(self)
    end
  end
end
