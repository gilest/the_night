jQuery ->
  $('body').prepend('<div id="fb-root"></div>')
  window.env = $('body').data('env')

  $.ajax
    url: "#{window.location.protocol}//connect.facebook.net/en_US/all.js"
    dataType: 'script'
    cache: true


window.fbAsyncInit = ->
  appId = if env == 'production'
    '1532898173648258'
  else
    '1541839836087425'
  FB.init(appId: appId, cookie: true)

  $('#sign_in').click (e) ->
    e.preventDefault()
    FB.login (response) ->
      window.location = '/auth/facebook/callback' if response.authResponse

  $('#sign_out').click (e) ->
    FB.getLoginStatus (response) ->
      FB.logout() if response.authResponse
    true