document.addEventListener('mousemove', function(event) {
    var mouseX = event.pageX;
    var mouseY = event.pageY;
    var gridContainer = document.getElementById('grid-container');
    gridContainer.style.backgroundPositionX = -mouseX / 25 + 'px';
    gridContainer.style.backgroundPositionY = -mouseY / 25 + 'px';
  });