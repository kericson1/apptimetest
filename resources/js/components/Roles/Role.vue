<template>
  <div class="main-wrapper">
    <Header />

    <Sidebar />

    <div class="page-wrapper">
      <div class="content container-fluid">
        <div class="page-header">
          <div class="row">
            <div class="col-sm-12">
              <h3 class="page-title">Rôles & Permissions</h3>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4 col-md-4 col-lg-4 col-xl-3">
            <a
              href="#"
              class="btn btn-primary btn-block"
              data-toggle="modal"
              data-target="#add_role"
              ><i class="fa fa-plus"></i> Ajouter rôle</a
            >
            <div class="roles-menu">
              <ul>
                <template v-for="role in roles" :key="role.id_role">
                  <li class="active">
                    <a href="javascript:void(0);"
                      >{{  role.nom_role }}
                      <span class="role-action">
                        <span
                          class="action-circle large"
                          data-toggle="modal"
                          data-target="#edit_role"
                        >
                          <i class="material-icons">edit</i>
                        </span>
                      </span>
                    </a>
                  </li>
                </template>
              </ul>
            </div>
          </div>
          <div class="col-sm-8 col-md-8 col-lg-8 col-xl-9">
            <h6 class="card-title m-b-20">Module</h6>
            <div class="m-b-30">
              <ul class="list-group notification-list">
                <li class="list-group-item">
                  Tableau de bord
                  <div class="status-toggle">
                    <input type="checkbox" id="staff_module" class="check" />
                    <label for="staff_module" class="checktoggle"
                      >checkbox</label
                    >
                  </div>
                </li>
                <li class="list-group-item">
                  Gestions des projets
                  <div class="status-toggle">
                    <input
                      type="checkbox"
                      id="holidays_module"
                      class="check"
                      checked
                    />
                    <label for="holidays_module" class="checktoggle"
                      >checkbox</label
                    >
                  </div>
                </li>
                <li class="list-group-item">
                  Office management
                  <div class="status-toggle">
                    <input
                      type="checkbox"
                      id="leave_module"
                      class="check"
                      checked
                    />
                    <label for="leave_module" class="checktoggle"
                      >checkbox</label
                    >
                  </div>
                </li>
                <li class="list-group-item">
                  Clients
                  <div class="status-toggle">
                    <input
                      type="checkbox"
                      id="events_module"
                      class="check"
                      checked
                    />
                    <label for="events_module" class="checktoggle"
                      >checkbox</label
                    >
                  </div>
                </li>
              </ul>
            </div>
            <div class="table-responsive">
              <table class="table table-striped custom-table">
                <thead>
                  <tr>
                    <th>Module Permission</th>
                    <th class="text-center">Read</th>
                    <th class="text-center">Write</th>
                    <th class="text-center">Create</th>
                    <th class="text-center">Delete</th>
                    <th class="text-center">Import</th>
                    <th class="text-center">Export</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>Employee</td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                  </tr>
                  <tr>
                    <td>Holidays</td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                  </tr>
                  <tr>
                    <td>Leaves</td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                  </tr>
                  <tr>
                    <td>Events</td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                    <td class="text-center">
                      <input type="checkbox" checked="" />
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

      <div id="add_role" class="modal custom-modal fade" role="dialog">
        <div
          class="modal-dialog modal-dialog-centered modal-xl"
          role="document"
        >
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Ajouter rôle</h5>
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
                  <label>Nom du rôle <span class="text-danger">*</span></label>
                  <input class="form-control" type="text" v-model="nom_role" />
                </div>
                <label><h4>LISTE DES FONCTIONNALITES</h4></label>

                <div class="form-group col-md-12">
                  <div class="col-sm-12">
                    <div class="col-sm-12 all-contain-fonc-small">
                      <div class="col-sm-8 title-fonc">
                        <label style="color: #2336d9">Tableaux de bord</label>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-3">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="1"
                              id="checkbox1"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox1"
                              >Voir tableau de bord</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="2"
                              id="checkbox2"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox2"
                              >Voir statistiques</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="3"
                              id="checkbox3"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox3"
                              >Voir validation de la feuille de temps</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="4"
                              id="checkbox4"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox4"
                              >Valider feuille de temps</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-sm-12">
                    <div class="col-sm-12 all-contain-fonc-small">
                      <div class="col-sm-8 title-fonc">
                        <label style="color: #2336d9">Collaborateurs</label>
                      </div>
                    </div>

                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="5"
                              id="checkbox5"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox5"
                              >Voir agenda</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="6"
                              id="checkbox6"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox6"
                              >Ajouter agenda</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="7"
                              id="checkbox7"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox7"
                              >Voir absence</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="8"
                              id="checkbox8"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox8"
                              >Modifier absence</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="9"
                              id="checkbox9"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox9"
                              >Supprimer absence</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="10"
                              id="checkbox10"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox10"
                              >Ouverture & fermerture</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="11"
                              id="checkbox11"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox11"
                              >Voir feuille de temps</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="12"
                              id="checkbox12"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox12"
                              >Voir feuille de temps globale</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="13"
                              id="checkbox13"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox13"
                              >Voir demande</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-sm-12">
                    <div class="col-sm-12 all-contain-fonc-small">
                      <div class="col-sm-8 title-fonc">
                        <label style="color: #2336d9">Responsables</label>
                      </div>
                    </div>

                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-3">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="14"
                              id="checkbox14"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox14"
                              >Voir validation d'absence</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="15"
                              id="checkbox15"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox15"
                              >Voir validation de la feuille de temps</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="16"
                              id="checkbox16"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox16"
                              >Voir feuille de temps</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="17"
                              id="checkbox17"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox17"
                              >Voir feuille de temps globale</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>

                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-3">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="18"
                              id="checkbox18"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox18"
                              >Faire recherche de feuille de temps</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="19"
                              id="checkbox19"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox19"
                              >Voir demande</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="20"
                              id="checkbox20"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox20"
                              >Ajouter demande</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="21"
                              id="checkbox21"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox21"
                              >Voir pôle</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-sm-12">
                    <div class="col-sm-12 all-contain-fonc-small">
                      <div class="col-sm-8 title-fonc">
                        <label style="color: #2336d9">RH</label>
                      </div>
                    </div>

                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="22"
                              id="checkbox22"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox22"
                              >Voir matériel</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="23"
                              id="checkbox23"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox23"
                              >Ajouter matériel</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="24"
                              id="checkbox24"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox24"
                              >Attribuer matériel</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="25"
                              id="checkbox25"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox25"
                              >Mettre matériel en stock</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="26"
                              id="checkbox26"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox26"
                              >Marquer comme en panne</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="27"
                              id="checkbox27"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox27"
                              >Mettre en reparation</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="28"
                              id="checkbox28"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox28"
                              >Retour du matériel</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="29"
                              id="checkbox29"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox29"
                              >Détails du matériel</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="30"
                              id="checkbox30"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox30"
                              >Voir absence</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="31"
                              id="checkbox31"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox31"
                              >Validation absence</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="32"
                              id="checkbox32"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox32"
                              >Voir tous le personnel</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="33"
                              id="checkbox33"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox33"
                              >Voir détail du personnel</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-sm-12">
                    <div class="col-sm-12 all-contain-fonc-small">
                      <div class="col-sm-8 title-fonc">
                        <label style="color: #2336d9">Projets</label>
                      </div>
                    </div>

                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="34"
                              id="checkbox34"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox34"
                              >Voir projets</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="35"
                              id="checkbox35"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox35"
                              >Voir projets archivés</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="36"
                              id="checkbox36"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox36"
                              >Creer projet</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="37"
                              id="checkbox37"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox37"
                              >Modifier projet</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="38"
                              id="checkbox38"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox38"
                              >Supprimer projet</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="39"
                              id="checkbox39"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox39"
                              >Archiver projet</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="40"
                              id="checkbox40"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox40"
                              >Ajouter sponsor</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="41"
                              id="checkbox41"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox41"
                              >Ajouter tâche</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="42"
                              id="checkbox42"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox42"
                              >Voir détails projet</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="43"
                              id="checkbox43"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox43"
                              >Marquer le projet comme terminer</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="44"
                              id="checkbox44"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox44"
                              >Ajouter fichier de validation</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-sm-12">
                    <div class="col-sm-12 all-contain-fonc-small">
                      <div class="col-sm-8 title-fonc">
                        <label style="color: #2336d9">Bibliothèque</label>
                      </div>
                    </div>

                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="45"
                              id="checkbox45"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox45"
                              >Voir bibliothèque</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="46"
                              id="checkbox46"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox46"
                              >Ajouter livre</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="47"
                              id="checkbox47"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox47"
                              >Prendre livre</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="48"
                              id="checkbox48"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox48"
                              >Deposer livre</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="49"
                              id="checkbox49"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox49"
                              >Supprimer projet</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="50"
                              id="checkbox50"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox50"
                              >Details du livre</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="51"
                              id="checkbox51"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox51"
                              >Demander livre</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="52"
                              id="checkbox52"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox52"
                              >Accepter la demande de livre</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="53"
                              id="checkbox53"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox53"
                              >Refuser la demande de livre</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-sm-12">
                    <div class="col-sm-12 all-contain-fonc-small">
                      <div class="col-sm-8 title-fonc">
                        <label style="color: #2336d9">Tickets</label>
                      </div>
                    </div>

                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="79"
                              id="checkbox79"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox79"
                              >Voir ticket</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="80"
                              id="checkbox80"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox80"
                              >Demander ticket</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="81"
                              id="checkbox81"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox47"
                              >Modifier ticket</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="82"
                              id="checkbox82"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox82"
                              >Marquer comme resolu</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="83"
                              id="checkbox83"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox83"
                              >Voir IT</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="84"
                              id="checkbox84"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox84"
                              >Marquer comme fini</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="85"
                              id="checkbox85"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox85"
                              >Faire une recherche</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="86"
                              id="checkbox86"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox86"
                              >Voir details du ticket</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-sm-12">
                    <div class="col-sm-12 all-contain-fonc-small">
                      <div class="col-sm-8 title-fonc">
                        <label style="color: #2336d9">Salle de reunion</label>
                      </div>
                    </div>

                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="87"
                              id="checkbox87"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox87"
                              >Voir salle de reunion</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="88"
                              id="checkbox88"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox88"
                              >Demander salle</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="89"
                              id="checkbox89"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox89"
                              >Voir occupation</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-4">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="90"
                              id="checkbox90"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox90"
                              >Voir listes</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="91"
                              id="checkbox91"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox91"
                              >Valider demande de salle</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="92"
                              id="checkbox92"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox92"
                              >Refuser demande de salle</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-sm-12">
                    <div class="col-sm-12 all-contain-fonc-small">
                      <div class="col-sm-8 title-fonc">
                        <label style="color: #2336d9">Paramètre</label>
                      </div>
                    </div>

                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-3">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="54"
                              id="checkbox54"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox54"
                              >Voir utilisateurs</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="55"
                              id="checkbox55"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox55"
                              >Ajouter utilisateur</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="56"
                              id="checkbox56"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox56"
                              >Modifier utilisateur</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="57"
                              id="checkbox57"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox57"
                              >Modifier responsabilité</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-3">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="58"
                              id="checkbox58"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox58"
                              >Supprimer compte</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="59"
                              id="checkbox59"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox59"
                              >Activer compte</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="60"
                              id="checkbox60"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox60"
                              >Désactiver compte</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="61"
                              id="checkbox61"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox61"
                              >Ajouter pôle</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-3">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="62"
                              id="checkbox62"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox62"
                              >Modifier pôle</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="63"
                              id="checkbox63"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox63"
                              >Supprimer pôle</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="64"
                              id="checkbox64"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox64"
                              >Ajouter rôle</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="65"
                              id="checkbox65"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox65"
                              >Modifier rôle</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-3">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="66"
                              id="checkbox66"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox66"
                              >Supprimer rôle</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="67"
                              id="checkbox67"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox67"
                              >Voir activité</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="68"
                              id="checkbox68"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox68"
                              >Voir client</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="69"
                              id="checkbox69"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox69"
                              >Modifier client</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-3">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="70"
                              id="checkbox70"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox70"
                              >Voir validation de projet</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="71"
                              id="checkbox71"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox71"
                              >Valider projet</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="72"
                              id="checkbox72"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox72"
                              >Refuser projet</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="73"
                              id="checkbox73"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox73"
                              >Voir côut & charge</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="col-sm-12"
                      style="
                        position: relative;
                        display: flex;
                        flex-wrap: wrap;
                        align-items: stretch;
                        width: 100%;
                      "
                    >
                      <div class="col-sm-3">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="74"
                              id="checkbox74"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox74"
                              >Modifier côut & charge</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="75"
                              id="checkbox75"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox75"
                              >Voir validation de demande</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="76"
                              id="checkbox76"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox76"
                              >Valider demande</label
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-3 contain-fonc-small-part">
                        <div class="col-sm-12">
                          <div class="custom-control custom-checkbox">
                            <input
                              class="custom-control-input"
                              v-model="droits"
                              value="77"
                              id="checkbox77"
                              type="checkbox"
                            />
                            <label class="custom-control-label" for="checkbox77"
                              >Refuser demande</label
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="submit-section">
                  <button
                    type="button"
                    class="btn btn-primary submit-btn"
                    @click="storeRole"
                  >
                    Enregistrer
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <div id="edit_role" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content modal-md">
            <div class="modal-header">
              <h5 class="modal-title">Edit Role</h5>
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
                  <label>Role Name <span class="text-danger">*</span></label>
                  <input class="form-control" value="Team Leader" type="text" />
                </div>
                <div class="submit-section">
                  <button class="btn btn-primary submit-btn">Save</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <div class="modal custom-modal fade" id="delete_role" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content">
            <div class="modal-body">
              <div class="form-header">
                <h3>Delete Role</h3>
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
import { createToaster } from "@meforma/vue-toaster";

const toaster = createToaster({
  /* options */
});

export default {
  components: { Sidebar, Header },
  data() {
    return {
      droits: [],
      roles: {},
      nom_role: "",
    };
  },
  created() {
    this.fetchTask();
  },
  mounted() {
    setInterval(() => {
      axios
        .get("/api/roles")
        .then((response) => {
          this.roles = response.data;
        })
        .catch((error) => {
          this.errors.push(error);
        });
    }, 2000);
  },
  methods: {
    storeRole() {
      axios
        .post("/api/roles", {
          droits: this.droits,
          nom_role: this.nom_role,
        })
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Rôle ajouté avec succès`, {
              position: "top-right",
            });
            this.roles = response.data;
            this.fetchTask();
          }
        })
        .catch((error) => console.log(error));
    },
    fetchTask() {
      axios
        .get("/api/roles")
        .then((response) => {
          this.roles = response.data;
        })
        .catch((error) => {
          this.errors.push(error);
        });
    },
  },
  name: "Role",
};
</script>