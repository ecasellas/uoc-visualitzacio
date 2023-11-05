google.charts.load('current', {'packages':['timeline']});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
  var container = document.getElementById('timeline');
  var chart = new google.visualization.Timeline(container);
  var dataTable = new google.visualization.DataTable();

  dataTable.addColumn({ type: 'string', id: 'Pope'});
  dataTable.addColumn({ type: 'date', id: 'Start' });
  dataTable.addColumn({ type: 'date', id: 'End' });
  dataTable.addRows([
    [ 'Pius X',  new Date(1903, 8, 4), new Date(1914, 8, 20) ],
    [ 'Benedict XV', new Date(1914, 9, 3), new Date(1922, 1, 22) ],
    [ 'Pius XI',     new Date(1922, 2, 6), new Date(1939, 2, 10) ],
    [ 'Pius XII', new Date(1939, 3, 2),  new Date(1958, 10, 9) ],
    [ 'John XXIII', new Date(1958, 10, 28),  new Date(1963, 6, 3) ],
    [ 'Paul VI', new Date(1963, 6, 21),  new Date(1978, 8, 6) ],
    [ 'John Paul I', new Date(1978, 8, 26),  new Date(1978, 9, 28) ],
    [ 'John Paul II', new Date(1978, 10, 16),  new Date(2005, 4, 2) ],
    [ 'Benedict XVI', new Date(2005, 4, 19),  new Date(2013, 2, 28) ],
    [ 'Francis I', new Date(2013, 3, 13),  new Date(2023, 10, 9) ]]);

  chart.draw(dataTable, {hAxis: {gridlines: {count: 10}}, vAxis: {gridlines: {count: 10}}});
}
