<template>
  <section>
    <h2>Set 1</h2>
    <p class="example">
      Standard HTML here, but we can add data binding, conditional loading and much more
    </p>
    <p>{{ sample }}</p>
    <button @click="showAnExampleMethod">
      click this to see a sample - random number
    </button>
    <p>a random number {{ randomNumber }}</p>
    <SampleComponent />
  </section>
</template>

<script>
  import SampleComponent from "../../components/SampleComponent";
  export default {
      name: 'Set1',
      components: {
          SampleComponent
      },
      data() {
          return {
              sample: 'this is a simple demo of template binding',
              randomNumber: 0
          }
      },
      // 'mounted()' is an example of a life cycle hook
      // If you put Javascript code in here, it will run when this component is rendered to the screen
      // This is where you could put 'plain old JS code', If you didn't want to mess with the Vue
      // or you had some old JS code you want to test out before converting to use the greatness of Vue.
      mounted() {


      },
      methods: {
          showAnExampleMethod() {
              // notice the use to the word 'this'. This 'this' refers to 'this' Vue component scope
              // Using 'this' will allow you to use the component scope variables in the 'data' method above
              // Of course JavaScript functions also have their own scope and 'this'
              // So we use the convention of reassigning the component 'this' to the variable 'self'
              // As in 'const self = this;'
              // Vue will then know which 'this' you want, even in deeply nested scopes
              // by using something like 'self.randomNUmber'
              this.randomNumber = Math.floor(Math.random() * 1000);
          }
      }
  }

</script>

<!-- if the style element is 'scoped', the styles are confined to this component and will not conflict. -->
<!-- the 'lang' attribute allows you to use the CSS processor of your choice, in this case 'SCSS' -->
<style scoped lang="scss">
  .example {
    background-color: aquamarine;
  }
</style>
