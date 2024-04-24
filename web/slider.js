var cnt = 1
let slider = document.querySelector('.slider')

setInterval(()=>{
    if (cnt == 0) cnt = 3
    if (cnt == 4) cnt = 1
    let str = 'slide-' + cnt + '.jpg';
    slider.style = `background-image: url(${str});`
    cnt++
},1000)
let controlPrev = document.querySelector('.prev')
let controlNext = document.querySelector('.next')

controlNext.addEventListener('click', ()=>{
    if (cnt == 0) cnt = 3
    if (cnt == 4) cnt = 1
    let str = 'slide-' + cnt + '.jpg';
    slider.style = `background-image: url(${str});`
    cnt++
})

controlPrev.addEventListener('click', ()=>{
    if (cnt == 0) cnt = 3
    if (cnt == 4) cnt = 1
    let str = 'slide-' + cnt + '.jpg';
    slider.style = `background-image: url(${str});`
    cnt--
})
/*modal form*/
const bodals4=document.querySelectorAll('.item__icon1')
const modal4=document.querySelector('.modal-form')
const modalclose4=document.querySelector('.form-login-header__icon')
const modalbody4=document.querySelector('.modal-form__body')
function show4(){
      modal4.classList.add('open4')
}
show4()
function hide4(){
      modal4.classList.remove('open4')
}
modalclose4.addEventListener('click',show4)
for(const bodal4 of bodals4){
    bodal4.addEventListener('click',hide4)
}
modal4.addEventListener('click',show4)
modalbody4.addEventListener ('click',function(event4){
     event4.stopPropagation()
})