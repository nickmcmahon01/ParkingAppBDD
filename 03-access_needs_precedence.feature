Feature: access needs take precedence over applicant type

Background:
  Given there are 14 spaces
  And there are 0 applicants on the reserve list
  And the contractor grace period is 0
  
Scenario: Employee access needs take precedence over visitors. 
  Given there are 13 applications from employees
  And there are 2 applications from visitors
  And there is 1 application from an employee with access needs
  When the draw is done
  Then 1 employee with access needs is allocated a space
  And 2 visitors are allocated a space
  And 11 employees are allocated a space
  And 2 employees are added to the reserve list
  
Scenario: Contractor access needs take precedence over visitors. 
  Given there are 13 applications from employees
  And there are 2 applications from visitors
  And there is 1 application from a contractor with access needs
  When the draw is done
  Then 1 employee with access needs is allocated a space
  And 2 visitors are allocated a space
  And 11 employees are allocated a space
  And 2 employees are added to the reserve list

Scenario: Employee access needs take precedence over an employee. 
  Given there are 14 applications from employees
  And there is 1 application from an employee with access needs
  When the draw is done
  Then 1 employee with access needs is allocated a space
  And 13 employees are allocated a space
  And 1 employee is added to the reserve list

Scenario: Contractor access needs take precedence over an employee. 
  Given there are 14 applications from employees
  And there is 1 application from a contractor with access needs
  When the draw is done
  Then 1 contractor with access needs is allocated a space
  And 13 employees are allocated a space
  And 1 employee is added to the reserve list
  
  Scenario: All applicant types apply. 
  Given there are 13 applications from employees
  And there are 5 applications from contractors
  And there are 2 applications from visitors
  And there is 1 application from an employee with access needs
  And there is 1 application from a contractor with access needs
  When the draw is done
  Then 1 employee with access needs is allocated a space
  And 1 contractor with access needs is allocated a space
  And 2 visitors are allocated a space
  And 10 employees are allocated a space
  And 3 employees are added to the reserve list
  And 5 contractors are added to the reserve list
