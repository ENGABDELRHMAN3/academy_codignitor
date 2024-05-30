<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * CodeIgniter
 *
 * An open source application development framework for PHP 5.1.6 or newer
 *
 * @package		CodeIgniter
 * @author		ExpressionEngine Dev Team
 * @copyright	Copyright (c) 2008 - 2011, EllisLab, Inc.
 * @license		http://codeigniter.com/user_guide/license.html
 * @link		http://codeigniter.com
 * @since		Version 1.0
 * @filesource
 */


if ( ! function_exists('get_user_role'))
{
	function get_user_role($type = "", $user_id = '') {
		$CI	=&	get_instance();
		$CI->load->database();

        $role_id	=	$CI->db->get_where('users' , array('id' => $user_id))->row()->role_id;
        $user_role	=	$CI->db->get_where('role' , array('id' => $role_id))->row()->name;

        if ($type == "user_role") {
            return $user_role;
        }else {
            return $role_id;
        }
	}
}


if ( ! function_exists('is_purchased'))
{
	function is_purchased($course_id = "", $user_id = "") {
		$CI	=&	get_instance();
		$CI->load->library('session');
		$CI->load->database();

		if (!$CI->session->userdata('user_login'))
			return false;

		if($user_id == "")
			$user_id = $CI->session->userdata('user_id');

		$enrolled_history = $CI->db->get_where('enrol' , ['user_id' => $user_id, 'course_id' => $course_id]);
		if ($enrolled_history->num_rows() > 0) {
			$expiry_date = $enrolled_history->row('expiry_date');

			if($expiry_date == null || $expiry_date >= time()){
				$haveUnseenData = false;
			$coursLessons = $CI->db->get_where('lesson', ['course_id' => $course_id])->result_array();

			foreach ($coursLessons as $key => $lesson) {
				$studentViewCount = $CI->db->get_where('student_watches', ['cours_id' => $course_id, 'lesson_id' => $lesson['id'], 'student_id' => $user_id])->num_rows();

				if ($studentViewCount >= $lesson['view_count']) {
					$haveUnseenData = true;
				}
			}
			// print_r($coursLessons);die;
			
		if (!$haveUnseenData) {
			return true;
		}else{
			return false;

		}

			}else{
				return false;
			}
		}else {
			return false;
		}
	}
}

if ( ! function_exists('getlimite')){
	function getlimite($course_id,$user_id = "")  {

		$CI	=&	get_instance();
		$CI->load->library('session');
		$CI->load->database();
		if($user_id == "" ){
			$user_id = $CI->session->userdata('user_id');

		}else{
			$user_id = $user_id;
		}

		$haveUnseenData = false;
	$coursLessons = $CI->db->get_where('lesson', ['course_id' => $course_id])->result_array();

	foreach ($coursLessons as $key => $lesson) {
		$studentViewCount = $CI->db->get_where('student_watches', ['cours_id' => $course_id, 'lesson_id' => $lesson['id'], 'student_id' => $user_id])->num_rows();

		if ($studentViewCount < $lesson['view_count']) {
			$haveUnseenData = true;
		}
	}
	// print_r($course_id);
	// print_r($user_id);
	// print_r($lesson['id']);
	// die;
	
if ($haveUnseenData) {
	return true;
}else{
	return false;

}
	}
	
}

if ( ! function_exists('enroll_status'))
{
	function enroll_status($course_id = "", $user_id = "") {
		$CI	=&	get_instance();
		$CI->load->library('session');
		$CI->load->database();


		if($user_id == "")
			$user_id = $CI->session->userdata('user_id');


		$enrolled_history = $CI->db->get_where('enrol' , ['user_id' => $user_id, 'course_id' => $course_id]);
		if ($enrolled_history->num_rows() > 0) {
			$expiry_date = $enrolled_history->row('expiry_date');
			if($expiry_date == null || $expiry_date >= time()){
				return 'valid';
			}else{
				return 'expired';
			}
		}else {
			return false;
		}
	}
}

// ------------------------------------------------------------------------
/* End of file user_helper.php */
/* Location: ./system/helpers/user_helper.php */
