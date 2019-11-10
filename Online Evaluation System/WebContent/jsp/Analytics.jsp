<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="./assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Analytics Page
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../MaterialKitHomePage/assets/css/material-kit.css?v=2.0.5" rel="stylesheet" />
  <link rel="stylesheet" href="../css/Analytics.css">
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart1);
    var value1;
    var value2;
    function drawChart1() {
      var data = new google.visualization.DataTable();
      data.addColumn('string', 'Subject');
      data.addColumn('number', 'Marks');

      var TechnicalData = '[["C",21],["C++",25],["DS",19],["JS",32],["DB",40]]';
      data.addRows(JSON.parse(TechnicalData));

      var options = {
        title: 'My Evaluation Scores'
      };
      var chart = new google.visualization.PieChart(document.getElementById('piechart'));

      function selectHandler() {
        var selectedItem = chart.getSelection()[0];
        if(selectedItem){

          var value1 = data.getValue(selectedItem.row , 0);
          var value2 = data.getValue(selectedItem.row,1);
          // alert("The user has selected "+" "+value1);
          // alert("The user has selected "+" "+value2);
          document.getElementById('clickedcontent1').textContent ="Subject:" + value1;
          document.getElementById('clickedcontent2').textContent = "Marks:" + value2;
          drawChart2();
        }
      }
      google.visualization.events.addListener(chart,'select',selectHandler);
      chart.draw(data, options);
    }
  </script>

  <script type="text/javascript">
google.charts.load("current",{'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart2);
function drawChart2() {
// alert("drawChart2    " + value1);

var data = new google.visualization.DataTable();
data.addColumn('string', 'Topics');
data.addColumn('number', 'Marks');

var stringDataC = '[["Basic Functions",4],["Operators",6],["Pointers",3],["File Handing",2],["overloading",5]]';
var stringDataCPP = '[["Basic Functions",2],["Operators",4],["Pointers",6],["File Handing",1],["overloading",5]]';
var stringDataDS = '[["Basic Functions",1],["Operators",5],["Pointers",2],["File Handing",6],["overloading",2]]';
var stringDataJS = '[["Basic Functions",6],["Operators",5],["Pointers",3],["File Handing",2],["overloading",4]]';
var stringDataDB= '[["Basic Functions",3],["Operators",5],["Pointers",2],["File Handing",4],["overloading",6]]';

if (value1=='C') {
data.addRows(JSON.parse(stringDataC));
}
else if (value1=='C++') {
 data.addRows(JSON.parse(stringDataCPP));
}
else if (value1=='DS') {
 data.addRows(JSON.parse(stringDataDS));
}
else if (value1=='JS') {
 data.addRows(JSON.parse(stringDataJS));
}
else if (value1=='DB') {
 data.addRows(JSON.parse(stringDataDB));
}

  var options = {
    title: 'Your Topicwise score in Evaluations',
     width: 400,
     height: 300,
  };
  var chart = new google.visualization.BarChart(document.getElementById('barchart'));
  chart.draw(data, options);
}
</script>
<!-- Script for GA Section -->
<script type="text/javascript">
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart1);
    var value3;
    var value4;
    function drawChart1() {
      var data = new google.visualization.DataTable();
      data.addColumn('string', 'Subject');
      data.addColumn('number', 'Marks');

      var GAData = '[["LR",30],["QA",26],["VR",39],["VA",32]]';
      data.addRows(JSON.parse(GAData));

      var options = {
        title: 'My Evaluation Scores'
      };
      var chart = new google.visualization.PieChart(document.getElementById('piechart2'));

      function selectHandler() {
        var selectedItem = chart.getSelection()[0];
        if(selectedItem){
          value3 = data.getValue(selectedItem.row , 0);
            value4 = data.getValue(selectedItem.row,1);
          alert("The user has selected "+" "+value3);
          alert("The user has selected "+" "+value4);
          document.getElementById('clickedcontent3').textContent ="Subject:" + value3;
          document.getElementById('clickedcontent4').textContent = "Marks:" + value4;
          drawChart2();
        }
      }
      google.visualization.events.addListener(chart,'select',selectHandler);
      chart.draw(data, options);
    }

  </script>
  <script type="text/javascript">
google.charts.load("current",{'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart2);
function drawChart2() {
// alert("drawChart2    " + value1);

var data = new google.visualization.DataTable();
data.addColumn('string', 'Topics');
data.addColumn('number', 'Marks');

var stringDataLR= '[["Directions",4],["Blood Relations ",6],["Sequence and Series",3],["coding and Decodeing",2]]';
var stringDataQA = '[["Calender",2],["Time and Works",4],["Ratio and proportion",6],["Mixture and alligation",1]]';
var stringDataVR = '[["XYZ",1],["ABC",5],["pqr",2],["xasd",6]]';
var stringDataVA = '[["sad",3],["khj",1],["agr",6],["gsdf",4]]';


if (value3=='LR') {
data.addRows(JSON.parse(stringDataLR));
}
else if (value3=='QA') {
 data.addRows(JSON.parse(stringDataQA));
}
else if (value3=='VR') {
 data.addRows(JSON.parse(stringDataVR));
}
else if (value3=='VA') {
 data.addRows(JSON.parse(stringDataVA));
}

  var options = {
    title: 'Your Topicwise score in Evaluations',
     width: 400,
     height: 300,
  };
  var chart = new google.visualization.BarChart(document.getElementById('barchart2'));
  chart.draw(data, options);
}
</script>

</head>
<body>
  <div class="row main-row" >
    <div class="col-sm-6 col-md-12 col-lg-12 col-xl-12 main-col">

      <div class="row row-header-1">
        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 col-header-1">
          <div class="Rule-content-1">
            <div class="card card-plain">
              <div class="card card-header card-header-primary">
                <h3 class="card-title text-align mr-auto ml-auto">Analytics Section</h3>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row row-header-2">
        <div class="card card-plain">
          <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8 col-header-2" id="result-header-card2" style="margin:auto;">
            <div class="card card-header card-header-info">
              <h3 class="card-title text-align mr-auto ml-auto">Marks of all Evaluation</h3>
            </div>
          </div>
        </div>
      </div>
      <!-- Inner Header  -->
      <div class="row row-inheader-1">

        <div class="col-md-6 col-inheader-1">
          <div class="card card-plain">
            <div class="card card-header card-header-danger">
              <h3 class="card-title text-align mr-auto ml-auto">Technical Evaluation</h3>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-inheader-1" >
          <div class="card card-plain">
            <div class="card card-header card-header-rose">
              <h3 class="card-title text-align mr-auto ml-auto">General Aptitude Evaluation</h3>
            </div>
          </div>
        </div>
      </div>
      <!-- Natours Content -->
      <div class="row">
        <div class="col-md-12">
          <div class="main-body">

            <section class="section-book" id="Tech">
              <div class="row">
                <div class="left-side-heading">
                  <h2>Technical Section</h2>
                </div>
                <div class="book">
                  <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                      <div class="book__form">
                        <form action="#" class="form">
                          <div class="row">
                            <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5">
                              <div id="piechart" style="width: 400px; height: 300px;" class="chart"></div>
                            </div>
                            <div class="col-md-6" >
                              <div class="right-side-contents">
                                <div class="hover-content" >
                                  <h2 align="center">Contents</h2>
                                  <div class="row">
                                    <h3 id="graph-content"></h3>
                                    <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5">
                                      <div class="right-side-inner-contents">
                                        <h5 id="clickedcontent1"></h5>
                                        <h5 id="clickedcontent2"></h5>
                                      </div>
                                      <div class="bar-graph">
                                        <div id="barchart"style="width: 300px;height:200px;"></div>
                                      </div>
                                    </div>

                                  </div>
                                </div>
                              </div>

                            </div>
                          </div>
                        </form>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </section>
          </div>
        </div>
      </div>

      <!-- For GA Section -->
      <div class="row" id="GA">
        <div class="col-md-12">
          <div class="main-body">

            <section class="section-book">
              <div class="row">
                <div class="left-side-heading">
                  <h2>General Aptitude Section</h2>
                </div>
                <div class="book">
                  <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                      <div class="book__form">
                        <form action="#" class="form">
                          <div class="row">
                            <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5">
                              <div id="piechart2" style="width: 400px; height: 300px;" class="chart"></div>
                            </div>
                            <div class="col-md-6" >
                              <div class="right-side-contents">
                                <div class="hover-content" >
                                  <h2 align="center">Contents</h2>
                                  <div class="row">
                                    <h3 id="graph-content"></h3>
                                    <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5">
                                      <div class="right-side-inner-contents">
                                        <h5 id="clickedcontent3"></h5>
                                        <h5 id="clickedcontent4"></h5>
                                      </div>
                                      <div class="bar-graph">
                                        <div id="barchart2"style="width: 300px;height:200px;"></div>
                                      </div>
                                    </div>

                                  </div>
                                </div>
                              </div>

                            </div>
                          </div>
                        </form>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </section>
          </div>
        </div>
      </div>

    </div>
  </div>
  <script>

    document.getElementById("Tech").style.display = "none";
    document.getElementById("GA").style.display = "none";
    //code to check whether student has given evaluation for Technical or General aptitude section:
      var evaluationid = 2 ;

      if (evaluationid==1) {
        document.getElementById("Tech").style.display = "block";
      }
      else if(evaluationid==2){
        document.getElementById("GA").style.display = "block";
      }
      else if(evaluationid==1 && evaluationid == 2){
        document.getElementById("Tech").style.display = "block";
        document.getElementById("GA").style.display = "block";
      }
  </script>
</body>
</html>
