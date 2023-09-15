
action_url="sql_editor.php"



function sql_editor(){
    var data = {
        "sql_editor": 1
    }
    modal_open("lg", "SQL Editor");
    loader("modal_lg_body");
    $.ajax({
        type: 'POST',
        url: action_url,
        data:data,
        success: function(response) {
           set_html("modal_lg_body",response);
        }
    });  
}
function sql_editor_run(){
  sql=document.getElementById("sql_editor").value;
  var data = {
        "sql_editor_run": sql
  }
  $.ajax({
        type: 'POST',
        url: action_url,
        data:data,
        success: function(response) {
           document.getElementById("sql_editor_output").innerHTML=response;
        }
  });  

}
