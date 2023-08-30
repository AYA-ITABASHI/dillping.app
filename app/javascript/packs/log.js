
'use strict';

document.addEventListener("DOMContentLoaded", () => {

  const timer = document.getElementById("time");
  const start = document.getElementById("start");
  const stop = document.getElementById("stop");
  const pause = document.getElementById("pause");

  let startTime;
  let timeOutId;
  let elapsedTime = 0;
  let running = false; // ストップウォッチが実行中かどうかを示すフラグ

  function countUp() {
    const now = Date.now();
    const deltaTime = now - startTime + elapsedTime;

    const d = new Date(deltaTime);
    const h = String(d.getUTCHours()).padStart(2, "0");
    const m = String(d.getMinutes()).padStart(2, "0");
    const s = String(d.getSeconds()).padStart(2, "0");
    timer.textContent = `${h}:${m}:${s}`;

    timeOutId = setTimeout(countUp, 10);
  }

  function setButtonsstateInitial() {
   start.disabled = false
   stop.disabled = true
   pause.disabled = true
  }

  function startFunction() {
   start.disabled = true
   stop.disabled = false
   pause.disabled = false

 }

  function stopAndSaveFunction() {
   start.disabled = true
   stop.disabled = false
   pause.disabled = false

   const timerValue = document.getElementById("time").textContent;
   document.querySelector("input[name='timelog[measurement_time]']").value = timerValue;

    document.querySelector("form").submit();

  }

  function pauseFunction() {
   start.disabled = false
   stop.disabled = true
   pause.disabled = true
  }

  setButtonsstateInitial();

    stop.disabled = true;
  pause.disabled = true;

  start.addEventListener('click', () => {
   startFunction();
   startTime = Date.now();
   countUp();
  });

  stop.addEventListener('click', () => {
    stopAndSaveFunction();
    clearTimeout(timeOutId);

  });


  pause.addEventListener('click', () => {
   pauseFunction();
   clearTimeout(timeOutId);
   elapsedTime += Date.now()- startTime
  });

});