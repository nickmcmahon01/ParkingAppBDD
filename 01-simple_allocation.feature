Feature: Simple allocations

Background:
  Given there are 5 spaces
  And there are 0 applicants on the reserve list
  And the contractor grace period is 0

Scenario: There are enough spaces for all applicants.
  Given there are 4 applications from employees
  When the draw is done
  Then 4 employees are allocated a space
  And 0 employees are added to the reserve list

Scenario: There are not enough spaces for all applicants.
  Given there are 6 applications from employees
  When the draw is done
  Then 5 employees are allocated a space
  And 1 employee is added to the reserve list
