var filter = (function($){

    return {
        init: function () {
            $('#dismissal').on('click', function(e){
                if ($(this).prop('checked')) {
                    $(this).val(1);
                } else {$(this).val(0)}
                $('form[name="filter"]').submit();
            })
    }
    }
})(jQuery);
