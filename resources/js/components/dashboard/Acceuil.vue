<template>
  <div class="main-wrapper">
    <Header />

    <Sidebar />

    <div class="page-wrapper">
      <div class="content container-fluid">
        <div class="page-header">
          <div class="row">
            <div class="col-md-12">
              <div class="welcome-box">
                <div class="welcome-img">
                  <img alt="" src="assets/img/profiles/avatar-02.jpg" />
                </div>
                <div class="welcome-det">
                  <h3>
                    Bienvenue ,{{ user.civilite }} {{ user.name }}
                    {{ user.prenom }}
                  </h3>
                  <p>{{ timestamp }}</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
            <div class="card dash-widget bg-one">
              <div class="card-body">
                <h4>Projets</h4>
                <div class="db-ico">
                  <div class="db-left">
                    <h2 v-text="nbreprojets"></h2>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
            <div class="card dash-widget bg-two">
              <div class="card-body">
                <h4>Pôles</h4>
                <div class="db-ico">
                  <div class="db-left">
                    <h2 v-text="nbrepoles"></h2>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
            <div class="card dash-widget bg-three">
              <div class="card-body">
                <h4>Collaborateurs</h4>
                <div class="db-ico">
                  <div class="db-left">
                    <h2 v-text="nbreusers"></h2>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
            <div class="card dash-widget bg-four">
              <div class="card-body">
                <ul>
                  <li>
                    <h3>Presence</h3>
                    <h1>125</h1>
                  </li>
                  <li class="hr"></li>
                  <li>
                    <h3>Late</h3>
                    <h1>12</h1>
                  </li>
                  <li class="hr"></li>
                  <li>
                    <h3>Absent</h3>
                    <h1>32</h1>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-8 col-md-8">
            <section class="dash-section">
              <h1 class="dash-sec-title">Aujourd'hui</h1>
              <div class="dash-sec-content">
                <div class="dash-info-list">
                  <a href="#" class="dash-card text-danger">
                    <div class="dash-card-container">
                      <div class="dash-card-icon">
                        <i class="fa fa-hourglass-o"></i>
                      </div>
                      <div class="dash-card-content">
                        <p>Aucune feuille de temps remplie</p>
                      </div>
                    </div>
                  </a>
                </div>
                <div class="dash-info-list">
                  <a href="#" class="dash-card">
                    <div class="dash-card-container">
                      <div class="dash-card-icon">
                        <i class="fa fa-suitcase"></i>
                      </div>
                      <div class="dash-card-content">
                        <p>Aucune permission</p>
                      </div>
                    </div>
                  </a>
                </div>
                <div class="dash-info-list">
                  <a href="#" class="dash-card">
                    <div class="dash-card-container">
                      <div class="dash-card-icon">
                        <i class="fa fa-building-o"></i>
                      </div>
                      <div class="dash-card-content">
                        <p>Travail en présentiel</p>
                      </div>
                    </div>
                  </a>
                </div>
              </div>
            </section>
            <section class="dash-section">
              <h1 class="dash-sec-title">Demain</h1>
              <div class="dash-sec-content">
                <div class="dash-info-list">
                  <div class="dash-card">
                    <div class="dash-card-container">
                      <div class="dash-card-icon">
                        <i class="fa fa-suitcase"></i>
                      </div>
                      <div class="dash-card-content">
                        <p>Aucune permission</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </section>
          </div>
          <div class="col-lg-4 col-md-4">
            <div class="dash-sidebar">
              <section>
                <h5 class="dash-title">Projets</h5>
                <div class="card">
                  <div class="card-body">
                    <div class="time-list">
                      <div class="dash-stats-list">
                        <h4>71</h4>
                        <p>Total tâches</p>
                      </div>
                      <div class="dash-stats-list">
                        <h4>14</h4>
                        <p>Tâches en attente</p>
                      </div>
                    </div>
                    <div class="request-btn">
                      <a class="btn btn-primary" href="#"
                        >Voir les projets récents</a
                      >
                    </div>
                  </div>
                </div>
              </section>
              <section>
                <h5 class="dash-title">Passations des clés</h5>
                <div class="card">
                  <div class="card-body text-center">
                    <h4 class="holiday-title mb-0">Mon 20 May 2019 - Ramzan</h4>
                  </div>
                </div>
              </section>
              <section>
                <h5 class="dash-title">PROCHAIN JOUR FÉRIÉ</h5>
                <div class="card">
                  <div class="card-body text-center">
                    <h4 class="holiday-title mb-0">Mon 20 May 2019 - Ramzan</h4>
                  </div>
                </div>
              </section>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-md-12 col-lg-12 col-xl-4 d-flex">
            <div class="card flex-fill dash-statistics">
              <div class="card-body">
                <h5 class="card-title">Statistiques</h5>
                <div class="stats-list">
                  <div class="stats-info">
                    <p>
                      Projets en cours <strong>4 <small>/ 65</small></strong>
                    </p>
                    <div class="progress">
                      <div
                        class="progress-bar bg-primary"
                        role="progressbar"
                        style="width: 31%"
                        aria-valuenow="31"
                        aria-valuemin="0"
                        aria-valuemax="100"
                      ></div>
                    </div>
                  </div>
                  <div class="stats-info">
                    <p>
                      Projets archivés <strong>15 <small>/ 92</small></strong>
                    </p>
                    <div class="progress">
                      <div
                        class="progress-bar bg-warning"
                        role="progressbar"
                        style="width: 31%"
                        aria-valuenow="31"
                        aria-valuemin="0"
                        aria-valuemax="100"
                      ></div>
                    </div>
                  </div>
                  <div class="stats-info">
                    <p>
                      Projets terminés
                      <strong>85 <small>/ 112</small></strong>
                    </p>
                    <div class="progress">
                      <div
                        class="progress-bar bg-success"
                        role="progressbar"
                        style="width: 62%"
                        aria-valuenow="62"
                        aria-valuemin="0"
                        aria-valuemax="100"
                      ></div>
                    </div>
                  </div>
                  <div class="stats-info">
                    <p>
                      Tickets résolus <strong>190 <small>/ 212</small></strong>
                    </p>
                    <div class="progress">
                      <div
                        class="progress-bar bg-danger"
                        role="progressbar"
                        style="width: 62%"
                        aria-valuenow="62"
                        aria-valuemin="0"
                        aria-valuemax="100"
                      ></div>
                    </div>
                  </div>
                  <div class="stats-info">
                    <p>
                      Tickets non résolus
                      <strong>22 <small>/ 212</small></strong>
                    </p>
                    <div class="progress">
                      <div
                        class="progress-bar bg-info"
                        role="progressbar"
                        style="width: 22%"
                        aria-valuenow="22"
                        aria-valuemin="0"
                        aria-valuemax="100"
                      ></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-12 col-lg-6 col-xl-4 d-flex">
            <div class="card flex-fill">
              <div class="card-body">
                <h4 class="card-title">Tâches</h4>
                <div class="statistics">
                  <div class="row">
                    <div class="col-md-6 col-6 text-center">
                      <div class="stats-box mb-4">
                        <p>Tâches totales</p>
                        <h3>385</h3>
                      </div>
                    </div>
                    <div class="col-md-6 col-6 text-center">
                      <div class="stats-box mb-4">
                        <p>Tâche terminée</p>
                        <h3>19</h3>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="progress mb-4">
                  <div
                    class="progress-bar bg-purple"
                    role="progressbar"
                    style="width: 30%"
                    aria-valuenow="30"
                    aria-valuemin="0"
                    aria-valuemax="100"
                  >
                    30%
                  </div>
                  <div
                    class="progress-bar bg-warning"
                    role="progressbar"
                    style="width: 22%"
                    aria-valuenow="18"
                    aria-valuemin="0"
                    aria-valuemax="100"
                  >
                    22%
                  </div>
                  <div
                    class="progress-bar bg-success"
                    role="progressbar"
                    style="width: 24%"
                    aria-valuenow="12"
                    aria-valuemin="0"
                    aria-valuemax="100"
                  >
                    24%
                  </div>
                  <div
                    class="progress-bar bg-danger"
                    role="progressbar"
                    style="width: 26%"
                    aria-valuenow="14"
                    aria-valuemin="0"
                    aria-valuemax="100"
                  >
                    21%
                  </div>
                  <div
                    class="progress-bar bg-info"
                    role="progressbar"
                    style="width: 10%"
                    aria-valuenow="14"
                    aria-valuemin="0"
                    aria-valuemax="100"
                  >
                    10%
                  </div>
                </div>
                <div>
                  <p>
                    <i class="fa fa-dot-circle-o text-purple me-2"></i>Tâches
                    complètes <span class="float-end">166</span>
                  </p>
                  <p>
                    <i class="fa fa-dot-circle-o text-warning me-2"></i>Tâches
                    en cours <span class="float-end">115</span>
                  </p>
                  <p>
                    <i class="fa fa-dot-circle-o text-success me-2"></i>
                    Tâches terminées <span class="float-end">31</span>
                  </p>
                  <p>
                    <i class="fa fa-dot-circle-o text-danger me-2"></i>Tâches
                    totales <span class="float-end">47</span>
                  </p>
                  <p class="mb-0">
                    <i class="fa fa-dot-circle-o text-info me-2"></i>Tâches en
                    retard <span class="float-end">5</span>
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-12 col-lg-6 col-xl-4 d-flex">
            <div class="card flex-fill">
              <div class="card-body">
                <h4 class="card-title">
                  Salle de reunion
                  <span class="badge bg-inverse-danger ms-2">5</span>
                </h4>
                <div class="leave-info-box">
                  <div class="media d-flex align-items-center">
                    <a href="profile.html" class="avatar"
                      ><img alt="" src="assets/img/user.jpg"
                    /></a>
                    <div class="media-body flex-grow-1">
                      <div class="text-sm my-0">Martin Lewis</div>
                    </div>
                  </div>
                  <div class="row align-items-center mt-3">
                    <div class="col-6">
                      <h6 class="mb-0">4 Sep 2019</h6>
                      <span class="text-sm text-muted">Leave Date</span>
                    </div>
                    <div class="col-6 text-end">
                      <span class="badge bg-inverse-danger">Pending</span>
                    </div>
                  </div>
                </div>
                <div class="leave-info-box">
                  <div class="media d-flex align-items-center">
                    <a href="profile.html" class="avatar"
                      ><img alt="" src="assets/img/user.jpg"
                    /></a>
                    <div class="media-body flex-grow-1">
                      <div class="text-sm my-0">Martin Lewis</div>
                    </div>
                  </div>
                  <div class="row align-items-center mt-3">
                    <div class="col-6">
                      <h6 class="mb-0">4 Sep 2019</h6>
                      <span class="text-sm text-muted">Leave Date</span>
                    </div>
                    <div class="col-6 text-end">
                      <span class="badge bg-inverse-success">Approved</span>
                    </div>
                  </div>
                </div>
                <div class="load-more text-center">
                  <a class="text-dark" href="javascript:void(0);">Load More</a>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-md-12 col-lg-9">
            <div class="row d-flex">
              <div class="col-md-6 text-center d-flex">
                <div class="card chart-box flex-fill">
                  <div class="card-header">
                    <h3 class="card-title">Project Tracked</h3>
                  </div>
                  <div class="card-body">
                    <Bar
                      :chart-options="chartOptions"
                      :chart-data="chartData"
                    />
                  </div>
                </div>
              </div>
              <div class="col-md-6 text-center d-flex">
                <div class="card chart-box flex-fill">
                  <div class="card-header">
                    <h3 class="card-title">Evaluation progress</h3>
                  </div>
                  <div class="card-body">
                    <Pie />
                  </div>
                </div>
              </div>
              <div class="col-md-6 text-center d-flex">
                <div class="card chart-box flex-fill">
                  <div class="card-header">
                    <h3 class="card-title">Collaborateur</h3>
                  </div>
                  <div class="card-body">
                    <Doughnut />
                  </div>
                </div>
              </div>
              <div class="col-md-6 text-center d-flex">
                <div class="card chart-box flex-fill">
                  <div class="card-body">
                    <div id="calendar"></div>
                  </div>
                </div>
              </div>
              <div class="col-md-12">
                <div class="card card-table mb-0">
                  <div class="card-header">
                    <h3 class="card-title mb-0">Performance Listed</h3>
                    <select class="select">
                      <option>By Employee</option>
                      <option>By Customer</option>
                    </select>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table custom-table table-nowrap mb-0">
                        <thead>
                          <tr>
                            <th>#</th>
                            <th>Employee Name</th>
                            <th>Age</th>
                            <th>Department</th>
                            <th>Project</th>
                            <th>Discipline</th>
                            <th>Total Score</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>A12</td>
                            <td>John Deo</td>
                            <td>22</td>
                            <td>Marketing</td>
                            <td>27</td>
                            <td>100%</td>
                            <td>9.5</td>
                          </tr>
                          <tr>
                            <td>A12</td>
                            <td>Bobby</td>
                            <td>25</td>
                            <td>HR</td>
                            <td>10</td>
                            <td>95%</td>
                            <td>9.0</td>
                          </tr>
                          <tr>
                            <td>A12</td>
                            <td>Saami Al</td>
                            <td>23</td>
                            <td>Finance</td>
                            <td>13</td>
                            <td>90%</td>
                            <td>8.5</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-12 col-lg-3">
            <div class="media event-media">
              <img
                src="assets/img/profiles/avatar-01.jpg"
                class="mr-3"
                alt="User"
              />
              <div class="media-body">
                <h4>TODAY EVENT</h4>
                <h5>John’s BirthDay</h5>
              </div>
            </div>
            <div class="absent-emp">
              <h3>Absent Employee</h3>
              <div class="media">
                <img
                  src="assets/img/profiles/avatar-02.jpg"
                  class="mr-3"
                  alt="User"
                />
                <div class="media-body">
                  <h4>Bobby</h4>
                  <h5>Medical Leave</h5>
                </div>
              </div>
              <div class="media">
                <img
                  src="assets/img/profiles/avatar-03.jpg"
                  class="mr-3"
                  alt="User"
                />
                <div class="media-body">
                  <h4>Yoga</h4>
                  <h5>Family Matter</h5>
                </div>
              </div>
              <div class="media">
                <img
                  src="assets/img/profiles/avatar-04.jpg"
                  class="mr-3"
                  alt="User"
                />
                <div class="media-body">
                  <h4>Smith Pindo</h4>
                  <h5>Medical Leave</h5>
                </div>
              </div>
              <div class="media">
                <img
                  src="assets/img/profiles/avatar-05.jpg"
                  class="mr-3"
                  alt="User"
                />
                <div class="media-body">
                  <h4>Kelen</h4>
                  <h5>Vacation</h5>
                </div>
              </div>
              <div class="media">
                <img
                  src="assets/img/profiles/avatar-02.jpg"
                  class="mr-3"
                  alt="User"
                />
                <div class="media-body">
                  <h4>Bobby</h4>
                  <h5>Medical Leave</h5>
                </div>
              </div>
            </div>
            <div class="job-app jb-bg-one">
              <div class="jb-txt">
                <h5>Accepted Job Application</h5>
                <h4>84 <span>/336</span></h4>
              </div>
              <div class="prog-div">
                <div class="progress org">
                  <span class="progress-left">
                    <span class="progress-bar"></span>
                  </span>
                  <span class="progress-right">
                    <span class="progress-bar"></span>
                  </span>
                  <div class="progress-value">90%</div>
                </div>
              </div>
            </div>
            <div class="job-app jb-bg-two">
              <div class="jb-txt">
                <h5>Rejected Job Application</h5>
                <h4>172 <span>/336</span></h4>
              </div>
              <div class="prog-div">
                <div class="progress org">
                  <span class="progress-left">
                    <span class="progress-bar"></span>
                  </span>
                  <span class="progress-right">
                    <span class="progress-bar"></span>
                  </span>
                  <div class="progress-value">90%</div>
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
import Pie from "./Pie";
import Doughnut from "./Doughnut";
import moment from "moment";
import axios from "axios";
import { Bar } from "vue-chartjs";
import {
  Chart as ChartJS,
  Title,
  Tooltip,
  Legend,
  BarElement,
  ArcElement,
  CategoryScale,
  LinearScale,
} from "chart.js";

ChartJS.register(
  Title,
  Tooltip,
  Legend,
  BarElement,
  ArcElement,
  CategoryScale,
  LinearScale
);
export default {
  props: {
    chartId: {
      type: String,
      default: "pie-chart",
    },
    datasetIdKey: {
      type: String,
      default: "label",
    },
    width: {
      type: Number,
      default: 400,
    },
    height: {
      type: Number,
      default: 400,
    },
    cssClasses: {
      default: "",
      type: String,
    },
    styles: {
      type: Object,
      default: () => {},
    },
    plugins: {
      type: Object,
      default: () => {},
    },
  },
  data() {
    return {
      graphusers: {},
      chartData: {
        labels: ["January", "February", "March", "Avril"],
        datasets: [{ data: [40, 20, 12, 55] }],
      },
      chartOptions: {
        responsive: true,
        maintainAspectRatio: false,
      },
      timestamp: "",
      user: "",
    };
  },
  mounted() {
    setInterval(this.getNow, 1000);
    this.fetchDash();
  },
  methods: {
    fetchDash() {
      this.error = this.users = null;
      this.loading = true;
      this.moment = moment;
      var that = this;
      axios
        .all([
          axios.get("/api/nbreprojets"),
          axios.get("/api/nbrepoles"),
          axios.get("/api/nbreusers"),
          axios.get("/api/user"),
          // axios.get("/api/graphusers"),
        ])
        .then(
          axios.spread(function (nbreprojets, nbrepoles, nbreusers, user) {
            that.nbreprojets = nbreprojets.data;
            that.nbrepoles = nbrepoles.data;
            that.nbreusers = nbreusers.data;
            that.user = user.data;
            // that.graphusers = graphusers.data;
            // console.log(nbreprojets.data);
          })
        );
    },
    getNow: function () {
      const today = new Date();
      const date =
        today.getFullYear() +
        "-" +
        (today.getMonth() + 1) +
        "-" +
        today.getDate();
      const time =
        today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
      const dateTime = date + " " + time;
      this.timestamp = dateTime;
    },
  },
  name: "Acceuil",
  components: { Sidebar, Header, Bar, Pie, Doughnut },
};
</script>

<style scoped>
</style>
