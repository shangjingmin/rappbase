// common js

// jquery
$(document).ready(function(){
    var dp_option = {dateFormat: "yy-mm-dd",timeFormat: "HH:mm:ss.ic"};
    $(".date-picker").datepicker(dp_option);
    $(".time-picker").timepicker(dp_option);
    $(".datetime-picker").datetimepicker(dp_option);
    $(".date-picker, .time-picker, .datetime-picker").each(function(){
      $(this).datepicker('setDate', (new Date($(this).val().replace(/-/g, "/"))))
    });
})
