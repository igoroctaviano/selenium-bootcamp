
window.onload = function () {
  document.getElementsByClassName('btn')[0].addEventListener('click', function(e) {
    e.preventDefault();
    document.getElementsByClassName('success')[0].style.display = 'block';
  });
}