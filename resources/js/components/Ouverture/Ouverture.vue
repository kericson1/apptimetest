<template>
  <div class="main-wrapper">
    <Header />

    <Sidebar />
    <div class="page-wrapper">
      <div class="content container-fluid">
        <!-- Page Header -->
        <div class="page-header">
          <div class="row">
            <div class="col-sm-12">
              <h3 class="page-title">Ouverture et fermeture des bureaux</h3>
              <ul class="breadcrumb">
                <li class="breadcrumb-item">
                  <a href="">Tableau de bord</a>
                </li>
                <li class="breadcrumb-item active">
                  Ouverture et fermeture des bureaux
                </li>
              </ul>
            </div>
          </div>
        </div>
        <!-- /Page Header -->

        <div class="row">
          <div class="col-md-4">
            <div class="card punch-status">
              <div class="card-body">
                <h5 class="card-title">Ouverture & fermeture</h5>
                <form>
                
                  <div class="punch-det">
                    <h6>Date et heure actuelle</h6>
                   {{ timestamp }}
                    <p></p>
                  </div>
                  <div class="punch-info">
                    <div class="punch-hours">
                      <span>Bonjour</span>
                      <span>Bonsoir</span>
                    </div>
                  </div>
                  <div class="punch-btn-section">
                    <button type="submit" class="btn btn-primary punch-btn">
                      Prendre
                    </button>
                  </div>
                  <div class="punch-btn-section">
                    <button type="submit" class="btn btn-primary punch-btn">
                      Déposer
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>

          <div class="col-md-8">
            <div class="card recent-activity">
              <div class="table-responsive">
                <table class="table table-striped custom-table mb-0">
                  <thead>
                    <tr>
                      <th>Nom</th>
                      <th>Prénom(s)</th>
                      <th>Poste</th>
                      <th>Date de prise</th>
                      <th>Heure de prise</th>
                      <th>Date de remise</th>
                      <th>Heure de remise</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- /Page Content -->
    </div>
  </div>
</template>
<script>
import Header from "../layouts/Header";
import Sidebar from "../layouts/Sidebar";
import datepicker from "vue3-datepicker";
import moment from "moment";
export default {
  name: "Ouverture",
  components: {
    Header,
    Sidebar,
    datepicker,
  },
  data() {
    return {
      timestamp: "",
    };
  },
  created() {
   setInterval(this.getNow, 1000);
  },
  methods: {
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
};</script>