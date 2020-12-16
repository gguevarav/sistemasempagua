<template>
  <div>
    <v-app-bar
        color="secondary"
        src="https://picsum.photos/1920/1080?random"
        dense
        dark
        app>
      <v-toolbar-title>Sistemas de empagua</v-toolbar-title>
      <v-spacer></v-spacer>
    </v-app-bar>
  </div>
</template>

<script>

export default {
  data () {
    return {
      barraNavegacion: true,
    }
  },
}
</script>
