<template>
    <div class="main-wrapper">

        <Header/>


        <Sidebar/>


        <div class="page-wrapper">

            <div class="content container-fluid">

                <div class="page-header">
                    <div class="row">
                        <div class="col-sm-12">
                            <h3 class="page-title">Validation de projet</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">Tableau de bord</a></li>
                                <li class="breadcrumb-item active">Validation de projet</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="card tab-box">
                    <div class="row user-tabs">
                        <div class="col-lg-12 col-md-12 col-sm-12 line-tabs">
                            <ul class="nav nav-tabs nav-tabs-bottom">
                                <li class="nav-item"><a href="#emp_profile" data-toggle="tab" class="nav-link active">Projets
                                    non validés</a>
                                </li>
                                <li class="nav-item"><a href="#emp_projects" data-toggle="tab" class="nav-link">Projets
                                    validés</a>
                                </li>
                                <li class="nav-item"><a href="#bank_statutory" data-toggle="tab" class="nav-link">Tous
                                    les projets</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="tab-content">

                    <div id="emp_profile" class="pro-overview tab-pane fade show active">
                        <div class="row">
                            <template v-for="novalid in novalids" :key="novalid.id_projet">
                                <div class="col-lg-4 col-sm-6 col-md-4 col-xl-3">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="dropdown profile-action">
                                                <a aria-expanded="false" data-toggle="dropdown"
                                                   class="action-icon dropdown-toggle" href="#"><i
                                                    class="material-icons">more_vert</i></a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a data-target="#validate_project" data-toggle="modal" href="#"
                                                       class="dropdown-item" @click="getProject(novalid.id_projet)"><i
                                                        class="fa fa-check m-r-5"></i>
                                                        Valider</a>
                                                    <a data-target="#decline_project" data-toggle="modal" href="#"
                                                       class="dropdown-item" @click="getProject(novalid.id_projet)"><i
                                                        class="fa fa-close m-r-5"></i>
                                                        Refuser</a>
                                                </div>
                                            </div>
                                            <h4 class="project-title"><a href="">{{ novalid.nom_projet }}</a>
                                            </h4>
                                            <small class="block text-ellipsis m-b-15">
                                                <span class="text-xs">1</span> <span
                                                class="text-muted">open tasks, </span>
                                                <span class="text-xs">9</span> <span
                                                class="text-muted">tasks completed</span>
                                            </small>
                                            <p class="text-muted">
                                                {{ novalid.description }}
                                            </p>
                                            <div class="pro-deadline m-b-15">
                                                <div class="sub-title">
                                                    Date de fin:
                                                </div>
                                                <div class="text-muted">
                                                    {{ novalid.date_fin }}
                                                </div>
                                            </div>
                                            <div class="project-members m-b-15">
                                                <div>Sponsor {{ novalid.sponsors }} :</div>
                                                <ul class="team-members">
                                                    <li>
                                                        <a href="#" data-toggle="tooltip" title="">
                                                            <img alt="" src="assets/img/profiles/avatar-16.jpg"></a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="project-members m-b-15">
                                                <div>Chef de projet {{ novalid.user.chef }} :</div>
                                                <ul class="team-members">
                                                    <li>
                                                        <a href="#" data-toggle="tooltip" title="Jeffery Lalor">
                                                            <img alt="" src="assets/img/profiles/avatar-16.jpg"></a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="project-members m-b-15">
                                                <div>Equipe :</div>
                                                <ul class="team-members" v-for="utilisateur in novalid.users">
                                                    <li>
                                                        <a href="#" data-toggle="tooltip" title="John Doe">
                                                            <img alt="" src="assets/img/profiles/avatar-02.jpg">
                                                        </a>
                                                        {{ utilisateur.name }}
                                                    </li>
                                                </ul>
                                            </div>
                                            <p class="m-b-5">Progress <span class="text-success float-right">40%</span>
                                            </p>
                                            <div class="progress progress-xs mb-0">
                                                <div style="width: 40%" title="" data-toggle="tooltip"
                                                     role="progressbar"
                                                     class="progress-bar bg-success" data-original-title="40%"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </template>
                        </div>
                    </div>


                    <div class="tab-pane fade" id="emp_projects">
                        <div class="row">
                            <template v-for="valid in valids" :key="valid.id_projet">
                                <div class="col-lg-4 col-sm-6 col-md-4 col-xl-3">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="project-title"><a href="">{{ valid.nom_projet }}</a>
                                            </h4>
                                            <small class="block text-ellipsis m-b-15">
                                                <span class="text-xs">1</span> <span
                                                class="text-muted">open tasks, </span>
                                                <span class="text-xs">9</span> <span
                                                class="text-muted">tasks completed</span>
                                            </small>
                                            <p class="text-muted">
                                                {{ valid.description }}
                                            </p>
                                            <div class="pro-deadline m-b-15">
                                                <div class="sub-title">
                                                    Date de fin:
                                                </div>
                                                <div class="text-muted">
                                                    {{ valid.date_fin }}
                                                </div>
                                            </div>
                                            <div class="project-members m-b-15">
                                                <div>Sponsor {{ valid.sponsors }} :</div>
                                                <ul class="team-members">
                                                    <li>
                                                        <a href="#" data-toggle="tooltip" title="">
                                                            <img alt="" src="assets/img/profiles/avatar-16.jpg"></a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="project-members m-b-15">
                                                <div>Chef de projet {{ valid.user.chef }} :</div>
                                                <ul class="team-members">
                                                    <li>
                                                        <a href="#" data-toggle="tooltip" title="Jeffery Lalor">
                                                            <img alt="" src="assets/img/profiles/avatar-16.jpg"></a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="project-members m-b-15">
                                                <div>Equipe :</div>
                                                <ul class="team-members" v-for="utilisateur in valid.users">
                                                    <li>
                                                        <a href="#" data-toggle="tooltip" title="John Doe">
                                                            <img alt="" src="assets/img/profiles/avatar-02.jpg">
                                                        </a>
                                                        {{ utilisateur.name }}
                                                    </li>
                                                </ul>
                                            </div>
                                            <p class="m-b-5">Progress <span class="text-success float-right">40%</span>
                                            </p>
                                            <div class="progress progress-xs mb-0">
                                                <div style="width: 40%" title="" data-toggle="tooltip"
                                                     role="progressbar"
                                                     class="progress-bar bg-success" data-original-title="40%"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </template>
                        </div>
                    </div>


                    <div class="tab-pane fade" id="bank_statutory">
                        <div class="row">
                            <template v-for="projet in projets" :key="projet.id_projet">
                                <div class="col-lg-4 col-sm-6 col-md-4 col-xl-3">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="project-title"><a href="">{{ projet.nom_projet }}</a>
                                            </h4>
                                            <small class="block text-ellipsis m-b-15">
                                                <span class="text-xs">1</span> <span
                                                class="text-muted">open tasks, </span>
                                                <span class="text-xs">9</span> <span
                                                class="text-muted">tasks completed</span>
                                            </small>
                                            <p class="text-muted">{{ projet.description }}</p>
                                            <div class="pro-deadline m-b-15">
                                                <div class="sub-title">
                                                    Date de fin:
                                                </div>
                                                <div class="text-muted">
                                                    {{ projet.date_fin }}
                                                </div>
                                            </div>
                                            <div class="project-members m-b-15">
                                                <div>Sponsor {{ projet.sponsors }} :</div>
                                                <ul class="team-members">
                                                    <li>
                                                        <a href="#" data-toggle="tooltip" title="">
                                                            <img alt="" src="assets/img/profiles/avatar-16.jpg"></a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="project-members m-b-15">
                                                <div>Chef de projet {{ projet.user.chef }} :</div>
                                                <ul class="team-members">
                                                    <li>
                                                        <a href="#" data-toggle="tooltip" title="Jeffery Lalor">
                                                            <img alt="" src="assets/img/profiles/avatar-16.jpg"></a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="project-members m-b-15">
                                                <div>Equipe :</div>
                                                <ul class="team-members" v-for="utilisateur in projet.users">
                                                    <li>
                                                        <a href="#" data-toggle="tooltip" title="John Doe">
                                                            <img alt="" src="assets/img/profiles/avatar-02.jpg">
                                                        </a>
                                                        {{ utilisateur.name }}
                                                    </li>
                                                </ul>
                                            </div>
                                            <p class="m-b-5">Progress <span class="text-success float-right">40%</span>
                                            </p>
                                            <div class="progress progress-xs mb-0">
                                                <div style="width: 40%" title="" data-toggle="tooltip"
                                                     role="progressbar"
                                                     class="progress-bar bg-success" data-original-title="40%"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </template>
                        </div>
                    </div>

                </div>
            </div>

            <ValidateProject v-bind:projectoedit="projectoedit"></ValidateProject>
            <DeclineProject v-bind:projectoedit="projectoedit"></DeclineProject>

        </div>

    </div>
</template>

<script>
import Header from "../layouts/Header";
import Sidebar from "../layouts/Sidebar";
import axios from "axios";
import moment from "moment";
import ValidateProject from "./ValidateProject";
import DeclineProject from "./DeclineProject";

export default {
    data() {
        return {
            projets: {},
            novalids: {},
            valids: {},
            projectoedit: "",
        };
    },
    created() {
        this.fetchProject();
    },
    mounted() {
        setInterval(() => {
            axios
                .get('/api/all')
                .then(response => (this.projets = response.data))
                .catch(error => {
                    this.errors.push(error);
                });
        }, 2000);
    },
    methods: {
        getProject(id_projet) {
            axios
                .get('/api/projets/edit/' + id_projet)
                .then((response) => (this.projectoedit = response.data))
                // .then((response) => (console.log(response.data)))
                .catch((error) => console.log(error));
        },
        fetchProject() {
            this.error = this.users = null;
            this.loading = true;
            this.moment = moment;
            var that = this
            axios.all([
                axios.get('/api/all'),
                axios.get('/api/valid'),
                axios.get('/api/novalid'),
            ])
                .then(
                    axios.spread(
                        function (projets, valids, novalids) {
                            that.projets = projets.data;
                            that.valids = valids.data;
                            that.novalids = novalids.data;
                            // console.log(projets.data);
                        }
                    ))
        },
    },
    name: "ValidationProject",
    components: {DeclineProject, ValidateProject, Sidebar, Header}
}
</script>

<style scoped>

</style>
