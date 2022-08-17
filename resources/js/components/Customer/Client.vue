<template>
    <div class="main-wrapper">

        <Header/>


        <Sidebar/>


        <div class="page-wrapper">

            <div class="content container-fluid">

                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <h3 class="page-title">Clients</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="/home">Tableau de bord</a></li>
                                <li class="breadcrumb-item active">Clients</li>
                            </ul>
                        </div>
                        <div class="col-auto float-right ml-auto">
                            <a href="#" class="btn add-btn" data-toggle="modal" data-target="#add_holiday"><i
                                class="fa fa-plus"></i> Ajouter client</a>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-striped custom-table mb-0">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nom</th>
                                    <th>Contact</th>
                                    <th>Email</th>
                                    <th class="text-right">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <template v-for="client in clients" :key="client.id_client">
                                    <tr class="holiday-upcoming">
                                        <td>7</td>
                                        <td>{{ client.nom_client }}</td>
                                        <td>{{ client.contact_client}}</td>
                                        <td>{{ client.email_client }}</td>
                                        <td class="text-right">
                                            <div class="dropdown dropdown-action">
                                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown"
                                                   aria-expanded="false"><i class="material-icons">more_vert</i></a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#" data-toggle="modal"
                                                       data-target="#edit_holiday"><i class="fa fa-pencil m-r-5"></i> Modifier</a>
                                                    <a class="dropdown-item" href="#" data-toggle="modal"
                                                       data-target="#delete_holiday"><i class="fa fa-trash-o m-r-5"></i> Désactiver</a>
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


            <AddClient/>


            <EditClient></EditClient>


            <div class="modal custom-modal fade" id="delete_holiday" role="dialog">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="form-header">
                                <h3>Delete Holiday</h3>
                                <p>Are you sure want to delete?</p>
                            </div>
                            <div class="modal-btn delete-action">
                                <div class="row">
                                    <div class="col-6">
                                        <a href="javascript:void(0);" class="btn btn-primary continue-btn">Delete</a>
                                    </div>
                                    <div class="col-6">
                                        <a href="javascript:void(0);" data-dismiss="modal"
                                           class="btn btn-primary cancel-btn">Cancel</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
</template>

<script>
import Header from "../layouts/Header";
import Sidebar from "../layouts/Sidebar";
import AddClient from "./AddClient";
import EditClient from "./EditClient";
import axios from "axios";
export default {
    data() {
        return {
            clients: {},
            clienttoedit: "",
        };
    },

    created() {
        axios
            .get("/api/clients")
            .then((response) => (this.clients = response.data))
            .catch((error) => console.log(error));
    },
    name: "Client",
    components: {EditClient, AddClient, Sidebar, Header}
}
</script>

<style scoped>

</style>
