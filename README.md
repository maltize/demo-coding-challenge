## Rubymon is a mobile app that allows players to catch, collect monsters, and eventually battle them. The game is played on a mobile app but we want to store user and monster information in the cloud. We need you to create a RESTful backend API to store and organize the monsters.

User Requirements
1. [DONE] User can register via their Facebook account.
2. [DONE] User can create a monster with the following attributes (string descriptors): name, power, and type.
3. [DONE] Each monster can be one of five types: fire, water, earth, electric, wind.
4. [NOT DONE] Each type is strong against one, weak against another:
	fire < water < earth < electric < wind < fire...
5. [DONE] User can organize monsters into teams of three.
6. [DONE] User can have up to a total of 20 monsters and 3 teams.
7. [PARTIALLY DONE] User can view all their monsters and sort by name, power, or weakness.
8. [DONE] User can manage monsters with CRUD web pages.

**Conclusion after ~3 hours (summary time) of work:
Not enough time for point 4 and part of 7(sorting by weakness).
Lots of things should be improved and refactored (like team <=> monsters connection, presenters between controllers and views). Last but not least, tests should be correctly implemented :)**
