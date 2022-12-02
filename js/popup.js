(() => {
const button = document.querySelector('.item');
const ovelay = document.querySelector('.btn-light');
const ovelayImage = document.querySelector('.btn-light-img');

function open(e){
    btn-light.classlist.add('open');
    const src = e.currentTarget.querySelector('img').src;
    ovelayImage.src = src;

}

function close(){
    ovelay.classList.remove('open');

}

button.forEach(button => button.addEventListner('click, open'));
    ovelayImage.addEventListener('click, close')

})();