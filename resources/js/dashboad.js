require('./bootstrap');

import {createApp} from "vue";
import router from "./router/dash";
import Header from "./components/layouts/Header";
import Sidebar from "./components/layouts/Sidebar";
import ValidationAbsence from "./components/Respo/ValidationAbsence"


createApp({
    components: {
        Header,
        Sidebar,

    }
}).use(router)
    .mount('#dashboad');
