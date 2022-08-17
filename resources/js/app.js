require('./bootstrap');

import { createApp } from "vue";
import Toaster from "@meforma/vue-toaster";
import VueSlimScroll from 'vue-slimscroll';
import Chat from 'vue3-beautiful-chat';
import router from "./router/inde";
import Login from "./components/Login.vue";
import Acceuil from "./components/dashboard/Acceuil";
import ListProject from "./components/Project/ListProject";
import ViewProject from "./components/Project/ViewProject";
import ListAbsence from "./components/Absences/ListAbsence";
import Service from "./components/Poles/Service";
import Sponsor from "./components/Sponsor/Sponsor";
import Client from "./components/Customer/Client";
import Grade from "./components/Grades/Grade";
import Agenda from "./components/Evenement/Agenda";
import ValidationAbsence from "./components/Respo/ValidationAbsence";
import ArchivProject from "./components/Project/ArchivProject";
import ValidationProject from "./components/Project/ValidationProject";
import ResetPassword from "./components/ResetPassword";
import Register from "./components/Register";
import Profil from "./components/dashboard/Profil";
import Timesheet from "./components/Timesheet/Timesheet";
import Statistiques from "./components/dashboard/Statistiques";
import Secteur from "./components/Secteur/Secteur";
import Role from "./components/Roles/Role";
import TermineProject from "./components/Project/TermineProject";
import Global from "./components/Timesheet/Global";
import Deblocage from "./components/Timesheet/Deblocage";
import EvalueProject from "./components/Project/EvalueProject";
import Evaluate from "./components/Project/Evaluate";
import Validation from "./components/Timesheet/Validation";
import Ouverture from "./components/Ouverture/Ouverture";
import ProfilUsers from "./components/Users/ProfilUsers";
import ListUsers from "./components/Users/ListUsers";
import Materiel from "./components/Inventaire/Materiel"
import vueChartkick from "vue-chartkick";
import 'chartkick/chart.js'

createApp({
        components: {
            Login,
            Acceuil,
            ListProject,
            ViewProject,
            ListAbsence,
            ListUsers,
            Service,
            Sponsor,
            Client,
            Grade,
            Agenda,
            ValidationAbsence,
            ArchivProject,
            ValidationProject,
            ResetPassword,
            Register,
            Profil,
            Timesheet,
            Statistiques,
            Secteur,
            Role,
            TermineProject,
            Global,
            Deblocage,
            EvalueProject,
            Evaluate,
            Validation,
            Ouverture,
            ProfilUsers,
            Materiel
        }
    }).use(router)
    .use(Toaster)
    .use(VueSlimScroll)
    .use(Chat)
    .use(vueChartkick)
    .mount('#app');