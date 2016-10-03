# jQuery ->
#   $('body').prepend('<div id="fb-root"></div>')

#   $.ajax
#     url: "#{window.location.protocol}//connect.facebook.net/en_US/all.js"
#     dataType: 'script'
#     cache: true


# window.fbAsyncInit = ->
#   FB.init(appId: '1602849213349267', cookie: true)

#   $('#sign_in').click (e) ->
#     e.preventDefault()
#     FB.login (response) ->
#       window.location = '/auth/facebook/' if response.authResponse
#     # , scope: "name,email"

#   $('#sign_out').click (e) ->
#     FB.getLoginStatus (response) ->
#       FB.logout() if response.authResponse
#     true
