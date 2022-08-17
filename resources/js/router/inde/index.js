import { createRouter, createWebHistory } from "vue-router";
import Login from "../../components/Login.vue";
import Acceuil from "../../components/dashboard/Acceuil";
import ListProject from "../../components/Project/ListProject";
import ViewProject from "../../components/Project/ViewProject";
import ListAbsence from "../../components/Absences/ListAbsence";
import ListUsers from "../../components/Users/ListUsers";
import Service from "../../components/Poles/Service";
import Sponsor from "../../components/Sponsor/Sponsor";
import Client from "../../components/Customer/Client";
import Grade from "../../components/Grades/Grade";
import Agenda from "../../components/Evenement/Agenda";
import ValidationAbsence from "../../components/Respo/ValidationAbsence";
import ArchivProject from "../../components/Project/ArchivProject";
import TermineProject from "../../components/Project/TermineProject";
import ValidationProject from "../../components/Project/ValidationProject";
import ResetPassword from "../../components/ResetPassword";
import Register from "../../components/Register";
import Profil from "../../components/dashboard/Profil";
import Timesheet from "../../components/Timesheet/Timesheet";
import Statistiques from "../../components/dashboard/Statistiques";
import Secteur from "../../components/Secteur/Secteur";
import Role from "../../components/Roles/Role";
import Global from "../../components/Timesheet/Global";
import Deblocage from "../../components/Timesheet/Deblocage";
import EvalueProject from "../../components/Project/EvalueProject";
import Evaluate from "../../components/Project/Evaluate";
import Validation from "../../components/Timesheet/Validation";
import Ouverture from "../../components/Ouverture/Ouverture";
import ProfilUsers from "../../components/Users/ProfilUsers";
import Materiel from "../../components/Inventaire/Materiel"

const routes = [{
        path: '/',
        name: 'welcome',
        component: Login
    },
    {
        path: '/dashboard',
        name: 'Acceuil',
        component: Acceuil,
        beforeEnter: (to, form, next) => {
            axios.get('/api/athenticated').then(() => {
                next()
            }).catch(() => {
                return next({ name: 'welcome' })
            })
        }
    },
    {
        path: '/listproject',
        name: 'ListProject',
        component: ListProject,
        beforeEnter: (to, form, next) => {
            axios.get('/api/athenticated').then(() => {
                next()
            }).catch(() => {
                return next({ name: 'welcome' })
            })
        }
    },
    {
        path: '/archivproject',
        name: 'ArchivProject',
        component: ArchivProject,
        beforeEnter: (to, form, next) => {
            axios.get('/api/athenticated').then(() => {
                next()
            }).catch(() => {
                return next({ name: 'welcome' })
            })
        }
    },
    {
        path: '/viewproject/:id_projet',
        name: 'ViewProject',
        component: ViewProject,
        props: true
    },
    {
        path: '/listabsence',
        name: 'ListAbsence',
        component: ListAbsence
    },
    {
        path: '/listusers',
        name: 'ListUsers',
        component: ListUsers
    },
    {
        path: '/service',
        name: 'Service',
        component: Service
    },
    {
        path: '/sponsor',
        name: 'Sponsor',
        component: Sponsor
    },
    {
        path: '/client',
        name: 'Client',
        component: Client
    },
    {
        path: '/grade',
        name: 'Grade',
        component: Grade
    },
    {
        path: '/agenda',
        name: 'Agenda',
        component: Agenda
    },
    {
        path: '/validationabsence',
        name: 'ValidationAbsence',
        component: ValidationAbsence
    },
    {
        path: '/validationprojet',
        name: 'ValidationProject',
        component: ValidationProject
    },
    {
        path: '/resetpassword',
        name: 'ResetPassword',
        component: ResetPassword
    },
    {
        path: '/register',
        name: 'Register',
        component: Register
    },
    {
        path: '/profil',
        name: 'Profil',
        component: Profil
    },
    {
        path: '/timesheet',
        name: 'Timesheet',
        component: Timesheet
    },
    {
        path: '/statistiques',
        name: 'Statistiques',
        component: Statistiques
    },
    {
        path: '/secteur',
        name: 'Secteur',
        component: Secteur
    },
    {
        path: '/role',
        name: 'Role',
        component: Role
    },
    {
        path: '/termineproject',
        name: 'TermineProject',
        component: TermineProject
    },
    {
        path: '/global',
        name: 'Global',
        component: Global
    },
    {
        path: '/deblocage',
        name: 'Deblocage',
        component: Deblocage
    },
    {
        path: '/evaluateproject',
        name: 'EvalueProject',
        component: EvalueProject
    },
    {
        path: '/evaluate',
        name: 'Evaluate',
        component: Evaluate
    },
    {
        path: '/validation',
        name: 'Validation',
        component: Validation
    },
    {
        path: '/ouverture',
        name: 'Ouverture',
        component: Ouverture
    },
    {
        path: '/profil/:id',
        name: 'ProfilUsers',
        component: ProfilUsers,
        props: true
    },
    {
        path: '/materiel',
        name: 'Materiel',
        component: Materiel,
    },
];

export default createRouter({
    history: createWebHistory(),
    routes
})