<template>
    <div class="main-wrapper">

        <Header/>

        <Sidebar/>


        <div class="page-wrapper">

            <div class="content container-fluid">

                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <h3 class="page-title">Pôles</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="/home">Tableau de bord</a></li>
                                <li class="breadcrumb-item active">Pôles</li>
                            </ul>
                        </div>
                        <div class="col-auto float-right ml-auto">
                            <a href="#" class="btn add-btn" data-toggle="modal" data-target="#add_department"><i
                                class="fa fa-plus"></i> Ajouter pôle</a>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <table class="table table-striped custom-table mb-0 datatable">
                                <thead>
                                <tr>
                                    <th style="width: 30px;">#</th>
                                    <th>Nom du pôle</th>
                                    <th class="text-right">Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <template v-for="service in services" :key="service.id_service">
                                    <tr>
                                        <td>{{ service.id_service }}</td>
                                        <td>{{ service.nom_service }}</td>
                                        <td class="text-right">
                                            <div class="dropdown dropdown-action">
                                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown"
                                                   aria-expanded="false"><i class="material-icons">more_vert</i></a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#" data-toggle="modal"
                                                       data-target="#edit_department"  @click="getServices(service.id_service)"><i class="fa fa-pencil m-r-5"></i>
                                                        Modifier</a>
                                                    <a class="dropdown-item" href="#" data-toggle="modal"
                                                       data-target="#delete_department" @click="getServices(service.id_service)"><i
                                                        class="fa fa-trash-o m-r-5"></i>
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


            <AddService/>


            <EditService v-bind:servicetoedit="servicetoedit"></EditService>


            <DeleteService v-bind:servicetoedit="servicetoedit"></DeleteService>

        </div>

    </div>
</template>

<script>
import Header from "../layouts/Header";
import Sidebar from "../layouts/Sidebar";
import AddService from "./AddService";
import EditService from "./EditService";
import DeleteService from "./DeleteService";
import axios from "axios";

export default {
    data() {
        return {
            services: {},
            servicetoedit: "",
        };
    },

    methods: {
        getServices(id_service) {
            axios
                .get('/api/services/edit/' + id_service)
                .then((response) => (this.servicetoedit = response.data))
                .catch((error) => console.log(error));
        },
    },
    created() {
        axios
            .get("/api/services")
            .then((response) => (this.services = response.data))
            .catch((error) => console.log(error));
    },
    name: "Service",
    components: {DeleteService, EditService, AddService, Sidebar, Header}
}
</script>

<style scoped>

</style>
