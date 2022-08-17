<template>
  <div class="main-wrapper">
    <Header />

    <Sidebar />

    <div class="page-wrapper">
      <div class="content container-fluid">
        <div class="page-header">
          <div class="row align-items-center">
            <div class="col">
              <h3 class="page-title">Utilisateurs</h3>
              <ul class="breadcrumb">
                <router-link to="/home" class="breadcrumb-item"
                  >Tableau de bord</router-link
                >
                <li class="breadcrumb-item active">Listes des utilisateurs</li>
              </ul>
            </div>
            <div class="col-auto float-right ml-auto">
              <a
                href="#"
                class="btn add-btn"
                data-toggle="modal"
                data-target="#add_user"
                ><i class="fa fa-plus"></i> Ajouter utilisateur</a
              >
            </div>
          </div>
        </div>

        <div class="row filter-row">
          <div class="col-sm-6 col-md-3">
            <div class="form-group form-focus">
              <input type="text" class="form-control floating" />
              <label class="focus-label">Name</label>
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="form-group form-focus select-focus">
              <select class="select floating">
                <option>Select Company</option>
                <option>Global Technologies</option>
                <option>Delta Infotech</option>
              </select>
              <label class="focus-label">Company</label>
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
              <label class="focus-label">Role</label>
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <a href="#" class="btn btn-success btn-block"> Rechercher </a>
          </div>
        </div>

        <div v-if="error" class="error">
          <p>{{ error }}</p>
          <p>
            <button @click.prevent="fetchData">Try Again</button>
          </p>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="table-responsive">
              <table class="table table-striped custom-table datatable">
                <thead>
                  <tr>
                    <th>Nom</th>
                    <th>Email</th>
                    <th>Fonction</th>
                    <th>Date de creation</th>
                    <th>Status</th>
                    <th class="text-right">Action</th>
                  </tr>
                </thead>
                <tbody>
                  <template v-for="user in users" :key="user.id">
                    <tr>
                      <td>
                       
                          {{ user.name }} {{ user.prenom }}
                      </td>
                      <td>{{ user.email }}</td>
                      <td>{{ user.poste }}</td>
                      <td>1 Jan 2013</td>
                      <td>
                        <span class="badge bg-inverse-danger">Admin</span>
                      </td>
                      <td class="text-right">
                        <div class="dropdown dropdown-action">
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
                              data-target="#edit_user"
                              @click="getUsers(user.id)"
                              ><i class="fa fa-pencil m-r-5"></i> Modifier
                              utilisateur
                            </a>
                            <a
                              class="dropdown-item"
                              href="#"
                              data-toggle="modal"
                              data-target="#profile_info"
                              @click="getUsers(user.id)"
                              ><i class="fa fa-pencil m-r-5"></i> Modifier
                              profil
                            </a>
                            <a
                              class="dropdown-item"
                              href="#"
                              data-toggle="modal"
                              data-target="#editr_user"
                              @click="getUsers(user.id)"
                              ><i class="fa fa-child m-r-5"></i>Responsabilité
                            </a>
                            <a
                              class="dropdown-item"
                              href="#"
                              data-toggle="modal"
                              data-target="#delete_user"
                              @click="getUsers(user.id)"
                              ><i class="fa fa-trash-o m-r-5"></i> Supprimer
                            </a>
                            <a
                              v-if="user.actif === 1"
                              class="dropdown-item"
                              href="#"
                              data-toggle="modal"
                              data-target="#activate_user"
                              @click="getUsers(user.id)"
                              ><i class="fa fa-check m-r-5"></i> Activer compte
                            </a>
                            <a
                              v-if="user.actif === 0"
                              class="dropdown-item"
                              href="#"
                              data-toggle="modal"
                              data-target="#desactivate_user"
                              @click="getUsers(user.id)"
                              ><i class="fa fa-times m-r-5"></i> Désactiver
                              compte
                            </a>
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

      <AddUsers></AddUsers>
      <EditUsers v-bind:tasktoedit="tasktoedit"></EditUsers>
      <DeleteUsers v-bind:tasktoedit="tasktoedit"></DeleteUsers>
      <ActivateUsers v-bind:tasktoedit="tasktoedit"></ActivateUsers>
      <DesactivateUser v-bind:tasktoedit="tasktoedit"></DesactivateUser>
      <ProfilUsers v-bind:tasktoedit="tasktoedit"></ProfilUsers>
       <ResponsableUser />
    </div>
  </div>
</template>

<script>
import Header from "../layouts/Header";
import Sidebar from "../layouts/Sidebar";
import AddUsers from "./AddUsers";
import EditUsers from "./EditUsers";
import DeleteUsers from "./DeleteUsers";
import ActivateUsers from "./ActivateUsers";
import DesactivateUser from "./DesactivateUser";
import ProfilUsers from "./ProfilUsers";
import axios from "axios";
import ResponsableUser from "./ResponsableUser";

export default {
  data() {
    return {
      loading: true,
      users: {},
      tasktoedit: "",
      q: "",
      error: null,
    };
  },
  created() {
    this.fetchData();
  },
  mounted() {
    setInterval(() => {
      axios
        .get("/api/users")
        .then((response) => (this.users = response.data))
        .catch((error) => {
          this.errors.push(error);
        });
    }, 2000);
  },
  methods: {
    getUsers(id) {
      axios
        .get("/api/users/edit/" + id)
        .then((response) => (this.tasktoedit = response.data))
        .catch((error) => console.log(error));
    },
    fetchData() {
      this.error = this.users = null;
      this.loading = true;
      axios
        .get("/api/users")
        .then((response) => {
          this.loading = true;
          this.users = response.data;
          console.log(response.data)
        })
        .catch((error) => {
          this.loading = false;
          this.error = error.response.data.message || error.message;
        });
    },
  },
  name: "ListUsers",
  components: {
    ProfilUsers,
    DesactivateUser,
    ActivateUsers,
    DeleteUsers,
    EditUsers,
    AddUsers,
    Sidebar,
    Header,
    ResponsableUser,
  },
};
</script>

<style scoped>
</style>
