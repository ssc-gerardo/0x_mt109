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
                <div class="col-sm-2" > <button type="button" class="btn btn-primary btn-block" style="border-radius: 10px; margin: 3px;">{{item.status}}</button></div>
              </div>
        </div>
      </div>
    </div>
    <button v-on:click="('hello world')">send message</button>
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
        conection: null
      }
    },
    mounted(){
      this.routes = api.get_routes();
    },
    created: function(){
        console.log("Starting connection to websocket server")
        this.conection = new WebSocket("ws://localhost:8080")

        this.conection.onopen = function(event){
            console.log(event)
            console.log("Succesfully connected to the echo WebSocket server")
        }
        this.conection.onmessage = function(event){
            console.log(event)
            console.log(event.data)
            //console.log(this.data.routes)
            console.log(this.routes)
            //this.routes[parseInt(event.data.route_id)].status = event.data.status
            //this.routes[parseInt(event.data.route_id)].deliveries = event.data.deliveries
            //this.routes[parseInt(event.data.route_id)].completed_At = event.data.completed_At
        }
    },
    methods:{
        cambio() {
            console.log("rutas")
             console.log(this.routes)
        },
    },
}
</script>

<style>
  .text_des {
    color: darkgray;
    size: 12px;
  }
</style>