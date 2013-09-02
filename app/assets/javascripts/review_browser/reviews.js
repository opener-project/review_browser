$(function() {
    /* Convenience for forms or links that return HTML from a remote ajax call.
    The returned markup will be inserted into the element id specified.
     */
    $('form[data-update-target]').bind('ajax:success', function(evt, data) {
      alert('clicked');
        var target = $(this).data('update-target');
        $('#' + target).html(data);
    });

    domains = window.location.search.split("=")[1].split(",")
    for(i=0; i < domains.length; i++){
      console.log(domains[i]);
      $('span[data-property="'+domains[i]+'"]').addClass("domain");
    };
});
