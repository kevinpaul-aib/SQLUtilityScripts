--exec SF_Replicate @table_server='ls_Salesforce_Staging', @table_name='CRB_Enrolment__c'

exec SF_Refresh @table_server='ls_Salesforce_Master', @table_name='CRB_Action__c', @schema_error_action='yes';
exec SF_Refresh @table_server='ls_Salesforce_Master', @table_name='CRB_Course__c', @schema_error_action='yes';
exec SF_Refresh @table_server='ls_Salesforce_Master', @table_name='CRB_CourseStudent__c', @schema_error_action='yes';
exec SF_Refresh @table_server='ls_Salesforce_Master', @table_name='CRB_CourseStudentTeachingCentre__c', @schema_error_action='yes';
exec SF_Refresh @table_server='ls_Salesforce_Master', @table_name='CRB_Enrolment__c', @schema_error_action='yes';
exec SF_Refresh @table_server='ls_Salesforce_Master', @table_name='CRB_Programme__c', @schema_error_action='yes';
exec SF_Refresh @table_server='ls_Salesforce_Master', @table_name='CRB_Student__c', @schema_error_action='yes';
exec SF_Refresh @table_server='ls_Salesforce_Master', @table_name='CRB_StudentApplication__c', @schema_error_action='yes';
exec SF_Refresh @table_server='ls_Salesforce_Master', @table_name='CRB_SubjectInstance__c', @schema_error_action='yes';
exec SF_Refresh @table_server='ls_Salesforce_Master', @table_name='CRB_TeachingCentre__c', @schema_error_action='yes';


