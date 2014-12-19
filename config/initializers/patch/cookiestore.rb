# # require 'logger'
# module ActionDispatch
#   module Session
#     class CookieStore
#       p "Hello CookieStore,I am Coming..."
#       def initialize(app, options={})
#         p app
#         p '.......................'
#         p options
#         super(app, options.merge!(:cookie_only => true))
#       end
#       def self.cookiestoretest
#         p "Cookie Store, I am in your inner"
#       end
#     end
#   end
# end

# ActionDispatch::Session::CookieStore.class_eval do
#   def set_session(env, sid, session_data, options)
#     binding.pry
#     session_data["session_id"] = sid
#     session_data
#   end
# end
