<template>
    <nav>
        <div id="nav">
            <router-link to="/">Importance</router-link> |
            <router-link to="/monitoring">Monitoring</router-link> |
            <router-link to="/modeling">Modeling</router-link>
        </div>
    </nav>
</template>

<script>
    export default {
        name: 'Nav'
    }
</script>

<style scoped>
    #nav {
        text-align: center;
        padding: 30px;
    }

    #nav a {
        font-weight: bold;
        color: #28a745;;
    }
</style>