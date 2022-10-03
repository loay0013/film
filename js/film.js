export default class Films {

    constructor() {
         this.data ={
             password: 1717

         }
        
        this.rootElem = document.querySelector('.films');
        this.filter = this.rootElem.querySelector('.filter');
        this.items = this.rootElem.querySelector('.items');
        this.nameSearch = this.filter.querySelector('.nameSearch');
        this.raSa =this.filter.querySelector('.raSa');
    }

    async init(){
        this.nameSearch.addEventListener('input',()=>{
            if ( this.nameSearch.value.length >= 5 ) {
                this.render();
            }
        })
        this.raSa.addEventListener('input',()=>{
            this.render();
        })



        await this.render();
    }
        async render() {
        const data = await this.getData();



        const row =document.createElement('div');
        row.classList.add('row', 'g-4');

        for(const  items of data){
            const col = document.createElement('div');
            col.classList.add('col-md-6', 'col-lg-4', 'col-xl-3');

            col.innerHTML= `
             <div class="card h-100 shadow">
             
             <img  src ="uplods/${items.FilmImg}" class="card-img-top img-fluid " alt="">
           
            
            
                <h5 class="cardd-title text-center p-2 ">${items.FilmNavn}</h5>
                <p class="card-text text-center p-2">${items.FilmGenre}</p>
                <p class="text-center">
                  ${items.FilmRate}&#9734;| ${items.FilmTid}.Min |+ ${items.FilmAlder}
                </p>              
                <div class="d-flex justify-content-center p-3 ">
                <a href="index.php?FilmId=${items.FilmId}"class="btn  justify-content-center p-2 rounded-0 bg-dark text-light rounded-0 ">læs mere</a></div>
             </div>   
             </div>                                           
          `;
            row.appendChild(col);
        }
        this.items.innerHTML='';
        this.items.appendChild(row);
    }




    async getData(){
        this.data.nameSearch =this.nameSearch.value;

        const response = await fetch('api.php',{
            method: "POST",
            body: JSON.stringify(this.data)
        });
        return  await response.json();
    }
}
