﻿try {


    var DefaultModule = angular.module('DashboardModule', ['angularMoment']);

    DefaultModule.controller('DashboardController', function ($scope) {


            $scope.allDonations = eval("(" + allDonations + ")");

            $scope.showMap = showMap;

            //****************************************************************************

            function showMap() {
                google.charts.load('current', { 'packages': ['map'] });
                google.charts.setOnLoadCallback(drawMap);

                function drawMap() {
                    var data = google.visualization.arrayToDataTable([
                      ['Country', 'Population'],
                      ['China', 'China: 1,363,800,000'],
                      ['India', 'India: 1,242,620,000'],
                      ['US', 'US: 317,842,000'],
                      ['Indonesia', 'Indonesia: 247,424,598'],
                      ['Brazil', 'Brazil: 201,032,714'],
                      ['Pakistan', 'Pakistan: 186,134,000'],
                      ['Nigeria', 'Nigeria: 173,615,000'],
                      ['Bangladesh', 'Bangladesh: 152,518,015'],
                      ['Russia', 'Russia: 146,019,512'],
                      ['Japan', 'Japan: 127,120,000']
                    ]);

                    var options = { showTip: true };

                    var map = new google.visualization.Map(document.getElementById('chart_div'));

                    map.draw(data, options);
                };
            }


        });



} catch (e) { console.log(e); }