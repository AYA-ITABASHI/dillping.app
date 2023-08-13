'use strict';

document.addEventListener("DOMContentLoaded",() => {

  const timer = document.getElementById("timer");
  const start = document.getElementById("start") ;
  const stop = document.getElementById("stop");
  const pause = document.getElementById("pause");

  let startTime;
  let timeOutid;
  let elapsedTime = 0;

  function countUp(){

  const d = new Date(Date.now()-startTime + elapsedTime);
  const h =String(d.getUTCHours()).padStart(2, "0");
  const m =String(d.getMinutes()).padStart(2, "0");
  const s =String(d.getSeconds()).padStart(2, "0");
  timer.textContent = `${h}:${m}:${s}`;

   timeOutid=setTimeout(() => {
   countUp();
   }, 10);
   }

  function setButtonsstateInitial(){
   start.disabled = false
   stop.disabled = true
   pause.disabled = true
  }

  function setButtonsstateRunning(){
   start.disabled = true
   stop.disabled = false
   pause.disabled = false
  }

  function setButtonsstateStoped(){
   start.disabled = false
   stop.disabled = true
   pause.disabled = false
  }

  setButtonsstateInitial();

  start.addEventListener('click', () => {
   setButtonsstateRunning();
   startTime = Date.now();
   countUp();
  });

  stop.addEventListener('click', () => {
   setButtonsstateStoped();
   clearTimeout(timeOutid);
   elapsedTime += Date.now()- startTime
  });

  pause.addEventListener('click', () => {
   setButtonsstateInitial();
   clearTimeout(timeOutid);
   timer.textContent = "00:00:00"
   elapsedTime = 0;
  });

});