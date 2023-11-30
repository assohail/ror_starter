class ApplicationController < ActionController::Base
    before_action :message_before_action

    # skip_after_action :message_after_action

    def message_before_action
        puts "I am inherited before action filter."
    end

    def message_after_action
        puts "I am inherited after action filter."
    end
end
