<template>
  <div class="main-wrapper">
    <Header />

    <Sidebar />

    <div class="page-wrapper">
      <div class="content container-fluid">
        <div class="page-header">
          <div class="row align-items-center">
            <div class="col">
              <h3 class="page-title">Projets</h3>
              <ul class="breadcrumb">
                <a href="/dashboard" class="breadcrumb-item">Tableau de bord</a>
                <li class="breadcrumb-item active">Projets archivés</li>
              </ul>
            </div>
          </div>
        </div>

        <div class="row filter-row">
          <div class="col-sm-6 col-md-3">
            <div class="form-group form-focus">
              <input type="text" class="form-control floating" />
              <label class="focus-label">Project Name</label>
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="form-group form-focus">
              <input type="text" class="form-control floating" />
              <label class="focus-label">Employee Name</label>
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="form-group form-focus select-focus">
              <select class="select floating">
                <option>Select Roll</option>
                <option>Web Developer</option>
                <option>Web Designer</option>
                <option>Android Developer</option>
                <option>Ios Developer</option>
              </select>
              <label class="focus-label">Designation</label>
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <a href="#" class="btn btn-success btn-block"> Search </a>
          </div>
        </div>

         <div class="row">
          <template v-for="projet in projets" :key="projet.id_projet">
            <div class="col-lg-4 col-sm-6 col-md-4 col-xl-3">
              <div class="card">
                <div class="card-body">
                  <div class="dropdown dropdown-action profile-action">
                    <a
                      href="#"
                      class="action-icon dropdown-toggle"
                      data-toggle="dropdown"
                      aria-expanded="false"
                      ><i class="material-icons">more_vert</i></a
                    >
                    <div class="dropdown-menu dropdown-menu-right">
                      <a
                        class="dropdown-item"
                        href="#"
                        data-toggle="modal"
                        data-target="#archiver_project"
                        @click="getProject(projet.id_projet)"
                        ><i class="fa fa-file m-r-5"></i> Désarchiver le projet</a
                      >
                    </div>
                  </div>
                  <h4 class="project-title">
                    <router-link
                      :to="{
                        name: 'ViewProject',
                        params: { id_projet: projet.id_projet },
                      }"
                    >
                      {{ projet.nom_projet }}
                    </router-link>
                  </h4>
                  <small class="block text-ellipsis m-b-15">
                    <span class="text-xs" v-text="projet.encours"></span>
                    <span class="text-muted"> tâche(s) en cours, </span>
                    <span class="text-xs" v-text="projet.termine"></span>
                    <span class="text-muted"> tâche(s) complcomplete(s)</span>
                  </small>
                  <p class="text-muted">
                    {{ projet.description }}
                  </p>
                  <div class="pro-deadline m-b-15">
                    <div class="sub-title">Date de fin:</div>
                    <div class="text-muted">
                      {{ moment(projet.date_fin).lang("fr").format("L") }}
                    </div>
                  </div>
                  <div class="project-members m-b-15">
                    <div>Sponsor {{ projet.sponsors.user_id }} :</div>
                    <ul class="team-members">
                      <li>
                        <a href="#" data-toggle="tooltip" title="">
                          <img alt="" src="assets/img/profiles/avatar-16.jpg"
                        /></a>
                      </li>
                    </ul>
                  </div>
                  <div class="project-members m-b-15">
                    <div>Chef de projet :</div>
                    <ul class="team-members">
                      <li>
                        <a
                          :href="'/images/profil/' + projet.user.image"
                          data-toggle="tooltip"
                          v-bind:title="projet.user.chef"
                        >
                          <img
                            alt=""
                            :src="'/images/profil/' + projet.user.image"
                        /></a>
                      </li>
                    </ul>
                  </div>
                  <div class="project-members m-b-15">
                    <div>Equipe :</div>
                    <ul class="team-members">
                      <li v-for="utilisateur in projet.users">
                        <a
                          :href="'/images/profil/' + projet.user.image"
                          data-toggle="tooltip"
                          v-bind:title="utilisateur.name"
                        >
                          <img
                            alt=""
                            :src="'/images/profil/' + utilisateur.image"
                          />
                        </a>
                      </li>
                    </ul>
                  </div>
                  <p class="m-b-5">
                    Progression
                    <span class="text-success float-right">{{ projet.progression }}%</span>
                  </p>
                  <div class="progress progress-xs mb-0">
                    <div
                      class="progress-bar bg-success"
                      role="progressbar"
                      data-toggle="tooltip"
                      title="{{ projet.progression  }}%"
                      :style=" { width: projet.progression + '%' }"
                    ></div>
                  </div>
                </div>
              </div>
            </div>
          </template>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Header from "../layouts/Header";
import Sidebar from "../layouts/Sidebar";
import axios from "axios";
import moment from "moment";

export default {
  data() {
    return {
      projets: {},
      projectoedit: "",
    };
  },
  created() {
    this.fetchProject();
  },
  mounted() {
    setInterval(() => {
      axios
        .get("/api/archiv")
        .then((response) => (this.projets = response.data))
        .catch((error) => {
          this.errors.push(error);
        });
    }, 2000);
  },
  methods: {
    getProject(id_projet) {
      axios
        .get("/api/projets/edit/" + id_projet)
        .then((response) => (this.projectoedit = response.data))
        .catch((error) => console.log(error));
    },
    fetchProject() {
      this.error = this.users = null;
      this.loading = true;
      this.moment = moment;
      axios
        .get("/api/archiv")
        .then((response) => {
          this.loading = true;
          this.projets = response.data;
        })
        .catch((error) => {
          this.loading = false;
          this.error = error.response.data.message || error.message;
        });
    },
  },
  name: "ArchivProject",
  components: { Sidebar, Header },
};
</script>

<style scoped>
</style>
