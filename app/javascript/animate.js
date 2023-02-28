let container = document.querySelector('#container');
let item = document.querySelector('#item');

let mousemove_function = () => {
  item.style.left = event.clientX - 25 + "px";
  item.style.top = event.clientY - 25 + "px";
}

container.addEventListener('mousemove', mousemove_function);