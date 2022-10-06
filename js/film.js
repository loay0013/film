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
        this.FilmGenre=this.filter.querySelector('.FilmGenre')
    }

    async init(){
        this.nameSearch.addEventListener('input',()=>{
            if ( this.nameSearch.value.length >= 3 ) {
                this.render();
            }
        })
        this.raSa.addEventListener('input',()=>{
            this.render();
        })

        this.FilmGenre.addEventListener('input',()=>{
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
             <div class="card h-100 shadow border-0  ">
               <div class="obj">
             <img   src ="uplods/${items.FilmImg}" class="card-img-top img-fluid" alt="">
               </div>
            
            
                <h5 class="cardd-title text-center p-2 ">${items.FilmNavn}</h5>
                <p class="card-text text-center p-2">${items.FilmGenre}</p>
                <p class="text-center">
                  ${items.FilmRate}&#9734;| ${items.FilmTid}.Min |+ ${items.FilmAlder}
                </p>              
                <div class="d-flex justify-content-center p-3 ">
                <a href="index.php?FilmId=${items.FilmId}"class="btn  justify-content-center rounded-0 bg-dark text-light rounded-0 ps-5 pt-3 pb-3 pe-5 stretched-link ">læs mere</a></div>
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
         this.data.raSa= this.raSa.value;
         this.data.FilmGenre = this.FilmGenre.value;
        const response = await fetch('api.php',{
            method: "POST",
            body: JSON.stringify(this.data)
        });
        return  await response.json();
    }
}
