/** CHANGE THE BELOW DATE TO YOUR DUE DATE **/
var due_year = 2012;
var due_month = 7;
var due_day = 8;
/** END CHANGE DATE AREA **/
var pregnancy_length_days = 280; // 280 is 40 weeks
var pregnancy_length_weeks = Math.floor(pregnancy_length_days/7);
var weeks_current = 0;
$(function(){
    $('#due_date_date').html(due_day+'/'+due_month+'/'+due_year);
    var due_date = new Date();
    due_date.setMonth(due_month-1,due_day);
    due_date.setYear(due_year);
    var due_time = parseInt(due_date.getTime() / 1000);
    var now_date = new Date();
    var now_time = parseInt(now_date.getTime() / 1000);
    // how many seconds left in preg?
    var seconds_left = due_time - now_time;
    if(seconds_left < 0){
        // finished!
        $('#due_date_weeks').html(pregnancy_length_weeks);
    }else{
        var days_left = seconds_left / 86400;
        var weeks_left = days_left / 7;
        weeks_current = pregnancy_length_weeks - weeks_left;
        weeks_current = parseInt(weeks_current * 10) / 10;
        countup_prego(0);
    }
});
function countup_prego(c){
    if(c<weeks_current){
        c = c+0.1;
        $('#due_date_weeks').html(parseInt(c * 10) / 10);
        setTimeout(function(){
            countup_prego(c);
        },10);
    }else{
        $('#due_date_weeks').html(weeks_current);
    }
}