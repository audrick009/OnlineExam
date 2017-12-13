<?php 

class Examination_model extends CI_Model {
    /*Get questions*/
    public function getQuestion($id){
        $this->db->select('*');
        $this->db->from('questionbank');
        $this->db->where('examtype_id', $id);

        return $query = $this->db->get()->result_array();
    }

    public function getAnswers($app_id){
        $this->db->select('ans.app_id, ans.question_id, ans.app_answer, qb.question, qb.examtype_id, 
            qb.option1, qb.option2, qb.option3, qb.option4, qb.answer, at.datestarted, at.dateended, at.score, at.remarks');
        $this->db->from('applicantanswers as ans');
        $this->db->join('questionbank as qb', 'qb.question_id = ans.question_id');
        $this->db->join('examtype as et', 'et.examtype_id = qb.examtype_id');
        $this->db->join('applicanttechnical as at', 'at.examtype_id = et.examtype_id');
        $this->db->where('ans.app_id', $app_id);
        $this->db->where('at.app_id', $app_id);
        return $query = $this->db->get()->result_array();
    }

    public function getEssay($app_id){
        $this->db->select('qb.question, es.answer, es.started, es.ended');
        $this->db->from('applicantessay es');
        $this->db->join('questionbank as qb', 'qb.question_id = es.question_id');
        $this->db->where('app_id', $app_id);
        return $query = $this->db->get()->result_array();
    }


    /*Record start time*/
    public function takeTechnical($startTechnical,$app_id, $examtype_id) {
        $this -> db -> select('app_id, examtype_id');
        $this -> db -> from('applicanttechnical');
        $this -> db -> where('app_id', $app_id);
        $this -> db -> where('examtype_id', $examtype_id);
        $this -> db -> where('remarks is NULL');
        $this -> db -> where('score is NULL');
        $this -> db -> limit(1);

        $query = $this -> db -> get();

        if($query->num_rows() == 0)
        {
            $this->db->set('datestarted', 'NOW()', FALSE);
            $this->db->insert('applicanttechnical', $startTechnical);
        }
    }

    public function takeManchester($startManchester, $app_id) {
        $this -> db -> select('app_id');
        $this -> db -> from('applicantmanchester');
        $this -> db -> where('app_id', $app_id);
        $this -> db -> where('factor', "Resilience");
        $this -> db -> where('remarks is NULL');
        $this -> db -> where('score', 0);

        $query = $this -> db -> get();

        if($query->num_rows() == 0) {
            $this->db->set('start', 'NOW()', FALSE);
            $this->db->insert('applicantmanchester', $startManchester);
        }
    }

    public function takeEssay($startEssay,$app_id) {
        $this -> db -> from('applicantessay');
        $this -> db -> where('app_id', $app_id);
        $this -> db -> where('question_id', 263);
        $this -> db -> where('answer is NULL');

        $query = $this -> db -> get();

        if($query->num_rows() == 0) {
            $this->db->set('started', 'NOW()', FALSE);
            $this->db->insert('applicantessay', $startEssay);
        }
    }

    /*saving of score/answers*/
    public function saveScore($computeScore, $app_id, $examtype_id) {
       $this->db->set('dateended', 'NOW()', FALSE);
       $this->db->where('app_id', $app_id);
       $this->db->where('examtype_id', $examtype_id);
       $this->db->update('applicanttechnical', $computeScore);

       if($this->db->affected_rows() > 0) {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}    

public function saveEssay($app_id, $question_id, $essay) {
    $this->db->set('ended', 'NOW()', FALSE);
    $this->db->where('app_id', $app_id);
    $this->db->where('question_id', $question_id);
    $this->db->update('applicantessay', $essay);

    if($this->db->affected_rows() > 0) {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

public function saveManchester($app_id, $factor, $manchester) {
    $this->db->set('end', 'NOW()', FALSE);
    $this->db->where('app_id', $app_id);
    $this->db->where('factor', $factor);
    $this->db->update('applicantmanchester', $manchester);

    if($this->db->affected_rows() > 0) {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

public function saveAnswers($ans) {
    $this->db->insert('applicantanswers', $ans);
}

public function checkIfTakenExam($app_id, $examtype_id) {
    $this -> db -> select('app_id, examtype_id');
    $this -> db -> from('applicanttechnical');
    $this -> db -> where('app_id', $app_id);
    $this -> db -> where('examtype_id', $examtype_id);
    $this -> db -> where('remarks is NOT NULL');
    $this -> db -> where('DATE_ADD(CURRENT_DATE , INTERVAL 6 MONTH) > dateended');
    $this -> db -> limit(1);

    $query = $this -> db -> get();

    if($query->num_rows() == 1)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

public function sixMonths($app_id, $examtype_id) {
    $this -> db -> select('app_id, examtype_id, dateended');
    $this -> db -> from('applicanttechnical');
    $this -> db -> where('app_id', $app_id);
    $this -> db -> where('examtype_id', $examtype_id);
    $this -> db -> where('remarks is NOT NULL');
    $this->db->order_by("dateended", "desc");
    $this -> db -> limit(1);

    return $query = $this->db->get()->result_array();
}

public function checkIfTakenManchester($app_id) {
    $this -> db -> select('app_id');
    $this -> db -> from('applicantmanchester');
    $this -> db -> where('app_id', $app_id);
    $this -> db -> where('remarks is NOT NULL');
    $this -> db -> limit(1);

    $query = $this -> db -> get();

    if($query->num_rows() == 0)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

public function checkIfTakenEssay($app_id) {
    $this -> db -> select('app_id');
    $this -> db -> from('applicantessay');
    $this -> db -> where('app_id', $app_id);
    $this -> db -> where('answer is NOT NULL');
    $this -> db -> limit(3);

    $query = $this -> db -> get();

    if($query->num_rows() == 3)
    {
        return false;
    }
    else
    {
        return true;
    }
}

public function getEssayTime($app_id) {
    $this -> db -> select('app_id, ended');
    $this -> db -> from('applicantessay');
    $this -> db -> where('app_id', $app_id);
    $this -> db -> where('answer is NOT NULL');
    $this->db->order_by("ended", "desc");
    $this->db->limit(1);

    return $query = $this->db->get()->result_array();
}

public function getManchesterTime($app_id) {
    $this -> db -> select('app_id, end');
    $this -> db -> from('applicantmanchester');
    $this -> db -> where('app_id', $app_id);
    $this -> db -> where('remarks is NOT NULL');
    $this->db->order_by("end", "desc");
    $this->db->limit(1);

    return $query = $this->db->get()->result_array();
}
}
?>