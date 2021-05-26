import Vue from 'vue';
import Router from 'vue-router';


Vue.use(Router);

export default new Router({
    scrollBehavior() {
        document.getElementById('app').scrollIntoView();
    },
    methods: {
        scrollToTop() {
            window.scrollTo(0,0);
        }
    },
    routes: [
        {
            path: '/monitoring',
            name: 'Monitoring',
            component: () =>
                    import('@/views/1-Monitoring/MonitoringRouter.vue')
        },
        {
            path: '/404',
            name: 'error404',
            component: () =>
                    import('@/views/customErrorPages/Error404.vue')
        },
        {
            path: '*',
            redirect: { name: 'Monitoring' }
        }
    ]
});
