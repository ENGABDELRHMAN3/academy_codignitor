<?php
$full_page = isset($full_page) ? $full_page : false;
$lesson_thumbnail_url = $this->crud_model->get_lesson_thumbnail_url($lesson_id);
$get_lesson_type = get_lesson_type($lesson_details['id']);
// print_r($get_lesson_type);die;

?>
<style>
	.center-block{
    width: 100%;
}
h2 {
    color: #AAAAAA;
    font-weight: normal;
}
.bg-for-submit-name
{
    background: url('https://lh4.ggpht.com/GLT1kYMvi4oiguL9FOc1eM5q7sW0AvVJNWyBZ26iMq-BSm3Kpi9CPDR2UGoVlYrVwA=h900') fixed;
    background-size: cover;
    padding: 0;
    margin: 0;
}
.margin-top{
    margin-top: 270px;
}

.wrap
{
    width: 100%;
    height: 100%;
    min-height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    z-index: 99;
}

p.form-title
{
    font-family: 'Open Sans' , sans-serif;
    font-size: 20px;
    font-weight: 600;
    text-align: center;
    color: #FFFFFF;
    margin-top: 5%;
    text-transform: uppercase;
    letter-spacing: 4px;
}

form
{
    width: 250px;
    margin: 0 auto;
}

form.login input[type="text"], form.login input[type="password"]
{
   width: 100%;
    margin: 0;
    padding: 5px 10px;
    background: #fff;
    border: 0;
    border-bottom: 3px solid #75ba48;
    outline: 0;
    font-size: 15px;
    font-weight: 400;
    letter-spacing: 1px;
    margin-bottom: 10px;
    color: #000;
    outline: 0;

}

form.login input[type="submit"]
{
    width: 100%;
    font-size: 14px;
    text-transform: uppercase;
    font-weight: 500;
    margin-top: 16px;
    outline: 0;
    cursor: pointer;
    letter-spacing: 1px;
}

form.login input[type="submit"]:hover
{
    transition: background-color 0.5s ease;
}

.btn-success {
    color: #fff;
    background-color: #75ba48;
    border-color: #75ba48;
    width: 100%;
    /* font-weight: 600 !important; */
    padding: 7px 10px;
    font-size: 15px !important;
    border-radius: 0px;
    word-spacing: 4px;
    letter-spacing: 1px;

}
.btn-success:hover {
    color: #fff !important;
    background-color: #2FC0AE !important;
    border-color: #2FC0AE !important;
}
form.login label, form.login a
{
    font-size: 12px;
    font-weight: 400;
    color: #FFFFFF;
}

form.login a
{
    transition: color 0.5s ease;
}

form.login a:hover
{
    color: #2ecc71;
}

.pr-wrap
{
    width: 100%;
    height: 100%;
    min-height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    z-index: 999;
    display: none;
}

.show-pass-reset
{
    display: block !important;
}

.pass-reset
{
    margin: 0 auto;
    width: 250px;
    position: relative;
    margin-top: 22%;
    z-index: 999;
    background: #FFFFFF;
    padding: 20px 15px;
}

.pass-reset label
{
    font-size: 12px;
    font-weight: 400;
    margin-bottom: 15px;
}

.pass-reset input[type="email"]
{
    width: 100%;
    margin: 5px 0 0 0;
    padding: 5px 10px;
    background: 0;
    border: 0;
    border-bottom: 1px solid #000000;
    outline: 0;
    font-style: italic;
    font-size: 12px;
    font-weight: 400;
    letter-spacing: 1px;
    margin-bottom: 5px;
    color: #000000;
    outline: 0;
}

.pass-reset input[type="submit"]
{
    width: 100%;
    border: 0;
    font-size: 14px;
    text-transform: uppercase;
    font-weight: 500;
    margin-top: 10px;
    outline: 0;
    cursor: pointer;
    letter-spacing: 1px;
}

/*----------quiz.css---------------*/


.loanParamsLoader {
    top: 143px;
    margin: auto;
    position: absolute;
    right: 17%;
    width: 135%;
}
.question{
    background: #75ba48;
    padding: 20px;
    color: #fff;
    border-bottom-right-radius: 55px;
    border-top-left-radius: 55px;
}

#qid{
    margin-right: 22px;
    background-color: #ffffff;
    color: #aaaaaa;
}
.container ul{
  list-style: none;
  margin: 0;
  padding: 0;
}


ul li{
  color: #AAAAAA;
  display: block;
  position: relative;
  float: left;
  width: 100%;
  height: 100px;
  border-bottom: 1px solid #111111;
  text-align:-webkit-center;
}

ul li input[type=radio]{
  position: absolute;
  visibility: hidden;
}

ul li label{
  display: block;
  position: relative;
  font-weight: 300;
  font-size: 1.35em;
  padding: 25px 25px 25px 80px;
  margin: 10px auto;
  height: 30px;
  z-index: 9;
  cursor: pointer;
  -webkit-transition: all 0.25s linear;
}

ul li:hover label{
    color: #198754;
}

ul li .check{
  display: block;
  position: absolute;
  border: 5px solid #AAAAAA;
  border-radius: 100%;
  height: 30px;
  width: 30px;
  top: 30px;
  left: 20px;
    z-index: 5;
    transition: border .25s linear;
    -webkit-transition: border .25s linear;
}

ul li:hover .check {
  border: 5px solid #FFFFFF;
}

ul li .check::before {
  display: block;
    position: absolute;
    content: '';
    border-radius: 100%;
    height: 14px;
    width: 14px;
    top: 3px;
    left: 3px;
  margin: auto;
    transition: background 0.25s linear;
    -webkit-transition: background 0.25s linear;
}

input[type=radio]:checked ~ .check {
  border: 5px solid #00FF00;
}

input[type=radio]:checked ~ .check::before{
  background: #00FF00;/*attr('data-background');*/
}

input[type=radio]:checked ~ label{
  color: #00FF00;
}

#result-of-question th{
  text-align: center;
    background: #75ba48;
    color: #fff;
    padding: 18px;
    font-size: 18px;
    border: none;
}
#result-of-question  td{
  text-align: center;
    color: #222;
    background-color: #fff;
    padding: 18px;
    font-size: 15px;
    font-weight: 600;
    border: 1px solid #75ba48;
}
.label-warning{
	padding: 5px;
    border-radius: 50%;
}
#totalCorrect{
    color: #fff;
    background: #75ba48;
    padding: 22px 20px;
    border-radius: 1px;
    font-stretch: expanded;
    font-size: 28px;
    font-weight: bold;
    border-top-right-radius: 25px;
    border-top-left-radius: 25px;  
}
#alert{
    /* Position fixed */
    position:fixed;
    /* Center it! */
    top: 50%;
    left: 50%;
    margin-top: -50px;
    margin-left: -100px;
}
/*----------riple bubble-----------------*/
ul {
    margin: 0 auto;
}
/*.ink styles - the elements which will create the ripple effect. The size and position of these elements will be set by the JS code. Initially these elements will be scaled down to 0% and later animated to large fading circles on user click.*/
.ink {
    display: inline; 
    position: absolute;
    background: #75ba48;
    border-radius: 100%;
    transform: scale(0);
}
.element-animation{
	color: #111111;
}
/*animation effect*/
.ink.animate {animation: ripple 0.65s linear;}
@keyframes ripple {
    /*scale the element to 250% to safely cover the entire link and fade it out*/
    100% {opacity: 0; transform: scale(2.5);}
}


</style>

<?php if ($get_lesson_type == 'youtube_video_url'): ?>
	<div class="p-3 <?php if ($full_page)
		echo 'bg-black'; ?>">
		<div class="plyr__video-embed " id="player">
			<iframe height="500"
				src="<?php echo $lesson_details['video_url']; ?>?origin=https://plyr.io&amp;iv_load_policy=3&amp;modestbranding=1&amp;playsinline=1&amp;showinfo=0&amp;rel=0&amp;enablejsapi=1"
				allowfullscreen allowtransparency allow="autoplay"></iframe>
		</div>
	</div>
	<?php include "plyr_config.php"; ?>
<?php elseif ($get_lesson_type == 'google_drive_video_url'): ?>
	<?php
	$url_array_1 = explode("/", $lesson_details['video_url'] . '/');
	$url_array_2 = explode("=", $lesson_details['video_url']);
	$video_id = null;
	if ($url_array_1[4] == 'd'):
		$video_id = $url_array_1[5];
	else:
		$video_id = $url_array_2[1];
	endif; ?>
	<div class="p-3 <?php if ($full_page)
		echo 'bg-black'; ?>">
		<video id="player" playsinline controls>
			<source class="remove_video_src"
				src="https://www.googleapis.com/drive/v3/files/<?php echo $video_id; ?>?alt=media&key=<?php echo get_settings('youtube_api_key'); ?>"
				type="video/mp4">
			<?php if ($lesson_details['caption'] != "" && file_exists('uploads/captions/' . $lesson_details['caption'])): ?>
				<track kind="captions" label="Caption"
					src="<?php echo base_url('uploads/captions/' . $lesson_details['caption']); ?>" srclang="en" default />
			<?php endif; ?>
		</video>
	</div>
	<?php include "plyr_config.php"; ?>
<?php elseif ($get_lesson_type == 'vimeo_video_url'): ?>
	<?php $video_details = $this->video_model->getVideoDetails($lesson_details['video_url']);
	$video_id = $video_details['video_id']; ?>
	<div class="p-3 <?php if ($full_page)
		echo 'bg-black'; ?>">
		<div class="plyr__video-embed" id="player">
			<iframe height="500"
				src="https://player.vimeo.com/video/<?php echo $video_id; ?>?loop=false&amp;byline=false&amp;portrait=false&amp;title=false&amp;speed=true&amp;transparent=0&amp;gesture=media"
				allowfullscreen allowtransparency allow="autoplay"></iframe>
		</div>
	</div>
	<?php include "plyr_config.php"; ?>
<?php elseif ($get_lesson_type == 'amazon_video_url' || $get_lesson_type == 'wasabi_video_url' || $get_lesson_type == 'academy_cloud' || $get_lesson_type == 'html5_video_url'): ?>
	<div class="p-3 <?php if ($full_page)
		echo 'bg-black'; ?>">
		<video poster="<?php echo $lesson_thumbnail_url; ?>" id="player" playsinline controls>
			<source class="remove_video_src" src="<?php echo $lesson_details['video_url']; ?>" type="video/mp4">
			<?php if ($lesson_details['caption'] != "" && file_exists('uploads/captions/' . $lesson_details['caption'])): ?>
				<track kind="captions" label="Caption"
					src="<?php echo base_url('uploads/captions/' . $lesson_details['caption']); ?>" srclang="en" default />
			<?php endif; ?>
		</video>
	</div>
	<?php include "plyr_config.php"; ?>
<?php elseif ($get_lesson_type == 'video_file'): ?>
	<div class="p-3 <?php if ($full_page)
		echo 'bg-black'; ?>">
		<video poster="<?php echo $lesson_thumbnail_url; ?>" id="player" playsinline controls>
			<source
				src="<?php echo site_url('files?course_id=' . $course_details['id'] . '&lesson_id=' . $lesson_details['id'] . '&type=video&ext=mp4' . '&expire=' . time()); ?>"
				type="video/mp4">
			<?php if ($lesson_details['caption'] != "" && file_exists('uploads/captions/' . $lesson_details['caption'])): ?>
				<track kind="captions" label="Caption"
					src="<?php echo base_url('uploads/captions/' . $lesson_details['caption']); ?>" srclang="en" default />
			<?php endif; ?>
		</video>
	</div>
	<?php include "plyr_config.php"; ?>
<?php elseif ($get_lesson_type == 'audio_file'): ?>
	<style>
		.plyr__menu__container {
			z-index: 1035 !important;
		}
	</style>
	<div class="p-3 <?php if ($full_page)
		echo 'bg-black'; ?>" style="margin-top: 250px;">
		<audio id="player" playsinline controls>
			<source
				src="<?php echo site_url('files?course_id=' . $course_details['id'] . '&lesson_id=' . $lesson_details['id'] . '&type=video&ext=mp4' . '&expire=' . time()); ?>"
				type="audio/mp3">
		</audio>
	</div>
	<?php include "plyr_config.php"; ?>
<?php elseif ($get_lesson_type == 'quiz'): ?>
	<div class="mt-0">
		<?php include 'quiz_view.php'; ?>
	</div>
<?php elseif ($get_lesson_type == 'text'): ?>
	<div class="w-100 text-wrap">
		<?php echo htmlspecialchars_decode_($lesson_details['attachment']); ?>
	</div>
<?php elseif ($get_lesson_type == 'image_file'): ?>
	<?php $img_size = getimagesize('uploads/lesson_files/' . $lesson_details['attachment']); ?>
	<img width="100%" style="max-width: <?php echo $img_size[0] . 'px'; ?>" height="auto"
		src="<?php echo site_url('files?course_id=' . $course_details['id'] . '&lesson_id=' . $lesson_details['id'] . '&type=image'); ?>" />
<?php elseif ($get_lesson_type == 'text_file'): ?>
	<iframe class="embed-responsive-item" width="100%" height="450px"
		src="<?php echo site_url('files?course_id=' . $course_details['id'] . '&lesson_id=' . $lesson_details['id'] . '&type=image'); ?>"
		allowfullscreen></iframe>
<?php elseif ($get_lesson_type == 'pdf_file'): ?>
	<iframe class="embed-responsive-item" width="100%" height="600px"
		src="<?php echo site_url('home/pdf_canvas/' . $course_details['id'] . '/' . $lesson_details['id']); ?>"
		allowfullscreen></iframe>
<?php elseif ($get_lesson_type == 'doc_file'): ?>
	<iframe width="100%" height="500px" class="doc"
		src="<?php echo site_url('files?course_id=' . $course_details['id'] . '&lesson_id=' . $lesson_details['id']); ?>&embedded=true"></iframe>
<?php elseif ($get_lesson_type == 'wasabi_document_file'): ?>
	<?php if ($_SERVER['SERVER_NAME'] == 'localhost' || $_SERVER['SERVER_NAME'] == '127.0.0.1'): ?>
		<p class="text-danger">
			<?php echo site_phrase('you_should_upload_the_application_on_a_live_server_to_preview_the_doc_file'); ?></p>
	<?php endif; ?>
	<iframe width="100%" height="500px" class="doc"
		src="https://docs.google.com/gview?url=<?php echo get_video_url($lesson_details['video_url'], $lesson_details['course_id']); ?>&embedded=true"></iframe>
<?php elseif ($get_lesson_type == 'wasabi_image_file'): ?>
	<?php $image = get_video_url($lesson_details['video_url'], $lesson_details['course_id']);
	echo '<img width="100%" style="max-width: 100%;" src="' . $image . '" alt="Image">'; ?>
<?php elseif ($get_lesson_type == 'wasabi_text_file'): ?>
	<iframe class="embed-responsive-item" width="100%" height="450px"
		src="<?php echo get_video_url($lesson_details['video_url'], $lesson_details['course_id']); ?>"
		allowfullscreen></iframe>
<?php elseif ($get_lesson_type == 'reviwe'): ?>
	<?php $reviewQuestions =$this->crud_model->GetReviewQuestions(0);
	foreach ($reviewQuestions as $key => $question) :?>
	<div style=" margin-top: 15px"> 
	<div class="container">
    <div class="row"><br><br>
        <div id="quiz">
            <div class="question">
                <h3><span class="label label-warning warning" id="qid"><?=$key+1?></span>
                    <span id="question"><?= htmlspecialchars_decode_($question['question']);?></span>
                </h3>

            </div>
            <ul>
                <li>
                    <table>
                        <tr>
						<th style="text-align: center;">
    <button class="btn btn-secondary" onclick="showAnswer(this, <?=$key+1?>)">Show Answer</button>
</th>

                            <th>
								<div id="answer-<?=$key+1?>" style="display: none;">
								<input type="radio" id="f-option" name="selector" value="1">
                                <label for="f-option" class="element-animation"><?= htmlspecialchars_decode_($question['answer']);?></label>
                                <div class="check"></div>
							</div>
                               
                            </th>
                        </tr>
                    </table>
                </li>
            </ul>
        </div>
    </div>
    <div class="text-muted">
        <span id="answer"></span>
    </div>
</div>

	</div>	
	<?php endforeach; ?>

<?php else: ?>
	<div class="w-100">
		<iframe class="embed-responsive-item" width="100%" height="550px" src="<?php echo $lesson_details['attachment']; ?>"
			allowfullscreen></iframe>
	</div>
<?php endif; ?>

<script>
    function showAnswer(button, id) {
        button.style.display = 'none'; 
        var answer = document.getElementById('answer-' + id); 
        answer.style.display = 'inline-block'; 
    }
</script>