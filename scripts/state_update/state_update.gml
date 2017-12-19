if(state_next != state)
{
  state=state_next;
  state_timer=0;
  state_new=true;
}
else
{
  state_timer+=global.dt;
  state_new=false;
}

