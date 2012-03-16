Feature: A developer is ecstatic to discover informative step based logging in their rails log
  As a developer
  In order to derive joy and happiness when checking my cucumber logs
  I want to see rainbows and unicorns when my log files run

Scenario: Step information is written to the rails log
  Given a cucumber feature is executing against my rails application
  When I examine the rails log
  And I do some crazy Inception like test on myself
  Then I see the following log entries:
  | Message                                                            | Colour           |
  | STEP INFORMATION IS WRITTEN TO THE RAILS LOG                       | black_on_green   |
  | Given a cucumber feature is executing against my rails application | black_on_yellow  |
  | When I examine the rails log                                       | black_on_yellow  |
  | And I do some crazy Inception like test on myself                  | black_on_yellow  |
