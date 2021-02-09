
import Jason from './routes2.json';

class ServicioAPI{
    get_routes(){
        console.log(Jason.routes)
        return Jason.routes
    }
}

export default new ServicioAPI();