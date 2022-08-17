<template>
  <div class="main-wrapper">
    <Header />

    <Sidebar />

    <div class="page-wrapper">
      <div class="content container-fluid">
        <div class="page-header">
          <div class="row align-items-center">
            <div class="col">
              <h3 class="page-title">Gestion du parc informatique</h3>
              <ul class="breadcrumb">
                <li class="breadcrumb-item">
                  <a href="index.html">Tableau de bord</a>
                </li>
                <li class="breadcrumb-item active">Listes</li>
              </ul>
            </div>
            <div class="col-auto float-right ml-auto">
              <a
                href="#"
                class="btn add-btn"
                data-toggle="modal"
                data-target="#add_asset"
                ><i class="fa fa-plus"></i> Ajouter</a
              >
            </div>
          </div>
        </div>

        <div class="row filter-row">
          <div class="col-sm-6 col-md-3">
            <div class="form-group form-focus">
              <input type="text" class="form-control floating" />
              <label class="focus-label">Nom du collaborateur</label>
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="form-group form-focus select-focus">
              <select class="select floating">
                <option value="">-- Selectionnez --</option>
                <option value="0">Pending</option>
                <option value="1">Approved</option>
                <option value="2">Returned</option>
              </select>
              <label class="focus-label">Status</label>
            </div>
          </div>
          <div class="col-sm-12 col-md-4">
            <div class="row">
              <div class="col-md-6 col-sm-6">
                <div class="form-group form-focus">
                  <div
                    class="input-group date"
                    id="datetimepicker1"
                    data-target-input="nearest"
                  >
                    <input
                      type="text"
                      class="form-control datetimepicker-input"
                      data-target="#datetimepicker1"
                    />
                    <div
                      class="input-group-append"
                      data-target="#datetimepicker1"
                      data-toggle="datetimepicker"
                    >
                      <div class="input-group-text">
                        <i class="fa fa-calendar"></i>
                      </div>
                    </div>
                  </div>
                  <label class="focus-label">From</label>
                </div>
              </div>
              <div class="col-md-6 col-sm-6">
                <div class="form-group form-focus">
                  <div
                    class="input-group date"
                    id="datetimepicker2"
                    data-target-input="nearest"
                  >
                    <input
                      type="text"
                      class="form-control datetimepicker-input"
                      data-target="#datetimepicker2"
                    />
                    <div
                      class="input-group-append"
                      data-target="#datetimepicker2"
                      data-toggle="datetimepicker"
                    >
                      <div class="input-group-text">
                        <i class="fa fa-calendar"></i>
                      </div>
                    </div>
                  </div>
                  <label class="focus-label">To</label>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-2">
            <a href="#" class="btn btn-success btn-block"> Rechercher </a>
          </div>
        </div>

        <div class="row">
          <div class="col-md-12">
            <div class="table-responsive">
              <table class="table table-striped custom-table mb-0 datatable">
                <thead>
                  <tr>
                    <th>Type</th>
                    <th>Catégorie</th>
                    <th>Identifiant</th>
                    <th>Description</th>
                    <th class="text-right"></th>
                  </tr>
                </thead>
                <tbody>
                  <template
                    v-for="equipement in equipements"
                    :key="equipement.id_equipement"
                  >
                    <tr>
                      <td v-text="equipement.type"></td>
                      <td v-text="equipement.identification"></td>
                      <td v-text="equipement.modele"></td>
                      <td v-text="equipement.marque"></td>
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
                              data-target="#edit_asset"
                              ><i class="fa fa-pencil m-r-5"></i> Modifier</a
                            >
                            <a
                              class="dropdown-item"
                              href="#"
                              data-toggle="modal"
                              data-target="#delete_asset"
                              ><i class="fa fa-plus m-r-5"></i> Attribuer</a
                            >
                            <a
                              class="dropdown-item"
                              href="#"
                              data-toggle="modal"
                              data-target="#delete_asset"
                              ><i class="fa fa-plus m-r-5"></i> Mettre en
                              stock</a
                            >
                            <a
                              class="dropdown-item"
                              href="#"
                              data-toggle="modal"
                              data-target="#delete_asset"
                              ><i class="fa fa-recycle m-r-5"></i> Reparation</a
                            >

                            <a
                              class="dropdown-item"
                              href="#"
                              data-toggle="modal"
                              data-target="#delete_asset"
                              ><i class="fa fa-reply m-r-5"></i> Retour</a
                            >
                          </div>
                        </div>
                      </td>
                    </tr>
                    </template
                  >
                </tbody>
              </table>
            </div>²
          </div>

        </div>
      </div>

      <AddMateriel></AddMateriel>

      <div id="edit_asset" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-md" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Modifier Matériel</h5>
              <button
                type="button"
                class="close"
                data-dismiss="modal"
                aria-label="Close"
              >
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form>
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Numero d'identification</label>
                      <input
                        class="form-control"
                        type="text"
                        value="Dell Laptop"
                      />
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Asset Id</label>
                      <input
                        class="form-control"
                        type="text"
                        value="#AST-0001"
                        readonly
                      />
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Purchase Date</label>
                      <input class="form-control datetimepicker" type="text" />
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Purchase From</label>
                      <input class="form-control" type="text" />
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Manufacturer</label>
                      <input class="form-control" type="text" />
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Model</label>
                      <input class="form-control" type="text" />
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Serial Number</label>
                      <input class="form-control" type="text" />
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Supplier</label>
                      <input class="form-control" type="text" />
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Condition</label>
                      <input class="form-control" type="text" />
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Warranty</label>
                      <input
                        class="form-control"
                        type="text"
                        placeholder="In Months"
                      />
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Value</label>
                      <input
                        placeholder="$1800"
                        class="form-control"
                        type="text"
                      />
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Asset User</label>
                      <select class="select">
                        <option>John Doe</option>
                        <option>Richard Miles</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>Description</label>
                      <textarea class="form-control"></textarea>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Status</label>
                      <select class="select">
                        <option>Pending</option>
                        <option>Approved</option>
                        <option>Deployed</option>
                        <option>Damaged</option>
                      </select>
                    </div>
                  </div>
                </div>
                <div class="submit-section">
                  <button class="btn btn-primary submit-btn">Save</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <div class="modal custom-modal fade" id="delete_asset" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content">
            <div class="modal-body">
              <div class="form-header">
                <h3>Delete Asset</h3>
                <p>Are you sure want to delete?</p>
              </div>
              <div class="modal-btn delete-action">
                <div class="row">
                  <div class="col-6">
                    <a
                      href="javascript:void(0);"
                      class="btn btn-primary continue-btn"
                      >Delete</a
                    >
                  </div>
                  <div class="col-6">
                    <a
                      href="javascript:void(0);"
                      data-dismiss="modal"
                      class="btn btn-primary cancel-btn"
                      >Cancel</a
                    >
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
import AddMateriel from "./AddMateriel";
export default {
  data() {
    return {
      loading: true,
      equipements: {},
      logiciels: {},
    };
  },
  mounted() {
    this.fetchMateriel();
    setInterval(() => {
      axios
        .get("/api/equipements")
        .then((response) => (this.equipements = response.data))
        .catch((error) => {
          this.errors.push(error);
        });
    }, 2000);
  },
  methods: {
    // getConges(id_conge) {
    //   axios
    //     .get("/api/conges/edit/" + id_conge)
    //     .then((response) => (this.holidaytoedit = response.data))
    //     .catch((error) => console.log(error));
    // },
    fetchMateriel() {
      this.error = this.conges = null;
      this.loading = true;
      axios
        .get("/api/equipements")
        .then((response) => {
          this.loading = true;
          this.equipements = response.data;
        })
        .catch((error) => {
          this.loading = false;
          this.error = error.response.data.message || error.message;
        });
    },
  },
  name: "Materiel",
  components: { AddMateriel, Sidebar, Header },
};
</script>
<style></style> 