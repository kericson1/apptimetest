<template>
    <div class="main-wrapper">

        <Header/>


        <Sidebar/>


        <div class="page-wrapper">

            <div class="content container-fluid">

                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <h3 class="page-title">Absences</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">Tableau de bord</a></li>
                                <li class="breadcrumb-item active">Absences</li>
                            </ul>
                        </div>
                        <div class="col-auto float-right ml-auto">
                            <a href="#" class="btn add-btn" data-toggle="modal" data-target="#add_leave"><i
                                class="fa fa-plus"></i> Demander une permission</a>
                        </div>
                    </div>
                </div>


                <!--                <div class="row">-->
                <!--                    <div class="col-md-3">-->
                <!--                        <div class="stats-info">-->
                <!--                            <h6>Annual Leave</h6>-->
                <!--                            <h4>12</h4>-->
                <!--                        </div>-->
                <!--                    </div>-->
                <!--                    <div class="col-md-3">-->
                <!--                        <div class="stats-info">-->
                <!--                            <h6>Medical Leave</h6>-->
                <!--                            <h4>3</h4>-->
                <!--                        </div>-->
                <!--                    </div>-->
                <!--                    <div class="col-md-3">-->
                <!--                        <div class="stats-info">-->
                <!--                            <h6>Other Leave</h6>-->
                <!--                            <h4>4</h4>-->
                <!--                        </div>-->
                <!--                    </div>-->
                <!--                    <div class="col-md-3">-->
                <!--                        <div class="stats-info">-->
                <!--                            <h6>Remaining Leave</h6>-->
                <!--                            <h4>5</h4>-->
                <!--                        </div>-->
                <!--                    </div>-->
                <!--                </div>-->

                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-striped custom-table mb-0 datatable">
                                <thead>
                                <tr>
                                    <th>type d'absence</th>
                                    <th>Du</th>
                                    <th>Au</th>
                                    <th>Nbre de jours</th>
                                    <th>Motif</th>
                                    <th class="text-center">Etat</th>
                                    <th>Date de retour</th>
                                    <th class="text-right">Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <template v-for="conge in conges" :key="conge.id_conge">
                                    <tr>
                                        <td v-text="conge.type_conge"></td>
                                        <td>8 Mar 2019</td>
                                        <td>9 Mar 2019</td>
                                        <td v-if="conge.duree === 0">{{ conge.duree }} jour</td>
                                        <td v-else>{{ conge.duree }} jours</td>
                                        <td v-text="conge.motif"></td>
                                        <td class="text-center" v-if="conge.etat ==='ENCOURS' ">
                                            <div class="action-label">
                                                <a class="btn btn-white btn-sm btn-rounded" href="javascript:void(0);">
                                                    <i class="fa fa-dot-circle-o text-dark"></i> ENCOURS
                                                </a>
                                            </div>
                                        </td>
                                        <td class="text-center" v-if="conge.etat === 'ACCEPTER'">
                                            <div class="action-label">
                                                <a class="btn btn-white btn-sm btn-rounded" href="javascript:void(0);">
                                                    <i class="fa fa-dot-circle-o text-success"></i> ACCEPTER
                                                </a>
                                            </div>
                                        </td>
                                        <td class="text-center" v-if="conge.etat === 'VALIDER'">
                                            <div class="action-label">
                                                <a class="btn btn-white btn-sm btn-rounded" href="javascript:void(0);">
                                                    <i class="fa fa-dot-circle-o text-sucess"></i> VALIDER
                                                </a>
                                            </div>
                                        </td>
                                        <td class="text-center" v-if="conge.etat === 'REFUSER'">
                                            <div class="action-label">
                                                <a class="btn btn-white btn-sm btn-rounded" href="javascript:void(0);">
                                                    <i class="fa fa-dot-circle-o text-danger"></i> REFUSER
                                                </a>
                                            </div>
                                        </td>
                                        <td></td>
                                        <td class="text-right">
                                            <div class="dropdown dropdown-action">
                                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown"
                                                   aria-expanded="false"><i class="material-icons">more_vert</i></a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#" data-toggle="modal"
                                                       data-target="#edit_leave" @click="getConges(conge.id_conge)">
                                                        <i class="fa fa-pencil m-r-5"></i> Modifier
                                                    </a>
                                                    <a class="dropdown-item" href="#" data-toggle="modal"
                                                       data-target="#delete_approve" @click="getConges(conge.id_conge)"><i class="fa fa-trash-o m-r-5"></i>
                                                        Supprimer</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </template>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <AddAbsence/>
            <EditAbsence v-bind:holidaytoedit="holidaytoedit"></EditAbsence>
            <DeleteAbsence v-bind:holidaytoedit="holidaytoedit"></DeleteAbsence>

        </div>

    </div>
</template>

<script>
import Header from "../layouts/Header";
import Sidebar from "../layouts/Sidebar";
import AddAbsence from "./AddAbsence";
import EditAbsence from "./EditAbsence";
import DeleteAbsence from "./DeleteAbsence";
import { createToaster } from "@meforma/vue-toaster";
// import $ from "jquery";

const toaster = createToaster({
  /* options */
});
import axios from "axios";

export default {
    data() {
        return {
            loading: true,
            conges: {},
            error: null,
            holidaytoedit: ""
        };
    },
    // created() {
    //     this.fetchConge();
    // },
    mounted() {
        this.fetchConge();
        setInterval(() => {
            axios
                .get('/api/conges')
                .then(response => (this.conges = response.data))
                .catch(error => {
                    this.errors.push(error);
                });
        }, 2000);
        
    },
    methods: {
        getConges(id_conge) {
            axios
                .get('/api/conges/edit/' + id_conge)
                .then((response) => (this.holidaytoedit = response.data))
                .catch((error) => console.log(error));
        },
        fetchConge() {
            this.error = this.conges = null;
            this.loading = true;
            axios
                .get('/api/conges')
                .then(response => {
                    this.loading = true;
                    this.conges = response.data;
                }).catch(error => {
                this.loading = false;
                this.error = error.response.data.message || error.message;
            });
        }
    },
    name: "ListAbsence",
    components: {DeleteAbsence, EditAbsence, AddAbsence, Sidebar, Header}
}
</script>

<style scoped>

</style>
