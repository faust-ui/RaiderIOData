var searchURL = window.location.search;
searchURL = searchURL.substring(1, searchURL.length);
var targetPageId = searchURL.split("&")[0].split("=")[1];

function get_center_up_data(ids) {
	var id = ids
	$.ajax({
		url: "/center_up",
		type: 'POST',
        async: false,
        dataType:'json',
		data:{
			"id": id,
		},
		success: function(data) {
			$("#cn1.num").html(data.nws)
			$("#cn2.num").html(data.pf)
			$("#cn3.num").html(data.tsw)
			$("#cn4.num").html(data.ha)
			$("#cn5.num").html(data.tsg)
			$("#cn6.num").html(data.tp)
			$("#cn7.num").html(data.dos)
			$("#cn8.num").html(data.sd)
			$("#cn9.num").html(data.mts)
			$("#cn10.num").html(data.sa)
	
		},
		error: function(xhr, type, errorThrown) {
			
		}
	})
				
}
get_center_up_data(targetPageId)

function echart_left(ids){
	var chartDom = document.getElementById('echart_left');
	var myChart = echarts.init(chartDom);
	var id = ids
	$.ajax({
		url: '/echart_left',
		data:{"id": id,},
		type: 'POST',
        async: false,
        dataType:'json',
        success:function (data) {
			names = data.names,
			tank = data.tank,
			dps = data.dps,
			healer = data.healer,
			option = {
				  tooltip: {
				    trigger: 'axis',
				    axisPointer: {
				      // Use axis to trigger tooltip
				      type: 'shadow' // 'shadow' as default; can also be 'line' or 'shadow'
				    }
				  },
				  legend: {
				    right: '10%',
				    "textStyle": {
				     "color": "rgba(255,255,255,1)",//图例文字
				        "fontSize":"16"
				    }
				  },
				  grid: {
				    left: '3%',
				    right: '4%',
				    bottom: '3%',
				    containLabel: true
				  },
				  xAxis: {
				    type: 'value',
				    axisLine: { lineStyle: { color: 'rgba(255,255,255,1)' } },
				    axisLabel:  { textStyle: {color: "rgb(255,255,255)", fontSize: '16' },}
				  },
				  yAxis: {
				    type: 'category',
				    splitLine: { show: true, lineStyle: { color: 'rgba(255,255,255,.1)' } }, //x轴线
				    data: names,
				    axisLabel:  { textStyle: {color: "rgb(255,255,255)", fontSize: '16' },}
				  },
				  series: [
				    {
				      name: 'dps',
				      type: 'bar',
				      stack: 'total',
				      itemStyle: {
				        color: '#67E0E3'
				      },
				      label: {
				        show: true
				      },
				      emphasis: {
				        focus: 'series'
				      },
				      data: dps
				    },
				    {
				      name: 'tank',
				      type: 'bar',
				      stack: 'total',
				      itemStyle: {
				        color: '#FFDB5C'
				      },
				      label: {
				        show: true
				      },
				      emphasis: {
				        focus: 'series'
				      },
				      data: tank
				    },
				    {
				      name: 'healer',
				      type: 'bar',
				      stack: 'total',
				      itemStyle: {
				        color: '#FF9F7F'
				      },
				      label: {
				        show: true
				      },
				      emphasis: {
				        focus: 'series'
				      },
				      data: healer
				    }
				  ]
				};
			
			option && myChart.setOption(option);
		}
	})
}
echart_left(targetPageId)

function echart_center(ids){
	var chartDom = document.getElementById('echart_center');
	var myChart = echarts.init(chartDom);
	var id = ids
	var option;
	$.ajax({
		url:'/echart_center',
		data:{
			"id": id,
		},
		type:'POST',
		async:false,
		dataType:'json',
		success:function(data){
			names = data.names;
			boss = data.boss;
			trush = data.trush;
			rates = data.rate;
			option = {
			  tooltip: {
			    trigger: 'axis',
			    axisPointer: {
			      lineStyle: {
			        color: '#ffffff'
			      }
			    }
			  },
			  legend: {
			    data: [{ name: '残暴' }, { name: '强悍' }, { name: '限时率' }],
			    top: '0%',
			    textStyle: {
			      color: 'rgba(255,255,255,1)', //图例文字
			      fontSize: '16'
			    }
			  },
			
			  xAxis: [
			    {
			      type: 'category',
			
			      data: names,
			      axisLine: { lineStyle: { color: 'rgba(255,255,255,.1)' } },
			      axisLabel: { textStyle: { color: 'rgb(255,255,255)', fontSize: '16' } }
			    }
			  ],
			  yAxis: [
			    {
			      type: 'value',
			      name: '次数',
			      min: 0,
			      max: 30,
			      interval: 10,
			      axisLabel: {
			        show: true
			      },
			      axisLine: { lineStyle: { color: 'rgba(255,255,255,1)' } }, //左线色
			      splitLine: { show: true, lineStyle: { color: 'rgba(255,255,255,1)' } } //x轴线
			    },
			    {
			      type: 'value',
			      name: '限时率',
			      show: true,
			      axisLabel: {
			        show: true
			      },
			      axisLine: { lineStyle: { color: 'rgba(255,255,255,1 )' } }, //右线色
			      splitLine: { show: true, lineStyle: { color: 'rgba(255,255,255,0.2)' } } //x轴线
			    }
			  ],
			  grid: {
			    top: '10%',
			    right: '30',
			    bottom: '30',
			    left: '30'
			  },
			  series: [
			    {
			      name: '残暴',
			
			      type: 'bar',
			      data: boss,
			      barWidth: 'auto',
			      itemStyle: {
			        normal: {
			          color: {
			            type: 'linear',
			            x: 0,
			            y: 0,
			            x2: 0,
			            y2: 1,
			            colorStops: [
			              {
			                offset: 0,
			                color: '#67E0E3'
			              },
			
			              {
			                offset: 1,
			                color: '#67E0E3'
			              }
			            ],
			            globalCoord: false
			          }
			        }
			      }
			    },
			    {
			      name: '强悍',
			      type: 'bar',
			      data: trush,
			      barWidth: 'auto',
			
			      itemStyle: {
			        normal: {
			          color: {
			            type: 'linear',
			            x: 0,
			            y: 0,
			            x2: 0,
			            y2: 1,
			            colorStops: [
			              {
			                offset: 0,
			                color: '#FFDB5C'
			              },
			              {
			                offset: 1,
			                color: '#FFDB5C'
			              }
			            ],
			            globalCoord: false
			          }
			        }
			      },
			      barGap: '0'
			    },
			    {
			      name: '限时率',
			      type: 'line',
			      yAxisIndex: 1,
			
			      data: rates,
			      lineStyle: {
			        normal: {
			          width: 2
			        }
			      },
			      itemStyle: {
			        normal: {
			          color: '#48f593'
			        }
			      },
			      smooth: true
			    }
			  ]
			};
			
			option && myChart.setOption(option);
		}
	})
}

echart_center(targetPageId)


function echart_right_up(ids){
	var chartDom = document.getElementById('echart_right_up');
	var myChart = echarts.init(chartDom);
	var id = ids
	$.ajax({
		url:'/right_up',
		data:{"id": id,},
		type:"POST",
		async: false,
		dataType: 'json',
		success:function(data){
			word_data = data.value;
			option = {
			  tooltip: {
			    trigger: 'item',
			    formatter: '{a} <br/>{b} : {c} ({d}%)'
			  },
			  
			  series: [
			    {
			      name: '词缀',
			      type: 'pie',
			      radius: [50, 150],
			      center: ['50%', '50%'],
			      roseType: 'area',
			      itemStyle: {
			        borderRadius: 8
			      },
			
			      data: word_data
			    }
			  ]
			};
			
			option && myChart.setOption(option);
		}
	})
	
}
echart_right_up(targetPageId)

function echart_right(ids){
	var chartDom = document.getElementById('echart_right');
	var myChart = echarts.init(chartDom);
	var id = ids;
	var option;
	$.ajax({
		url:'/echart_right',
		data:{"id": id,},
		type:"POST",
		async: false,
		dataType: 'json',
		success:function(data){
			info = data.datas;
			option = {
			  tooltip: {},
			  toolbox: {
			      show: true,
			      feature: {
			        mark: { show: true },
			        dataView: { show: true, readOnly: false },
			        restore: { show: true },
			        saveAsImage: { show: true }
			      }
			    },
			  radar: {
			    // shape: 'circle',
			    indicator: [
			      { name: '限时能力', max: 100 },
			      { name: 'AOE能力', max: 100 },
			      { name: '生存能力', max: 100 },
			      { name: '冲层能力', max: 100 },
			      { name: '团队配合能力', max: 100 },
			      { name: '单体输出能力', max: 100 }
			    ]
			  },
			  series: [
			    {
			      type: 'radar',
			      label: {
			        show: true
			      },
			      areaStyle: {},
			
			      data: [
			        {
			          value: info,
			          name: 'Actual Spending'
			        }
			      ]
			    }
			  ]
			};
			
			option && myChart.setOption(option);
			
		}
	})
}
echart_right(targetPageId)

function left_img(ids){
	let img = document.getElementById("img1");
	var id = ids
	$.ajax({
	    url: "/img",
	    type: "post",
	    data:{
			"id": id,
		},
	    success: function (r){
	        img.src = r;
	    },error:function (){
	        alert("角色信息图获取失败!");
	    }
	})
}
left_img(targetPageId)
