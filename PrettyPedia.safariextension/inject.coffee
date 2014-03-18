$(document).ready ->
  # Mofidy edit links on subheadings
  $("#content .editsection").each (i, node) ->
    url = $(node).find("a").attr("href")
    $(node).empty()
    $(node).click (e) ->
      window.location.href = url

  $("#siteSub").remove()
  $('.searchButton').remove()

  # Main menu
  menu = $("<div>").attr("id", "menu").prependTo("body")
  $("<div>").addClass("logo").click(-> location.href = 'http://wikipedia.org').appendTo menu
  $('#p-navigation ul').clone().appendTo menu
  $('#menu #n-randompage, #menu #n-sitesupport').remove()
