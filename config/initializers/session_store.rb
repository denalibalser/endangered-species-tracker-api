#part of app where we specify the value of the cookie that we store in frontend
# if Rails.env.production == 'production'
#     Rails.application.config.session_store :cookie_store, :key => '_endangered_species_tracker'#,domain: will add domain for deployment here

# else 
    Rails.application.config.session_store :cookie_store, :key => '_endangered_species_tracker'

# end 