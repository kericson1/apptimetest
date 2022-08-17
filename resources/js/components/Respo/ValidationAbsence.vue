<template>
    <div class="main-wrapper">

        <Header/>


        <Sidebar/>


        <div class="page-wrapper">

            <div class="content container-fluid">

                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <h3 class="page-title">Validation des absences</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="">Tableau de bord</a></li>
                                <li class="breadcrumb-item active">validation des absences</li>
                            </ul>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-3">
                        <div class="stats-info">
                            <h6>Today Presents</h6>
                            <h4>12 / 60</h4>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="stats-info">
                            <h6>Planned Leaves</h6>
                            <h4>8 <span>Today</span></h4>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="stats-info">
                            <h6>Unplanned Leaves</h6>
                            <h4>0 <span>Today</span></h4>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="stats-info">
                            <h6>Pending Requests</h6>
                            <h4>12</h4>
                        </div>
                    </div>
                </div>


                <div class="row filter-row">
                    <div class="col-sm-6 col-md-3 col-lg-3 col-xl-2 col-12">
                        <div class="form-group form-focus">
                            <input type="text" class="form-control floating">
                            <label class="focus-label">Employee Name</label>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3 col-lg-3 col-xl-2 col-12">
                        <div class="form-group form-focus select-focus">
                            <select class="select floating">
                                <option> -- Select --</option>
                                <option>Casual Leave</option>
                                <option>Medical Leave</option>
                                <option>Loss of Pay</option>
                            </select>
                            <label class="focus-label">Leave Type</label>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3 col-lg-3 col-xl-2 col-12">
                        <div class="form-group form-focus select-focus">
                            <select class="select floating">
                                <option> -- Select --</option>
                                <option> Pending</option>
                                <option> Approved</option>
                                <option> Rejected</option>
                            </select>
                            <label class="focus-label">Leave Status</label>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3 col-lg-3 col-xl-2 col-12">
                        <div class="form-group form-focus">
                            <div class="input-group date" id="datetimepicker5" data-target-input="nearest">
                                <input type="text" class="form-control datetimepicker-input"
                                       data-target="#datetimepicker5">
                                <div class="input-group-append" data-target="#datetimepicker5"
                                     data-toggle="datetimepicker">
                                    <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                </div>
                            </div>
                            <label class="focus-label">From</label>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3 col-lg-3 col-xl-2 col-12">
                        <div class="form-group form-focus">
                            <div class="input-group date" id="datetimepicker6" data-target-input="nearest">
                                <input type="text" class="form-control datetimepicker-input"
                                       data-target="#datetimepicker6">
                                <div class="input-group-append" data-target="#datetimepicker6"
                                     data-toggle="datetimepicker">
                                    <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                </div>
                            </div>
                            <label class="focus-label">To</label>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3 col-lg-3 col-xl-2 col-12">
                        <a href="#" class="btn btn-success btn-block"> Search </a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-striped custom-table mb-0 datatable">
                                <thead>
                                <tr>
                                    <th>Collaborateur</th>
                                    <th>Type de permission</th>
                                    <th>Du</th>
                                    <th>Au</th>
                                    <th>Nombre de jours</th>
                                    <th>Motif</th>
                                    <th class="text-center">Status</th>
                                    <th class="text-right">Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <template>
                                <tr>
                                        <td>
                                            <h2 class="table-avatar">
                                                <a href="profile-1.html" class="avatar">
                                                    <img alt="" src="assets/img/profiles/avatar-09-1.jpg"></a>
                                                <a href="#">Richard Miles <span>Web Developer</span></a>
                                            </h2>
                                        </td>
                                        <td>Casual Leave</td>
                                        <td>8 Mar 2019</td>
                                        <td>9 Mar 2019</td>
                                        <td>2 days</td>
                                        <td>Going to Hospital</td>
                                        <td class="text-center">
                                            <div class="dropdown action-label">
                                                <a class="btn btn-white btn-sm btn-rounded dropdown-toggle" href="#"
                                                   data-toggle="dropdown" aria-expanded="false">
                                                    <i class="fa fa-dot-circle-o text-purple"></i> New
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i
                                                        class="fa fa-dot-circle-o text-purple"></i> New</a>
                                                    <a class="dropdown-item" href="#"><i
                                                        class="fa fa-dot-circle-o text-info"></i> Pending</a>
                                                    <a class="dropdown-item" href="#" data-toggle="modal"
                                                       data-target="#approve_leave"><i
                                                        class="fa fa-dot-circle-o text-success"></i> Approved</a>
                                                    <a class="dropdown-item" href="#"><i
                                                        class="fa fa-dot-circle-o text-danger"></i> Declined</a>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-right">
                                            <a href="#" data-toggle="modal"
                                               data-target="#edit_leave"><i class="fa fa-pencil m-r-5"></i></a>
                                        </td>
                                    </tr>
                                </template>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


            <ModalValidationAbsence/>

        </div>

    </div>
</template>

<script>
import Header from "../layouts/Header";
import Sidebar from "../layouts/Sidebar";
import ModalValidationAbsence from "./ModalValidationAbsence";
import axios from "axios";

export default {
    // data() {
    //     return {
    //         loading: true,
    //         conges: {},
    //         error: null,
    //         holidaytoedit: ""
    //     };
    // },
    // created() {
    //     this.fetchConge();
    // },
    // mounted() {
    //     setInterval(() => {
    //         axios
    //             .get('/api/conges/responsa')
    //             .then(response => (this.conges = response.data))
    //             .catch(error => {
    //                 this.errors.push(error);
    //             });
    //     }, 2000);
    // },
    // methods: {
    //     getConges(id_conge) {
    //         axios
    //             .get('/api/conges/edit/' + id_conge)
    //             .then((response) => (this.holidaytoedit = response.data))
    //             .catch((error) => console.log(error));
    //     },
    //     fetchConge() {
    //         this.error = this.conges = null;
    //         this.loading = true;
    //         axios
    //             .get('/api/conges')
    //             .then(response => {
    //                 this.loading = true;
    //                 this.conges = response.data;
    //             }).catch(error => {
    //             this.loading = false;
    //             this.error = error.response.data.message || error.message;
    //         });
    //     }
    // },
    name: "ValidationAbsence",
    components: {ModalValidationAbsence, Sidebar, Header}
}
</script>

<style scoped>

</style>
