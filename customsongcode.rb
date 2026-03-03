use_bpm 60
clip = "C:/Users/mark_gutierrez/Documents/Audacity/DeathByGlamour-4Measures.wav"
cliplength = sample_duration "C:/Users/mark_gutierrez/Documents/Audacity/DeathByGlamour-4Measures.wav"
set :done, false

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
  sample clip, amp: 1.25
  sleep cliplength
  use_synth :piano
  play :a4, sustain: 1
  play :e4, sustain: 1
  play :cs4, sustain: 1
  sleep 1
end

sleep 4
live_loop :layera do
  stop if get(:done)
  sample :bd_haus, amp: 0.7
  sleep 0.5
end

sleep 2
live_loop :layerb do
  stop if get(:done)
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
