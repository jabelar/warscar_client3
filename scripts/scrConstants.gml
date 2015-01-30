// packet types from server
globalvar OBJ_CREATE, OBJ_UPDATE, OBJ_DESTROY, SOUND_PLAY, EFFECT_CREATE;
OBJ_CREATE = 0
OBJ_UPDATE = 1
OBJ_DESTROY = 2
SOUND_PLAY = 3
EFFECT_CREATE = 4

// packet types to server
globalvar INPUT;
INPUT = 0

// broadcast types from server
globalvar SERVER_ANNOUNCE, CLIENT_ANNOUNCE;
SERVER_ANNOUNCE = 0
CLIENT_ANNOUNCE = 1

// object types
globalvar OBSTACLE, FLAG, BULLET, PLAYER;
OBSTACLE = 0
FLAG = 1
BULLET = 2
PLAYER = 3

// sound types
globalvar MAIN_GUN;
MAIN_GUN = 0