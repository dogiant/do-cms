<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>视频上传</title>
	<link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="//v3.bootcss.com/assets/css/docs.min.css">
	<style type="text/css">
	.text-danger{
		color: red;
	}
	.control-label{
		text-align: left !important; 
	}
	#resultBox {
		width: 100%;
		height: 300px;
		border: 1px solid #888;
		padding: 5px;
		overflow: auto;
		margin-bottom: 20px;
	}
	.uploaderMsgBox {
		width: 100%;
		border-bottom: 1px solid #888;
	}
	[act=cancel-upload]{
		text-decoration: none;
		cursor:pointer;
	}
	</style>
</head>
<body>
<div class="bs-docs-header" id="content">
	<div class="container">
		<h1>视频上传</h1>
	</div>
</div>
<div class="container bs-docs-container">
	<div class="row" style="padding:10px;">
		<p>
		提示：<br>
		1、点击“添加视频”添加视频文件，点击“添加封面”添加封面文件，然后点击“开始上传”按钮即可上传视频和封面。<br>
		2、取消上传为取消上传中的视频，上传成功的视频不能取消上传。
		</p>
	</div>
	

	<form id="form2">
		<input id="addVideo-file" type="file" style="display:none;"/>
		<input id="addCover-file" type="file" style="display:none;"/>
	</form>
	<div class="row" style="padding:10px;">
		<a id="addVideo" href="javascript:void(0);" class="btn btn-outline">添加视频</a>
		<a id="addCover" href="javascript:void(0);" class="btn btn-outline">添加封面</a>
		<a id="uploadFile" href="javascript:void(0);" class="btn btn-outline">开始上传</a>
	</div>

	<div class="row" id="resultBox"></div>
	
</div>
<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="http://imgcache.qq.com/open/qcloud/js/vod/crypto.js"></script>
<script src="http://imgcache.qq.com/open/qcloud/js/vod/sdk/ugcUploader.js"></script>
<script type="text/javascript">

	
	var index = 0;
	var cosBox = [];
	/** 
	 * 计算签名
	**/
	var getSignature = function(callback){
		$.ajax({
			url: '/cms/getSignature',
			type: 'POST',
			success: function(res){
				alert(1);
				console.log("res",res);
				callback(res);
			}
		});
	};

	/**
	 * 添加上传信息模块
	 */
	
	var addUploaderMsgBox = function(type){
		var html = '<div class="uploaderMsgBox" name="box'+index+'">';
		if(!type || type == 'hasVideo') {
			html += '视频名称：<span name="videoname'+index+'"></span>；' + 
				'计算sha进度：<span name="videosha'+index+'">0%</span>；' + 
				'上传进度：<span name="videocurr'+index+'">0%</span>；' + 
				'fileId：<span name="videofileId'+index+'">   </span>；' + 
				'上传结果：<span name="videoresult'+index+'">   </span>；<br>' + 
				'地址：<span name="videourl'+index+'">   </span>；'+
				'<a href="javascript:void(0);" name="cancel'+index+'" cosnum='+index+' act="cancel-upload">取消上传</a><br>';
		}
		
		if(!type || type == 'hasCover') {
			html += '封面名称：<span name="covername'+index+'"></span>；' + 
			'计算sha进度：<span name="coversha'+index+'">0%</span>；' + 
			'上传进度：<span name="covercurr'+index+'">0%</span>；' + 
			'上传结果：<span name="coverresult'+index+'">   </span>；<br>' + 
			'地址：<span name="coverurl'+index+'">   </span>；<br>' + 
			'</div>'
		}
		html += '</div>';
		
		$('#resultBox').append(html);
		return index++;
	};

	/** 
	 * 示例1：直接上传视频
	**/
	$('#uploadVideoNow-file').on('change', function (e) {
		var num = addUploaderMsgBox('hasVideo');
		var videoFile = this.files[0];
		$('#result').append(videoFile.name +　'\n');
		var resultMsg = qcVideo.ugcUploader.start({
		videoFile: videoFile,
		getSignature: getSignature,
		allowAudio: 1,
		success: function(result){
			if(result.type == 'video') {
				$('[name=videoresult'+num+']').text('上传成功');
				$('[name=cancel'+num+']').remove();
				cosBox[num] = null;
			} else if (result.type == 'cover') {
				$('[name=coverresult'+num+']').text('上传成功');
			}
		},
		error: function(result){
			if(result.type == 'video') {
				$('[name=videoresult'+num+']').text('上传失败>>'+result.msg);
			} else if (result.type == 'cover') {
				$('[name=coverresult'+num+']').text('上传失败>>'+result.msg);
			}
		},
		progress: function(result){
			if(result.type == 'video') {
				$('[name=videoname'+num+']').text(result.name);
				$('[name=videosha'+num+']').text(Math.floor(result.shacurr*100)+'%');
				$('[name=videocurr'+num+']').text(Math.floor(result.curr*100)+'%');
				$('[name=cancel'+num+']').attr('taskId', result.taskId);
				cosBox[num] = result.cos;
			} else if (result.type == 'cover') {
				$('[name=covername'+num+']').text(result.name);
				$('[name=coversha'+num+']').text(Math.floor(result.shacurr*100)+'%');
				$('[name=covercurr'+num+']').text(Math.floor(result.curr*100)+'%');
			}
			
		},
		finish: function(result){
			$('[name=videofileId'+num+']').text(result.fileId);
			$('[name=videourl'+num+']').text(result.videoUrl);
			if(result.message) {
				$('[name=videofileId'+num+']').text(result.message);
			}
		}
		});
		if(resultMsg){
			$('[name=box'+num+']').text(resultMsg);
		}
		$('#form1')[0].reset();
	});
	$('#uploadVideoNow').on('click', function () {
		$('#uploadVideoNow-file').click();
	});
	/*
	 * 取消上传绑定事件，示例一与示例二通用
	 */
	$('#resultBox').on('click', '[act=cancel-upload]', function() {
		var cancelresult = qcVideo.ugcUploader.cancel({
			cos: cosBox[$(this).attr('cosnum')],
			taskId: $(this).attr('taskId')
		});
		console.log(cancelresult);
	});


	/** 
	 * 示例2：上传视频+封面
	**/
	var videoFileList = [];
	var coverFileList = [];
	// 给addVideo添加监听事件
	$('#addVideo-file').on('change', function (e) {
		var videoFile = this.files[0];
		videoFileList[0] = videoFile;
		$('#result').append(videoFile.name +　'\n');

	});
	$('#addVideo').on('click', function () {
		$('#addVideo-file').click();
	});
	// 给addCover添加监听事件
	$('#addCover-file').on('change', function (e) {
		var coverFile = this.files[0];
		coverFileList[0] = coverFile;
		$('#result').append(coverFile.name +　'\n');

	});
	$('#addCover').on('click', function () {
		$('#addCover-file').click();
	});

	var startUploader = function(){
		if(videoFileList.length){
			var num = addUploaderMsgBox();
			if(!coverFileList[0]){
				$('[name=covername'+num+']').text('没有上传封面');
			}
			var resultMsg = qcVideo.ugcUploader.start({
				videoFile: videoFileList[0],
				coverFile: coverFileList[0],
				getSignature: getSignature,
				allowAudio: 1,
				success: function(result){
					if(result.type == 'video') {
						$('[name=videoresult'+num+']').text('上传成功');
						$('[name=cancel'+num+']').remove();
						cosBox[num] = null;
					} else if (result.type == 'cover') {
						$('[name=coverresult'+num+']').text('上传成功');
					}
				},
				error: function(result){
					if(result.type == 'video') {
						$('[name=videoresult'+num+']').text('上传失败>>'+result.msg);
					} else if (result.type == 'cover') {
						$('[name=coverresult'+num+']').text('上传失败>>'+result.msg);
					}
				},
				progress: function(result){
					if(result.type == 'video') {
						$('[name=videoname'+num+']').text(result.name);
						$('[name=videosha'+num+']').text(Math.floor(result.shacurr*100)+'%');
						$('[name=videocurr'+num+']').text(Math.floor(result.curr*100)+'%');
						$('[name=cancel'+num+']').attr('taskId', result.taskId);
						cosBox[num] = result.cos;
					} else if (result.type == 'cover') {
						$('[name=covername'+num+']').text(result.name);
						$('[name=coversha'+num+']').text(Math.floor(result.shacurr*100)+'%');
						$('[name=covercurr'+num+']').text(Math.floor(result.curr*100)+'%');
					}
				},
				finish: function(result){
					$('[name=videofileId'+num+']').text(result.fileId);
					$('[name=videourl'+num+']').text(result.videoUrl);
					if(result.coverUrl) {
						$('[name=coverurl'+num+']').text(result.coverUrl);
					}
					if(result.message) {
						$('[name=videofileId'+num+']').text(result.message);
					}
				}
			});
			if(resultMsg){
				$('[name=box'+num+']').text(resultMsg);
			}
		} else {
			alert("请添加视频");
			$('#result').append('请添加视频！\n');
		}
		
	}

	// 上传按钮点击事件
	$('#uploadFile').on('click', function () {
		var secretId = $('#secretId').val();
		var secretKey = $('#secretKey').val();
		startUploader();
		$('#form2')[0].reset();
	});

	/** 
	 * 示例3：直修改封面
	**/
	$('#changeCover-file').on('change', function (e) {
		var num = addUploaderMsgBox('hasCover');
		var changeCoverFile = this.files[0];
		var fileId = $('[name=fileId]').val();
		var resultMsg = qcVideo.ugcUploader.start({
		fileId: fileId,
		coverFile: changeCoverFile,
		getSignature: getSignature,
		success: function(result){
			if(result.type == 'video') {
				$('[name=videoresult'+num+']').text('上传成功');
			} else if (result.type == 'cover') {
				$('[name=coverresult'+num+']').text('上传成功');
			}
		},
		error: function(result){
			if(result.type == 'video') {
				$('[name=videoresult'+num+']').text('上传失败>>'+result.msg);
			} else if (result.type == 'cover') {
				$('[name=coverresult'+num+']').text('上传失败>>'+result.msg);
			}
		},
		progress: function(result){
			if(result.type == 'video') {
				$('[name=videoname'+num+']').text(result.name);
				$('[name=videosha'+num+']').text(Math.floor(result.shacurr*100)+'%');
				$('[name=videocurr'+num+']').text(Math.floor(result.curr*100)+'%');
			} else if (result.type == 'cover') {
				$('[name=covername'+num+']').text(result.name);
				$('[name=coversha'+num+']').text(Math.floor(result.shacurr*100)+'%');
				$('[name=covercurr'+num+']').text(Math.floor(result.curr*100)+'%');
			}
			
		},
		finish: function(result){
			$('[name=coverurl'+num+']').text(result.coverUrl);
			if(result.message) {
				$('[name=coverurl'+num+']').text(result.message);
			}
		}
		});
		if(resultMsg){
			$('[name=box'+num+']').text(resultMsg);
		}
		$('#form1')[0].reset();
	});
	$('#changeCover').on('click', function () {
		$('#changeCover-file').click();
	});
</script>
</body>
</html>

