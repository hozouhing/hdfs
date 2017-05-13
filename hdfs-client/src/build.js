import Vue from 'vue'
import Vodal from 'vodal';
import pdf from 'vue-pdf'
import ElementUI from 'element-ui'
import $ from 'jquery'
import 'element-ui/lib/theme-default/index.css'
import 'bootstrap/dist/css/bootstrap.css'
import "vodal/door.css";
import App from './components/App.vue'

Vue.use(ElementUI);
Vue.component('vodal', Vodal);
Vue.component('pdf',pdf);

window.$ = $
window.jQuery = $

//window.urlPrefix = 'http://localhost:80';
window.urlPrefix = '';

new Vue({
    el: '#app',
    render: h => h(App)
});
