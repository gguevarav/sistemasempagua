<template>
  <v-container>
    <v-row v-for="(item, index) in  listadoSistemas" v-bind:key="index">
    <v-col>
      <v-card
      :loading="loading"
      class="mx-auto my-12"
      max-width="374"
    >
      <template slot="progress">
        <v-progress-linear
          color="deep-purple"
          height="10"
          indeterminate
        ></v-progress-linear>
      </template>

      <v-img
        height="250"
        :src="LogoUsar"
      ></v-img>

      <v-card-title> {{ item.NombreSistema }} </v-card-title>

      <v-card-text>

        <div class="my-4 subtitle-1">
          <a :href="item.DireccionSistema">{{ item.DireccionSistema }}</a>
        </div>

        <div> {{ item.DescripcionSistema }}</div>
      </v-card-text>

      <v-divider class="mx-4"></v-divider>

      <v-card-actions>
        <v-btn
          color="deep-purple lighten-2"
          text
          @click="reserve"
        >
          Reserve
        </v-btn>
      </v-card-actions>
    </v-card>
    </v-col>
  </v-row>
  </v-container>
</template>

<script>
import axios from "axios"

export default {
  name: 'Home',
  data: () => ({
    listadoSistemas: [],
  }),
  created(){
    this.inicializar();
  },
  methods: {
    inicializar(){
      new Promise((resolve, reject) => {
        axios.get("/sistema")
            .then(response => {
              if (response.data.total != 0) {
                this.listadoSistemas = response.data.detalle
                console.log(response.data.detalle);
              }
            })
            .catch(function (error) {
              console.log(error);
            })
      });
    },

    LogoUsar: item => '@assets/logossistemas/' + item.LogoSistema
  },
}
</script>
