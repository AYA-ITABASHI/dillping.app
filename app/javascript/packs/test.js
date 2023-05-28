'use strict';

document.addEventListener("DOMContentLoaded")

  const timer = document.getElementById("time");
  const start = document.getElementById("start") ;
  const stop = document.getElementById("stop");
  const reset = document.getElementById("reset");

let startTime;

function countUp(){
 console.log(Date.now()-startTime);
 const d = new Date(Date.now()-startTime);
 const m =String(d.getMinutes()).padStart(2, "0");

 setTimeout(() => {
   countUp();
  }, 10);
 }

 start.addEventListener('click', () => {
  startTime =Date.now();
  countUp();

 });