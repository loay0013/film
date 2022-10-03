export default class Kage{
    constructor() {
    }
    async kageEllerHvad(){
        try{
           const responseKage = await this.skalKimGivekage(true);
           console.log(responseKage);
           const responseSize =await this.erDetEnStorKage('large');
           console.log(responseSize);
        }catch (error) {
            console.log(error);
        }








    }
    skalKimGivekage(erKimKommerForSent){
        return new Promise(( resolve, reject)=>{
            setTimeout(()=> {
                    if (erKimKommerForSent){
                          resolve('Kim giver kage');
                    }  else {
                          reject('Ingen kage i dag')
                    }

                }, 2000);

        });
    }

    erDetEnStorKage(size){
       return new Promise((resolve, reject)=>{
           setTimeout(()=>{
               if (size ==="small"){
                   reject('nej, det er en lille kage');
               }else if(size === 'medium'){
                   reject('narrrrrh');
               } else {
                   resolve('ja TAAAK')
               }
           }, 2000);
       });
    }


}