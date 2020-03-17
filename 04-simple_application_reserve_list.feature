Feature: Simple allocations with reserve list

Background:
  Given there are 5 spaces
  And the contractor grace period is 0

Scenario: There are enough spaces for all applicants.
  Given there are 4 applications from employees
  And there is 1 application from an employee on the reserve list
  When the draw is done
  Then 1 employee on the reserve list is allocated a space
  And 4 employees are allocated a space
  And 0 employees are added to the reserve list

Scenario: There are not enough spaces for all applicants.
  Given there are 5 applications from employees
  And there is 1 application from an employee on the reserve list
  When the draw is done
  Then 1 employee on the reserve list is allocated a space
  And 4 employees are allocated a space
  And 1 employee is added to the reserve list
