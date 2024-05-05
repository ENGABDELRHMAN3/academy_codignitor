<input type="hidden" name="lesson_type" value="review-text">

<div style="background-color: #f0f0f0; padding: 20px; margin: 10px;">
    <div class="form-group">
        <label for="text_question"><?php echo get_phrase('enter_question'); ?></label>
        <textarea name="text_question[]" class="form-control" id="text_question" rows="4"></textarea>
    </div>
    <div class="form-group">
        <label for="text_answer"><?php echo get_phrase('enter_answer'); ?></label>
        <textarea name="text_answer[]" class="form-control" id="text_answer" rows="4"></textarea>
    </div>

</div>
<div class="form-group" id="additional_questions"></div>


<button type="button" class="btn btn-primary w-100 " onclick="addAdditionalQuestion()">طلب سؤال إضافي</button>

<script type="text/javascript">
    $(document).ready(function () {
        $('#text_question').summernote(); 
        $('#text_answer').summernote(); 
        
    });

    function addAdditionalQuestion() {
    var id = Date.now(); 
    var additionalQuestions = $('<div id="additional_question_' + id + '" style="background-color: #f0f0f0; padding: 20px; margin: 10px;"><div class="additional-question">' +
        '<div class="form-group">' +
        '<label for="additional_question_' + id + '"><?php echo get_phrase('enter_additional_question'); ?></label>' +
        '<textarea name="text_question[]" class="form-control" id="additional_question_' + id + '_question" rows="4"></textarea>' +
        '</div>' +
        '<div class="form-group">' +
        '<label for="additional_answer_' + id + '"><?php echo get_phrase('enter_additional_answer'); ?></label>' +
        '<textarea name="text_answer[]" class="form-control" id="additional_answer_' + id + '_answer" rows="4"></textarea>' +
        '</div>' +
        '</div></div>');

    $('#additional_questions').append(additionalQuestions);

    $('#additional_question_' + id + ' textarea').summernote();
}

    function returnQuestions() {
        var questionsList = [];

        var mainQuestion = {
            question: $('#text_question').summernote('code'),
            answer: $('#text_answer').summernote('code')
        };
        questionsList.push(mainQuestion);

        $('.additional-question').each(function () {
            var additionalQuestion = {
                question: $(this).find('textarea[name="additional_question"]').summernote('code'),
                answer: $(this).find('textarea[name="additional_answer"]').summernote('code')
            };
            questionsList.push(additionalQuestion);
        });

        return questionsList;
    }
</script>
