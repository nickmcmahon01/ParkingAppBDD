Feature: access needs take precedence over applicant type with reserve list

Background:
  Given there are 5 spaces
  And there are 0 applicants on the reserve list
  And the contractor grace period is 0
  
Scenario: Employee access needs take precedence over Employees even if they are on the reserve list 
  Given there are 4 applications from employees
  And there is 1 application from an employee on the reserve list
  And there are 2 applications from visitors
  And there is 1 application from an employee with access needs
  When the draw is done
  Then 1 employee with access needs is allocated a space
  And 2 visitors are allocated a space
  And 1 employee on the reserve list is allocated a space
  And 2 employees are allocated a space
  And 2 employees are added to the reserve list
