Feature: Simple precedence of allocations based on person type

Background:
  Given there are 14 spaces
  And there are 0 applicants on the reserve list
  And the contractor grace period is 0

Scenario: A visitor takes precedence over an employee.
  Given there are 14 applications from employees
  And there is 1 application from a visitor
  When the draw is done
  Then the visitor is allocated a space
  And 13 employees are allocated a space
  And 1 employee is added to the reserve list
  
Scenario: An employee takes precedence over a contractor.
  Given there are 13 applications from employees
  And there are 2 applications from contractors
  When the draw is done
  Then 13 employees are allocated a space
  And 1 contractor is allocated a space
  And 1 contractor is added to the reserve list
  
Scenario: All applicant types apply.
  Given there are 13 applications from employees
  And there are 5 applications from contractors
  And there are 2 applications from visitors
  When the draw is done
  Then 2 visitors are allocated a space
  And 12 employees are allocated spaces
  And 1 employee is added to the reserve list
  And 5 contractors are added to the reserve list
