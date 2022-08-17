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
              <h3 class="page-title">Feuilles de temps</h3>
              <ul class="breadcrumb">
                <li class="breadcrumb-item">
                  <a href="">Tableau de bord</a>
                </li>
                <li class="breadcrumb-item active">
                  Validation de la feuille de temps
                </li>
              </ul>
            </div>
          </div>
        </div>
        <!-- /Page Header -->
        <form action="" method="get">
          <div class="row filter-row">
            <div class="col-sm-6 col-md-4">
              <div class="form-group form-focus select-focus">
                <select class="select floating" name="query">
                  <option>Sélectionner collaborateur</option>
                </select>
                <label class="focus-label">Collaborateurs</label>
              </div>
            </div>
            <div class="col-sm-6 col-md-4">
              <button href="#" class="btn btn-success btn-block submit-btn">
                Rechercher
              </button>
            </div>
          </div>
        </form>
        <!-- /Search Filter -->

        <div class="row">
          <div class="col-md-12">
            <div class="table-responsive">
              <table class="table table-striped custom-table mb-0 datatable">
                <thead>
                  <tr>
                    <th>Employé</th>
                    <th>Date</th>
                    <th>Projet</th>
                    <th>Tache</th>
                    <th class="text-center">Heures prises</th>
                    <th class="text-center">Statut</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <h2 class="table-avatar">
                        
                      </h2>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="text-center">
                      
                    </td>
                    <td class="text-center">

                    </td>
                    <td>
                      <a
                        title="Modifier"
                        href="#"
                        data-toggle="modal"
                        data-target="#edit_todaywork"
                        ><i class="fa fa-pencil m-r-5"></i>
                      </a>
                    </td>
                  </tr>

                  <!-- Edit Hours Work Modal -->
                  <div
                    id="edit_todaywork"
                    class="modal custom-modal fade"
                    role="dialog"
                  >
                    <div
                      class="modal-dialog modal-dialog-centered modal-md"
                      role="document"
                    >
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title">Modifier Heure</h5>
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
                          <form
                            role="form"
                            method="POST"
                            action=""
                          >
                           
                            <div class="form-group col-sm-12">
                              <label
                                >Heure(s)
                                <span class="text-danger">*</span></label
                              >
                              <input
                                class="form-control"
                                type="number"
                                name="heure_timesheet"
                                min="0"
                                max="8"
                                value=""
                              />
                            </div>
                            <div class="submit-section">
                              <button class="btn btn-primary submit-btn">
                                Modifier
                              </button>
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- /Edit Today Work Modal -->

                  <!-- Validate Work Modal -->

                  <!-- /Edit Today Work Modal -->
                </tbody>
              </table>
              <form>
                <div
                  class="submit-section"
                  style="margin-top: 30px; margin-right: 450px"
                >
                  <input
                    type="hidden"
                    value=""
                    name="user"
                  />
                  <input type="hidden" value="" name="debut" />
                  <input type="hidden" value="" name="fin" />
                  <button
                    class="btn btn-primary submit-btn"
                    style="float: right"
                  >
                    Valider la feuille de temps
                  </button>
                </div>
              </form>
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
import { createToaster } from "@meforma/vue-toaster";

const toaster = createToaster({
  /* options */
});
export default {
  name: "Validation",
  components: {
    Header,
    Sidebar,
  },
};
</script>