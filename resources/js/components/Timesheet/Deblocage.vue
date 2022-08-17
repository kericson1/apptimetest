<template>
  <div class="main-wrapper">
    <Header />

    <Sidebar />

    <div class="page-wrapper">
      <!-- Page Content -->
      <div class="content container-fluid">
        <!-- Page Header -->
        <div class="page-header">
          <div class="row align-items-center">
            <div class="col">
              <h3 class="page-title">Déblocage feuilles de temps</h3>
              <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="">Tableau de bord</a></li>
                <li class="breadcrumb-item active">
                  Déblocage feuilles de temps
                </li>
              </ul>
            </div>
            <div class="col-auto float-right ml-auto">
              <a
                href="#"
                class="btn add-btn"
                data-toggle="modal"
                data-target="#add_leave"
                ><i class="fa fa-plus"></i> Faire une demande</a
              >
            </div>
          </div>
        </div>
        <!-- /Page Header -->

        <div class="row">
          <div class="col-md-12">
            <div class="table-responsive">
              <table class="table table-striped custom-table mb-0">
                <thead>
                  <tr>
                    <th>Date de la demande</th>
                    <th>Motif</th>
                    <th>Date de la validation</th>
                    <th>Statut</th>
                  </tr>
                </thead>
                <tbody>
                  <template v-for="demande in demandes" :key="demande.id_demande">
                    <tr>
                      <td>{{ demande.date_demande }}</td>
                      <td>{{ demande.motif }}</td>
                      <td>{{ demande.date_validation }}</td>
                      <td></td>
                    </tr>
                  </template>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

      <!-- Add Leave Modal -->
      <div id="add_leave" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Faire une demande</h5>
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
                <div class="form-group">
                  <label>Motif <span class="text-danger">*</span></label>
                  <textarea
                    rows="4"
                    class="form-control"
                    v-model="motif"
                  ></textarea>
                </div>
                <div class="submit-section">
                  <button
                    type="button"
                    class="btn btn-primary submit-btn"
                    @click="addDemande"
                  >
                    Demander
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- /Add Leave Modal -->
    </div>
  </div>
</template>
<script>
import Header from "../layouts/Header";
import Sidebar from "../layouts/Sidebar";
import { createToaster } from "@meforma/vue-toaster";

const toaster = createToaster({
  /* options */
});
export default {
  name: "Deblocage",
  components: {
    Header,
    Sidebar,
  },
  data() {
    return {
      demandes: {},
    };
  },
  created() {
    this.fetchDemande();
  },
  methods: {
    fetchDemande() {
      axios
        .get("/api/listdemande")
        .then((response) => {
          this.demandes = response.data;
        })
        .catch((error) => {
          this.loading = false;
          this.error = error.response.data.message || error.message;
        });
    },
    addDemande() {
      axios
        .post("/api/envoie", {
          motif: this.motif,
        })
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Demande de déblocage feuille de temps envoyé`, {
              position: "top-right",
            });
            $(".modal").modal("hide");
          }
        })
        .catch((error) => {
          if (error.response.status === 422) {
            toaster.error(`Feuille de temps non ajoutée`, {
              position: "top-right",
              duration: 4000,
            });
          }
        });
    },
  },
};
</script>