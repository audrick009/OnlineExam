<?php 
class Jobs_model extends CI_Model {
	public function __construct() {
		parent::__construct();
	}

	public function get_job()
	{
		$this->db->select("job_id, job_title, job_description, LEFT(job_description, 50) as jd, image, status");
		$this->db->from("jobs");
		$this->db->where("status", "Posted");
		return $this->db->get()->result_array();
	}
	public function getJobDetails($job_id) {
		return $this->db->get_where('jobs',array('job_id'=>$job_id))->row_array();
	}

	public function getEssay() {
		return $this->db->get_where('questionbank',array('question_id'=> 264))->row_array();
	}

	public function answerEssay($essay) {
		$this->db->insert('applicantessay',$essay);
		return $this->db->insert_id();
	}

	public function applyJob($job) {
		$this->db->insert('applicantappliedjob',$job);
		return $this->db->insert_id();
	}
        public function changeToPending($id){
            $array = array('status' => 'Pending');
            $this->db->where('app_id',$id);
            $this->db->update('applicantinfo',$array);
        }

	public function checkIfTakenExam($app_id) {
		$this -> db -> select('app_id, examtype_id');
		$this -> db -> from('applicanttechnical');
		$this -> db -> where('app_id', $app_id);
		$this -> db -> where('dateended is NOT NULL');
		$technical = $this -> db -> get() -> num_rows();


		$this -> db -> select('app_id');
		$this -> db -> from('applicantmanchester');
		$this -> db -> where('app_id', $app_id);
		/*$this -> db -> where('remarks is NOT NULL');*/
		$manchester = $this -> db -> get() -> num_rows();


		$this -> db -> select('app_id');
		$this -> db -> from('applicantessay');
		$this -> db -> where('app_id', $app_id);
		$this -> db -> where('answer is NOT NULL');
		$essay = $this -> db -> get() -> num_rows();


		if($technical == 5 && $manchester == 5 && $essay >= 3) {
			return true;
		}
		else
		{
			return false;
		}
	}
	public function checkApplicantJobs($app_id, $job_id) {
		return $this->db->get_where('applicantappliedjob',array('app_id' => $app_id, 'job_id' => $job_id))->row_array();
	}


}

?>