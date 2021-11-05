$(document).ready(function(){
    $.ajax({
      url: "data.php",
      method: "GET",
      success: function(data) {
        console.log(data);
        var months = [];
        var total_amount = [];
        for(var i in data) {
            months.push(`Month ${data[i].months}`);
            total_amount.push(data[i].total_amount);
        }
  
        var chartdata = {
          labels: months,
          datasets : [
            {
              label: 'Total Sales per Month',
              backgroundColor: 'rgba(200, 200, 200, 0.75)',
              borderColor: 'rgba(200, 200, 200, 0.75)',
              hoverBackgroundColor: 'rgba(200, 200, 200, 1)',
              hoverBorderColor: 'rgba(200, 200, 200, 1)',
              data: total_amount
            }
          ]
        };
  
        var ctx = $("#canvasMonth");
  
        var barGraph = new Chart(ctx, {
          type: 'bar',
          data: chartdata
        });
      },
      
    });
  });