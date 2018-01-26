/// @description scr_initSoundEmitters creates sound emitters.
global.se_emitter = audio_emitter_create();
global.se_volume = 0.3;
audio_emitter_gain(global.se_emitter, global.se_volume);

global.mus_emitter = audio_emitter_create();
global.mus_volume = 0.3;
audio_emitter_gain(global.mus_emitter, global.mus_volume);