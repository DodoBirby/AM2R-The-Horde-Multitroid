if (state == 4 && vspeed >= 0 && other.image_index < 3)
{
    vspeed = ((-4 + xtreme) - (hitcount * 1))
    gravity = 0.2
    if (hitcount < 5)
        hitcount += 1
    sfx_play(sndArachnusHomingBall)
    PlaySoundMono(sndArachnusHit)
    alarm[1] = 1
    flashing = 15
}
else if (angry < angrymax && flashing == 0)
{
    angry += 2
    event_user(0)
}
