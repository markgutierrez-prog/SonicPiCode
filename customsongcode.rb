use_bpm 60
clip = "C:/Users/mg730/Documents/Audacity/DeathByGlamour.mp3"
cliplength = sample_duration "C:/Users/mg730/Documents/Audacity/DeathByGlamour.mp3"
set :done, false
define :checkruntime do
  if get(:done) == true
    stop
  end
end
live_loop :clipped do
  if tick == 2
    play :fs4; sleep 0.2
    play :g4;  sleep 0.2
    play :fs4; sleep 0.2
    play :b4;  sleep 0.2
    play :a4;  sleep 0.2
    play :e4;  sleep 0.2
    play :d4;  sleep 0.2
    play :c4;  sleep 0.2
    play :a3;  sleep 0.2
    play :g3;  sleep 0.2
    play :e3;  sleep 0.2
    set :done, true
    stop
  end
  if tick == 1
    sample clip, start: 0, finish: 0.25, amp: 1.5
    sleep cliplength/4
    sample clip, start: 0, finish: 0.50, amp: 1.2
    sleep cliplength/4
    sample clip, start: 0, finish: 0.75, amp: 0.9
    sleep cliplength/4
    sample clip, start: 0, finish: 1, amp: 0.6
    sleep cliplength/4
  end
  sample clip
  sleep cliplength
end

sleep cliplength
live_loop :pianoRiff do
  checkruntime
  use_synth :piano
  play :a4, sustain: 1
  play :e4, sustain: 1
  play :cs4, sustain: 1
  sleep 1
end

sleep 4
live_loop :layera do
  checkruntime
  sample :bd_haus, amp: 0.7
  sleep 0.5
end

sleep 2
live_loop :layerb do
  checkruntime
  use_synth :piano
  play :fs4, sustain: 2
  play :cs4, sustain: 2
  play :a3, sustain: 2
  sleep 2
  play :g4, sustain: 2
  play :d4, sustain: 2
  play :b3, sustain: 2
  sleep 2
  play :a4, sustain: 2
  play :e4, sustain: 2
  play :cs4, sustain: 2
  sleep 2
  play :g4, sustain: 2
  play :d4, sustain: 2
  play :b3, sustain: 2
  sleep 2
end
