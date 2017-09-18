
window.onload = function () {
  document.getElementById('login').addEventListener('submit', function(e) {
    e.preventDefault();
    document.getElementsByClassName('success')[0].style.display = 'block';
  });
}