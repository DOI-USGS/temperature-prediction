import Vue from 'vue';
import Router from 'vue-router';

Vue.use(Router);

export default new Router({
    routes: [
        {
            path: '/',
            name: 'Visualization',
            component: () =>
                    import('@/views/Visualization.vue')
        },
        {
            path: '/',
            name: 'Importance',
            component: () =>
                    import('@/views/1-Importance.vue')
        },
        {
            path: '/404',
            name: 'error404',
            component: () =>
                    import('@/views/customErrorPages/Error404.vue')
        },
        {
            path: '*',
            redirect: { name: 'error404' }
        }
    ]
});
