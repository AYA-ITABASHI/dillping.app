'use strict';

document.addEventListener("DOMContentLoaded",() => {

  const timer = document.getElementById("timer");
  const start = document.getElementById("start") ;
  const stop = document.getElementById("stop");
  const reset = document.getElementById("reset");

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

  function setButtonsInitial(){
   start.diabled = false
   stop.disabled = true
   reset.disabled = true
  }

  setButtonsInitial();

  start.addEventListener('click', () => {

   startTime = Date.now();
   countUp();
  });

  stop.addEventListener('click', () => {
   clearTimeout(timeOutid);
   elapsedTime += Date.now()- startTime
  });

  reset.addEventListener('click', () => {
   timer.textContent = "00:00:00"
   elapsedTime = 0;
  });

});