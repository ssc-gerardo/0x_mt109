<template>
  <div class="container" style="background-color:rgb(241, 241, 241); margin: 10px; padding: 20px;">
    <div v-for="item in routes" v-bind:key="item.id">
      <div class="card">
        <div class="card-body" style="border-left: 4px solid  blue;">
            <div class="row">
                <div class="col-sm-10" >
                    <div class="row">
                        <div class="col">
                            <div class="row text_des">ruta</div>
                            <div class="row">{{item.id}}</div>
                        </div>
                        <div class="col">
                            <div class="row text_des">conductor</div>
                            <div class="row ">{{item.driver_name}}</div>
                        </div>
                        <div class="col">
                            <div class="row text_des">creada</div>
                            <div class="row">{{item.created_at}}</div>
                        </div>
                        <div class="col">
                            <div class="row text_des">inicio</div>
                            <div class="row">13:00</div>
                        </div>
                        <div class="col">
                            <div class="row text_des">termino</div>
                            <div class="row">-</div>
                        </div>
                        <div class="col">
                            <div class="row text_des">entregas</div>
                            <div class="row">{{item.deliveries}}</div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2" > <button type="button" class="btn btn-primary btn-block" style="border-radius: 15px; margin: 5px;">{{item.deliveries}}</button></div>
              </div>
        </div>
      </div>
    </div>
    <!-- <div class="card">
      <div class="card-body" style=" border-left: 4px solid rgba(60, 200, 4, 0.76);">
          <div class="row">
              <div class="col-sm-10" >
                  <div class="row">
                      <div class="col">
                          <div class="row text_des">ruta</div>
                          <div class="row">rgsdf</div>
                      </div>
                      <div class="col">
                          <div class="row text_des">conductor</div>
                          <div class="row">jose</div>
                      </div>
                      <div class="col">
                          <div class="row text_des">creada</div>
                          <div class="row">1 enero</div>
                      </div>
                      <div class="col">
                          <div class="row text_des">inicio</div>
                          <div class="row">13:00</div>
                      </div>
                      <div class="col">
                          <div class="row text_des">termino</div>
                          <div class="row">-</div>
                      </div>
                      <div class="col">
                          <div class="row text_des">entregas</div>
                          <div class="row">3</div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-2" > <button type="button" class="btn btn-success btn-block" style="border-radius: 15px; margin: 5px;">Small</button></div>
            </div>
      </div>
    </div>
    <div class="card">
      <div class="card-body" style=" border-left: 4px solid rgba(60, 200, 4, 0.76);">
          <div class="row">
              <div class="col-sm-10" >
                  <div class="row">
                      <div class="col">
                          <div class="row text_des">ruta</div>
                          <div class="row">rgsdf</div>
                      </div>
                      <div class="col">
                          <div class="row text_des">conductor</div>
                          <div class="row">jose</div>
                      </div>
                      <div class="col">
                          <div class="row text_des">creada</div>
                          <div class="row">1 enero</div>
                      </div>
                      <div class="col">
                          <div class="row text_des">inicio</div>
                          <div class="row">13:00</div>
                      </div>
                      <div class="col">
                          <div class="row text_des">termino</div>
                          <div class="row">-</div>
                      </div>
                      <div class="col">
                          <div class="row text_des">entregas</div>
                          <div class="row">3</div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-2" > <button type="button" class="btn btn-success btn-block" style="border-radius: 15px; margin: 5px;">Small</button></div>
            </div>
      </div>
    </div>
    <div class="card">
      <div class="card-body" style="border-left: 4px solid  blue;">
          <div class="row">
              <div class="col-sm-10" >
                  <div class="row">
                      <div class="col">
                          <div class="row text_des">ruta</div>
                          <div class="row">rgsdf</div>
                      </div>
                      <div class="col">
                          <div class="row text_des">conductor</div>
                          <div class="row ">jose</div>
                      </div>
                      <div class="col">
                          <div class="row text_des">creada</div>
                          <div class="row">1 enero</div>
                      </div>
                      <div class="col">
                          <div class="row text_des">inicio</div>
                          <div class="row">13:00</div>
                      </div>
                      <div class="col">
                          <div class="row text_des">termino</div>
                          <div class="row">-</div>
                      </div>
                      <div class="col">
                          <div class="row text_des">entregas</div>
                          <div class="row">3</div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-2" > <button type="button" class="btn btn-primary btn-block" style="border-radius: 15px; margin: 5px;">Small</button></div>
            </div>
      </div>
    </div> -->
</div>
</template>

<script>
import api from "./api"
export default {
    name: "Home",
    data(){
      return{
        routes:[],
      }
    },
    methos:{
    },
    mounted(){
      this.routes = api.get_routes();
    }
}
</script>

<style>
  .text_des {
    color: darkgray;
    size: 12px;
  }
</style>