<template>
    <Header/>

    <Sidebar/>
    <div class="page-wrapper">

        <div class="content container-fluid">

            <div class="page-header">
                <div class="row align-items-center">
                    <div class="col">
                        <h3 class="page-title">Grades</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/home">Tableau de bord</a></li>
                            <li class="breadcrumb-item active">Grades</li>
                        </ul>
                    </div>
                    <div class="col-auto float-right ml-auto">
                        <a href="#" class="btn add-btn" data-toggle="modal" data-target="#add_grade"><i
                            class="fa fa-plus"></i> Ajouter grade</a>
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
                                <th class="text-right">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <template v-for="grade in grades" :key="grade.id_grade">
                                <tr class="holiday-upcoming">
                                    <td>7</td>
                                    <td>{{ grade.nom_grade }}</td>
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


        <AddGrade/>


    </div>
</template>

<script>
import AddGrade from "./AddGrade";
import Header from "../layouts/Header";
import Sidebar from "../layouts/Sidebar";
import axios from "axios";
export default {
    data() {
        return {
            grades: {},
        };
    },

    created() {
        axios
            .get("/api/grades")
            .then((response) => (this.grades = response.data))
            .catch((error) => console.log(error));
    },
    name: "Grade",
    components: {Sidebar, Header, AddGrade}
}
</script>

<style scoped>

</style>
