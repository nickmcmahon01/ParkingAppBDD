Feature: Precedence of allocations based on applicant type with reserve list

Background:
  Given there are 5 spaces
  And the contractor grace period is 0


Scenario: A visitor takes precedence over an employee even if they are on the reserve list.
  Given there are 5 applications from employees
  And there is 1 application from an employee on the reserve list
  And there is 1 application from a visitor
  When the draw is done
  Then 1 visitor is allocated a space
  And 4 employees are allocated a space
  And 1 employee is added to the reserve list
