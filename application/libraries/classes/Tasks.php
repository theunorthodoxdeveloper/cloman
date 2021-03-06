<?php 	
	
	class Tasks_Class extends DataboundObject {

		protected $ParentTaskID;
		protected $BusinessID;
		protected $Lft;
		protected $Rgt;
		protected $ProjectID;
		protected $TaskTypeID;
		protected $StatusID;
		protected $StartDate;
		protected $InternalDeadline;
		protected $ClientDeadline;
		protected $Name;
		protected $Notes;
		protected $StatusNotes;
		protected $Complete;
		protected $ActualCompletionDate;
		protected $CreatedBy;
		protected $LastUpDated;
		protected $UpdatedBy;
		protected $Sort;

		protected function DefineTableName(){
			return("tasks"); //Name of the table you want to use.
		}

		protected function DefineTableID(){
			return("task_id");
		}

		protected function DefineRelationMap(){
			// List out the columns in the database inline with the variables
			// The variables have to match up through the two pages. 
			return array(
				"task_id" => "ID",
				"lft" => "Lft",
				"rgt" => "Rgt",
				"parent_task_id" => "ParentTaskID",
				"business_id" => "BusinessID",
				"project_id" => "ProjectID",
				"task_type_id" => "TaskTypeID",
				"status_id" => "StatusID",
				"start_date" => "StartDate",
				"internal_deadline" => "InternalDeadline",
				"client_deadline" => "ClientDeadline",
				"name" => "Name",
				"notes" => "Notes",
				"status_notes" => "StatusNotes",
				"complete" => "Complete",
				"actual_completion_date" => "ActualCompletionDate",
				"task_created_by" => "CreatedBy",
				"last_updated" => "LastUpDated",
				"updated_by" => "UpdatedBy",
				"sort" => "Sort"
			);
		}
	}
?>
