% Author:
% Date: 08-Sep-18

% KB1
% woman(mia).
% woman(jody).
% woman(yolanda).
% playsAirGuitar(jody).
% party.

% KB2
% happy(yolanda).
% listens2Music(mia).
% listens2Music(yolanda):- happy(yolanda).
% playsAirGuitar(mia):- listens2Music(mia).
% playsAirGuitar(yolanda):- listens2Music(yolanda).


% KB3
% happy(vincent).
% listens2Music(butch).
% playsAirGuitar(vincent):- listens2Music(vincent),
%                           happy(vincent).
% playsAirGuitar(butch):- happy(butch);
%                         listens2Music(butch).

% KB4
% woman(mia).
% woman(jody).
% woman(yolanda).
% 
% loves(vincent,mia).
% loves(marsellus,mia).
% loves(pumpkin,honey_bunny).
% loves(honey_bunny,pumpkin).

% KB5
% loves(vincent,mia).
% loves(marsellus,mia).
% loves(pumpkin,honey_bunny).
% loves(honey_bunny,pumpkin).
% 
% jealous(X,Y):- loves(X,Z), loves(Y,Z).