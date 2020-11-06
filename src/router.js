import Vue from 'vue';
import Router from 'vue-router';


Vue.use(Router);

export default new Router({
    routes: [
        {
            path: '/',
            name: 'Importance',
            component: () =>
                    import('@/views/1-Importance/Importance.vue')
        },
        {
            path: '/importance',
            name: 'Importance',
            component: () =>
                    import('@/views/1-Importance/Importance.vue')
        },
        {
            path: '/monitoring',
            name: 'MonitoringDesktop',
            // components: {
            //     default: MonitoringDesktop,
            //     // mobile: monitoringMobile
            // }
            component: () =>
                    import('@/views/2-Monitoring/MonitoringRouter.vue')
        },
        {
            path: '/modeling',
            name: 'Modeling',
            component: () =>
                    import('@/views/3-Modeling/Modeling.vue')
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
