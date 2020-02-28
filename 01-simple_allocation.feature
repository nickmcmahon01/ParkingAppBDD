Feature: Simple allocations

Background:
  Given there are 14 spaces
  And there are 0 applicants on the reserve list
  And the contractor grace period is 0

Scenario: There are enough spaces for all applicants.
  Given there are 13 applications from employees
  When the draw is done
  Then 14 employees are allocated a space

Scenario: There are not enough spaces for all applicants.
  Given there are 15 applications from employees
  When the draw is done
  Then 14 employees are allocated a space
  And 1 employee is added to the reserve list
