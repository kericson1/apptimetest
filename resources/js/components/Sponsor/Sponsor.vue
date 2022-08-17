<template>
    <Header/>

    <Sidebar/>

    <div class="page-wrapper">

        <div class="content container-fluid">

            <div class="page-header">
                <div class="row align-items-center">
                    <div class="col">
                        <h3 class="page-title">Sponsors</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/home">Tableau de bord</a></li>
                            <li class="breadcrumb-item active">Sponsors</li>
                        </ul>
                    </div>
                    <div class="col-auto float-right ml-auto">
                        <a href="#" class="btn add-btn" data-toggle="modal" data-target="#add_designation"><i
                            class="fa fa-plus"></i> Ajouter sponsor</a>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-striped custom-table mb-0 datatable">
                            <thead>
                            <tr>
                                <th style="width: 30px;">#</th>
                                <th>Nom du sponsor</th>
                                <th>Type</th>
                                <th class="text-right">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <template v-for="sponsor in sponsors" :key="sponsor.id_sponsor">
                                <tr>
                                    <td></td>
                                    <td>{{ sponsor.name }} {{ sponsor.prenom }}</td>
                                    <td>{{ sponsor.type_sponsor }}</td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown"
                                               aria-expanded="false"><i class="material-icons">more_vert</i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#" data-toggle="modal"
                                                   data-target="#edit_designation"><i class="fa fa-pencil m-r-5"></i>
                                                    Modifier</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal"
                                                   data-target="#delete_designation" @click="getSponsors(sponsor.id_sponsor)"><i class="fa fa-close m-r-5"></i>
                                                    Désactiver</a>
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


        <AddSponsor/>


        <EditSponsor></EditSponsor>


        <DesactivateSponsor v-bind:sponsortoedit="sponsortoedit"></DesactivateSponsor>

    </div>
</template>

<script>
import Header from "../layouts/Header";
import Sidebar from "../layouts/Sidebar";
import AddSponsor from "./AddSponsor";
import axios from "axios";
import EditSponsor from "./EditSponsor";
import DesactivateSponsor from "./DesactivateSponsor";

export default {
    data() {
        return {
            sponsors: {},
            sponsortoedit: "",
        };
    },

    methods: {
        getSponsors(id_sponsor) {
            axios
                .get('/api/sponsors/edit/' + id_sponsor)
                .then((response) => (this.sponsortoedit = response.data))
                .catch((error) => console.log(error));
        },
    },

    created() {
        axios
            .get("/api/sponsors")
            .then((response) => (this.sponsors = response.data))
            .catch((error) => console.log(error));
    },
    name: "Sponsor",
    components: {DesactivateSponsor, EditSponsor, AddSponsor, Sidebar, Header}
}
</script>

<style scoped>

</style>
