
function view() {
  const genre = document.querySelector('.genre');
  const image = document.querySelector('.image');
  const genres = Array.from(genre.querySelectorAll('input:checked')).map(checkbox => checkbox.value);
  const images = Array.from(image.querySelectorAll('img'));
  const hidden = Array.from(image.querySelectorAll('li'));
  for (const image of images) {
    const viewimage = genres.indexOf(image.dataset.genre)  < 0;
    image.classList.toggle('viewimage', viewimage);
  }
  for (const image of hidden) {
    const hidden = genres.indexOf(image.dataset.genre)  < 0;
    image.classList.toggle('hidden', hidden);
  }
}
function selectAll(selectAll)  {
  const checkboxes 
     = document.querySelectorAll('input[type="checkbox"]');
  
  checkboxes.forEach((checkbox) => {
    checkbox.checked = selectAll.checked
  })
}

function claerCheck(){
      for(var i =0;document.frm1.length;i++){
         document.frm1.elements[i].checked=false;
      }
}