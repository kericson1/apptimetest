<template>
  <div class="main-wrapper">
    <Header />

    <Sidebar />

    <div class="page-wrapper">
      <div class="content container-fluid">
        <div class="page-header">
          <div class="row align-items-center">
            <div class="col">
              <h3 class="page-title">Feuilles de temps</h3>
              <ul class="breadcrumb">
                <li class="breadcrumb-item">
                  <a href="index.html">Tableau de bord</a>
                </li>
                <li class="breadcrumb-item active">Feuille de temps global</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row filter-row">
          <div class="col-sm-6 col-md-3">
            <div class="form-group form-focus">
              <input type="date" class="form-control floating" v-model="time" />
              <label class="focus-label">Date de début </label>
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="form-group form-focus">
              <input type="date" class="form-control floating" v-model="fin" />
              <label class="focus-label">Date de fin</label>
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <a
              href="#"
              class="btn btn-success btn-block"
              @click="getTimesheet()"
              >Rechercher
            </a>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="table-responsive">
              <table class="table table-striped custom-table datatable">
                <thead>
                  <tr>
                    <th>Date</th>
                    <th>Projet</th>
                    <th>Tâche</th>
                    <th>Heures</th>
                    <th>Status</th>
                  </tr>
                </thead>
                <tbody>
                  <template
                    v-for="timesheet in timesheets"
                    :key="timesheet.id_timesheet"
                  >
                    <tr>
                      <td>
                        {{
                          moment(timesheet.date_timesheet)
                            .lang("fr")
                            .format("L")
                        }}
                      </td>
                      <td>{{ timesheet.nom_projet }}</td>
                      <td>
                        {{ timesheet.nom_tache }}
                      </td>

                      <td>{{ timesheet.heure_timesheet }}</td>
                      <td>
                        <a v-if="timesheet.statut === 0"
                          ><i class="fa fa-dot-circle-o text-danger"></i>
                          Non validé</a
                        >
                        <a v-else
                          ><i class="fa fa-dot-circle-o text-success"></i>
                          Validé</a
                        >
                      </td>
                    </tr>
                  </template>
                </tbody>
              </table>
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
import datepicker from "vue3-datepicker";
import moment from "moment";
export default {
  name: "Global",
  components: {
    Header,
    Sidebar,
    datepicker,
  },
  data() {
    return {
      show: false,
      showForm: false,
      debut: "",
      fin: "",
      user: "",
      time: "",
      timesheets: {},
    };
  },
  created() {
    this.getTimesheet();
  },
  methods: {
    getTimesheet() {
      this.moment = moment;
      axios
        .post("/api/getTimesheet", {
          time: this.time,
          fin: this.fin,
        })
        .then((response) => {
          this.timesheets = response.data;
        });
    },
  },
};
</script>