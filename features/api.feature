Feature: API play
As a user
I want to be able send requests
So that I can see responses in console

Scenario Outline: POSITIVE API user flow in a Table
When I use <method> for <url>
Then I see response code <status_code>

Examples:
|method|url                                                 |status_code |
|GET   |application.wadl                                    |200         |
|GET   |healthcheck                                         |200         |
|GET   |api/v1/contacts                                     |200         |
|GET   |api/v1/contacts/8                                   |200         |
|POST  |api/v1/contacts/                                    |201         |
|PUT   |api/v1/contacts/9                                   |200         |
|PATCH |api/v1/contacts/10                                  |200         |
|GET   |api/v1/contacts?firstName=John&email=.*unknown.com  |200         |
|GET   |api/v1/contacts?firstName=Noname&email=.*nono.com   |200         |


Scenario Outline: NEGATIVE API user flow in a Table
When I use <method> for <url>
Then I see response code <status_code>

Examples:
|method|url                                                 |status_code |
|GET   |application.wadl123                                 |404         |
|POST  |application.wadl                                    |405         |
|PUT   |application.wadl                                    |405         |
|PATCH |application.wadl                                    |405         |
|DELETE|application.wadl                                    |405         |
|GET   |healthcheck123                                      |404         |
|HEAD  |healthcheck                                         |405         |
|POST  |healthcheck                                         |405         |
|PUT   |healthcheck                                         |405         |
|PATCH |healthcheck                                         |405         |
|DELETE|healthcheck                                         |405         |
|PUT   |api/v1/contacts                                     |405         |
|PATCH |api/v1/contacts                                     |405         |
|DELETE|api/v1/contacts                                     |405         |
|GET   |api/v1/contacts/120                                 |404         |
|PUT   |api/v1/contacts/120                                 |404         |
|PATCH |api/v1/contacts/120                                 |404         |
|DELETE|api/v1/contacts/120                                 |404         |
|OPTIONS|api/v1/contacts/10                                 |405         |
