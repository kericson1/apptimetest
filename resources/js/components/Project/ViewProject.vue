<template>
  <div class="main-wrapper">
    <Header />

    <Sidebar />

    <div class="page-wrapper">
      <div class="content container-fluid">
        <div class="page-header">
          <div class="row align-items-center">
            <div class="col">
              <h3 class="page-title" v-text="projets.nom_projet"></h3>
              <ul class="breadcrumb">
                <router-link to="/dashboard" class="breadcrumb-item"
                  >Tableau de bord</router-link
                >
                <router-link to="/listproject" class="breadcrumb-item"
                  >Listes des projets</router-link
                >
                <li class="breadcrumb-item active">Détail du projet</li>
              </ul>
            </div>
            <div class="col-auto float-right ml-auto">
              <a
                href="#"
                class="btn add-btn"
                data-toggle="modal"
                data-target="#add_project"
                @click="getProject(projets.id_projet)"
                ><i class="fa fa-plus"></i> Ajouter tâche</a
              >
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-8 col-xl-9">
            <div class="card">
              <div class="card-body">
                <div class="project-title">
                  <div class="pro-edit">
                    <a
                      data-target="#profile_info"
                      data-toggle="modal"
                      class="edit-icon"
                      href="#"
                      ><i class="fa fa-pencil"></i
                    ></a>
                  </div>
                  <h5 class="card-title" v-text="projets.nom_projet"></h5>
                  <small class="block text-ellipsis m-b-15">
                    <span class="text-xs" v-text="encours"></span>
                    <span class="text-muted"> tache(s) en cours,</span>
                    <span class="text-xs" v-text="completes"></span>
                    <span class="text-muted"> tache(s) complete(s)</span></small
                  >
                </div>
                <p v-text="projets.description"></p>
              </div>
            </div>
            <div class="card">
              <div class="card-body">
                <button
                  type="button"
                  class="float-right btn btn-primary btn-sm"
                  data-toggle="modal"
                  data-target="#file_validation"
                >
                  <i class="fa fa-plus"></i> Ajouter
                </button>
                <h5 class="card-title m-b-20">Fichier(s) de validation</h5>
                <div class="row">
                  <template
                    v-for="filevalid in filevalids"
                    :key="filevalid.id_projetvalidation"
                  >
                    <div class="col-md-3 col-sm-4 col-lg-4 col-xl-3">
                      <div class="uploaded-box">
                        <div class="uploaded-img">
                          <img
                            :src="
                              '/projets/validations/' +
                              filevalid.fichier_validation
                            "
                            class="img-fluid"
                            alt=""
                          />
                        </div>
                        <div class="uploaded-img-name">
                          {{ filevalid.fichier_validation }}
                        </div>
                      </div>
                    </div>
                  </template>
                </div>
              </div>
            </div>
            <div class="card">
              <div class="card-body">
                <button
                  type="button"
                  class="float-right btn btn-primary btn-sm"
                  data-toggle="modal"
                  data-target="#file_projet"
                >
                  <i class="fa fa-plus"></i> Ajouter
                </button>
                <h5 class="card-title m-b-20">Fichier(s) du projet</h5>
                <ul class="files-list">
                  <li
                    v-for="fileproject in fileprojects"
                    :key="fileproject.id_projetfile"
                  >
                    <div class="files-cont">
                      <div class="file-type">
                        <span class="files-icon"
                          ><i class="fa fa-file-pdf-o"></i
                        ></span>
                      </div>
                      <div class="files-info">
                        <span class="file-name text-ellipsis"
                          ><a href="#">{{ fileproject.projet_file }}</a></span
                        >
                        <div class="file-size">Size: 14.8Mb</div>
                      </div>
                      <ul class="files-action">
                        <li class="dropdown dropdown-action">
                          <a
                            href=""
                            class="dropdown-toggle btn btn-link"
                            data-toggle="dropdown"
                            aria-expanded="false"
                            ><i class="material-icons">more_horiz</i></a
                          >
                          <div class="dropdown-menu dropdown-menu-right">
                            <a class="dropdown-item" href="javascript:void(0)"
                              >Télécharger</a
                            >
                            <a
                              class="dropdown-item"
                              href="#"
                              data-toggle="modal"
                              data-target="#share_files"
                              >Partager</a
                            >
                          </div>
                        </li>
                      </ul>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            <div class="project-task">
              <ul class="nav nav-tabs nav-tabs-top nav-justified mb-0">
                <li class="nav-item">
                  <a
                    class="nav-link active"
                    href="#all_tasks"
                    data-toggle="tab"
                    aria-expanded="true"
                    >Toutes les tâches</a
                  >
                </li>
                <li class="nav-item">
                  <a
                    class="nav-link"
                    href="#pending_tasks"
                    data-toggle="tab"
                    aria-expanded="false"
                    >Tâches en cours</a
                  >
                </li>
                <li class="nav-item">
                  <a
                    class="nav-link"
                    href="#completed_tasks"
                    data-toggle="tab"
                    aria-expanded="false"
                    >Tâches complètes</a
                  >
                </li>
              </ul>
              <div class="tab-content">
                <div class="tab-pane show active" id="all_tasks">
                  <div class="task-wrapper">
                    <div class="task-list-container">
                      <div class="task-list-body">
                        <ul id="task-list">
                          <template
                            v-for="tache in taches"
                            :key="tache.id_tache"
                          >
                            <li
                              v-if="tache.statut === 0 || tache.statut == 1"
                              class="task"
                            >
                              <div class="task-container">
                                <span
                                  v-if="caches === 1"
                                  class="task-action-btn task-check"
                                >
                                  <span
                                    class="action-circle large complete-btn"
                                    title="Marquer la tâche comme complète"
                                    @click="markTask(tache.id_tache)"
                                  >
                                    <i class="material-icons">check</i>
                                  </span>
                                </span>
                                <span
                                  class="task-label"
                                  contenteditable="true"
                                  v-text="tache.nom_tache"
                                ></span>
                                <span class="task-action-btn task-btn-right">
                                  <span
                                    class="action-circle large"
                                    data-toggle="modal"
                                    data-target="#add_user"
                                    title="Ajouter une personne"
                                    @click="getTaches(tache.id_tache)"
                                  >
                                    <i class="material-icons">person_add</i>
                                  </span>
                                  <span
                                    class="action-circle large"
                                    data-toggle="modal"
                                    data-target="#edit_tache"
                                    title="Modifier la tâche"
                                    @click="getTaches(tache.id_tache)"
                                  >
                                    <i class="material-icons">edit</i>
                                  </span>
                                  <span
                                    class="action-circle large"
                                    data-toggle="modal"
                                    data-target="#delete_task"
                                    title="Supprimer la tâche"
                                    @click="getTaches(tache.id_tache)"
                                  >
                                    <i class="material-icons">delete</i>
                                  </span>
                                  <!-- <span
                                    class="action-circle large"
                                    data-toggle="modal"
                                    data-target="#block_task"
                                    title="Supprimer une personne de la tâche"
                                  >
                                    <i class="material-icons">block</i>
                                  </span> -->
                                  <span
                                    class="action-circle large"
                                    data-toggle="modal"
                                    data-target="#validate_task"
                                    title="Marquer comme finie"
                                    @click="getTaches(tache.id_tache)"
                                  >
                                    <i class="material-icons">verified_user</i>
                                  </span>
                                  <span
                                    v-if="caches === 1"
                                    class="action-circle large"
                                    data-toggle="modal"
                                    data-target="#cancel_task"
                                    title="Marquer comme en cours"
                                    @click="getTaches(tache.id_tache)"
                                  >
                                    <i class="material-icons">clear</i>
                                  </span>
                                  <span
                                    class="action-circle large"
                                    data-toggle="modal"
                                    data-target="#work_task"
                                    title="Mettre la progression"
                                    @click="getTaches(tache.id_tache)"
                                  >
                                    <i class="material-icons">work</i>
                                  </span>
                                  <span
                                    class="action-circle large"
                                    data-toggle="modal"
                                    data-target="#detail_task"
                                    title="Voir le details"
                                    @click="getTaches(tache.id_tache)"
                                  >
                                    <i class="material-icons">visibility</i>
                                  </span>
                                  <span
                                    class="action-circle large"
                                    data-toggle="modal"
                                    data-target="#add_event"
                                    title="Ajouter cette tâche dans l'agenda"
                                    @click="getTaches(tache.id_tache)"
                                  >
                                    <i class="material-icons">add</i>
                                  </span>
                                  <span
                                    class="action-circle large"
                                    title="Information sur la tâche"
                                    data-toggle="collapse"
                                    href="#collapseExample"
                                    @click="getTaches(tache.id_tache)"
                                  >
                                    <i class="material-icons">view_agenda</i>
                                  </span>
                                </span>
                              </div>
                            </li>
                            <li
                              v-else-if="tache.statut === 2"
                              class="completed task"
                            >
                              <div class="task-container">
                                <span
                                  v-if="caches === 1"
                                  class="task-action-btn task-check"
                                >
                                  <span
                                    class="action-circle large complete-btn"
                                    title="Tâche marqué comme non fini"
                                    @click="demarkTask(tache.id_tache)"
                                  >
                                    <i class="material-icons">check</i>
                                  </span>
                                </span>
                                <span
                                  class="task-label"
                                  v-text="tache.nom_tache"
                                ></span>
                                <span class="task-action-btn task-btn-right">
                                  <span
                                    class="action-circle large"
                                    title="Ajouter une persone"
                                  >
                                    <i class="material-icons">visibility</i>
                                  </span>
                                  <span
                                    class="action-circle large"
                                    title="Information sur la tâche"
                                    data-toggle="collapse"
                                    href="#collapseExample"
                                    @click="getTaches(tache.id_tache)"
                                  >
                                    <i class="material-icons">view_agenda</i>
                                  </span>
                                </span>
                              </div>
                            </li>
                          </template>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane" id="pending_tasks"></div>
                <div class="tab-pane" id="completed_tasks"></div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-xl-3">
            <div class="card">
              <div class="card-body">
                <a
                  data-target="#date_info"
                  data-toggle="modal"
                  class="edit-icon"
                  href="#"
                  ><i class="fa fa-pencil"></i
                ></a>
                <h6 class="card-title m-b-15">Détails du projet</h6>
                <table class="table table-striped table-border">
                  <tbody>
                    <tr>
                      <td>Total:</td>
                      <td class="text-right" v-text="projets.heure_total"></td>
                    </tr>
                    <tr>
                      <td>Date de début:</td>
                      <td class="text-right">
                        {{ moment(projets.date_debut).lang("fr").format("L") }}
                      </td>
                    </tr>
                    <tr>
                      <td>Date de fin:</td>
                      <td class="text-right">
                        {{ moment(projets.date_fin).lang("fr").format("L") }}
                      </td>
                    </tr>
                    <tr>
                      <td>Référence:</td>
                      <td
                        class="text-right"
                        v-text="projets.reference_projet"
                      ></td>
                    </tr>
                    <tr>
                      <td>Status:</td>
                      <td class="text-right">
                        <span
                          v-if="projets.etat == 1"
                          class="badge-success"
                          >TERMINE
                          </span>
                        <span v-else class="badge-secondary">EN COURS</span>
                      </td>
                    </tr>
                  </tbody>
                </table>
                <p class="m-b-5">
                  Progression
                  <span class="text-success float-right">{{ progress }}%</span>
                </p>
                <div class="progress progress-xs mb-0">
                  <div
                    class="progress-bar bg-success"
                    role="progressbar"
                    data-toggle="tooltip"
                    title="{{ progress }}%"
                    :style="{ width: progress + '%' }"
                  ></div>
                </div>
              </div>
            </div>
            <!-- Afficher le chef de projet !-->
            <div class="card project-user" id="chef">
              <div class="card-body">
                <a
                  data-target="#edit_chef"
                  data-toggle="modal"
                  class="edit-icon"
                  href="#"
                  ><i class="fa fa-pencil"></i
                ></a>
                <h6 class="card-title m-b-20">Chef du projet</h6>
                <ul class="list-box">
                  <li>
                    <a href="profile.html">
                      <div class="list-item">
                        <div class="list-left">
                          <span class="avatar"
                            ><img
                              alt=""
                              src="assets/img/profiles/avatar-11.jpg"
                          /></span>
                        </div>
                        <div class="list-body">
                          <span class="message-author">{{
                            chefs.user.chef
                          }}</span>
                          <div class="clearfix"></div>
                          <!-- <span class="message-content" v-text="caches"></span> -->
                        </div>
                      </div>
                    </a>
                  </li>
                </ul>
              </div>
            </div>

            <!-- Afficher les membres du projet !-->
            <div class="card project-user" id="membre">
              <div class="card-body">
                <h6 class="card-title m-b-20">
                  Membre de l'équipe
                  <button
                    type="button"
                    class="float-right btn btn-primary btn-sm"
                    data-toggle="modal"
                    data-target="#assign_user"
                    @click="getProject(projets.id_projet)"
                  >
                    <i class="fa fa-plus"></i> Ajouter
                  </button>
                </h6>

                <ul class="list-box">
                  <template v-for="equipe in equipes" :key="equipe.id">
                    <li>
                      <a href="">
                        <div class="list-item">
                          <div class="list-left">
                            <span class="avatar"
                              ><img
                                alt=""
                                src="assets/img/profiles/avatar-02.jpg"
                            /></span>
                          </div>
                          <div class="list-body">
                            <span class="message-author">{{
                              equipe.name
                            }}</span>
                            <div class="clearfix"></div>
                            <!-- <span class="message-content">Web Designer</span> -->
                          </div>
                        </div>
                      </a>
                    </li>
                  </template>
                </ul>
              </div>
            </div>

            <!-- Voir le detail de la tâche !-->
            <div class="card project-user collapse" id="collapseExample">
              <div class="card-body">
                <h6 class="card-title m-b-20">Information sur la tâche</h6>
                <div class="task-header">
                  <div class="task-due-date">
                    <a href="#" data-toggle="modal" data-target="#assignee">
                      <div class="due-icon">
                        <span>
                          <i class="material-icons">date_range</i>
                        </span>
                      </div>
                      <div class="due-info">
                        <div class="task-head-title">Date de fin</div>
                        <div class="due-date">
                          {{
                            moment(tachestoedit.date_fin_tache)
                              .lang("fr")
                              .format("LL")
                          }}
                        </div>
                      </div>
                    </a>
                    <span class="remove-icon">
                      <i class="fa fa-close"></i>
                    </span>
                  </div>
                </div>
                <div>
                  <p class="m-b-5">
                    Progression
                    <span class="text-success float-right"
                      >{{ tachestoedit.progression }}%</span
                    >
                  </p>

                  <div class="progress progress-xs mb-0">
                    <div
                      class="progress-bar bg-success"
                      role="progressbar"
                      data-toggle="tooltip"
                      title="{{ tachestoedit.progression  }}%"
                      :style="{ width: tachestoedit.progression + '%' }"
                    ></div>
                  </div>
                </div>
                <br />
                <div>
                  <td>Status:</td>
                  <td class="text-right">
                    <span v-if="tachestoedit.statut === 0" class="badge-danger"
                      >EN COURS</span
                    >
                    <span
                      v-else-if="tachestoedit.statut === 1"
                      class="badge-warning"
                      >FINI</span
                    >
                    <span v-else class="badge-success">TERMINER</span>
                  </td>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Add task !-->
      <div
        id="add_project"
        class="modal custom-modal fade"
        role="dialog"
        tabindex="-1"
        aria-labelledby="myModalLabel"
        aria-hidden="true"
      >
        <div
          class="modal-dialog modal-dialog-centered modal-lg"
          role="document"
        >
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Ajouter tâche</h5>
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
                <input hidden="hidden" v-model="projets.id_projet" />
                <div class="row">
                  <div class="col-sm-12">
                    <div class="form-group">
                      <label>Nom de la tâche</label>
                      <input
                        class="form-control"
                        type="text"
                        id="taches"
                        placeholder="Entrez le nom de la tache..."
                        v-model="nom_tache"
                      />
                      <span
                        style="color: red"
                        v-if="errors.nom_tache"
                        v-text="errors.nom_tache[0]"
                      ></span>
                      <!--                                    <span style="color: red" v-text="errors[0]"></span>-->
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>Date de début</label>
                      <input
                        class="form-control"
                        type="date"
                        id="debuts"
                        v-model="date_debut"
                      />
                      <span
                        style="color: red"
                        v-if="errors.date_debut"
                        v-text="errors.date_debut[0]"
                      ></span>
                      <!--                                    <span style="color: red" v-text="errors[1]"></span>-->
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>Date de fin</label>
                      <input
                        class="form-control"
                        type="date"
                        id="fins"
                        v-model="date_fin"
                        name="date_fin_tache"
                      />
                      <span
                        style="color: red"
                        v-if="errors.date_fin"
                        v-text="errors.date_fin[0]"
                      ></span>
                      <!--                                    <span style="color: red" v-text="errors[2]"></span>-->
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-12">
                    <div class="form-group">
                      <label>Personne(s) associée(s)</label>
                      <Multiselect
                        v-model="users_team"
                        :allow-empty="true"
                        mode="tags"
                        :custom-label="({ id, name }) => `${id} - [${name}]`"
                        valueProp="id"
                        placeholder="Choisir le(s) membre(s) de la tâche"
                        label="name"
                        track-by="name"
                        :options="equipes"
                        :object="true"
                        :close-on-select="false"
                        :searchable="true"
                      >
                      </Multiselect>
                      <span
                        style="color: red"
                        v-if="errors.users_team"
                        v-text="errors.users_team[0]"
                      ></span>
                      <!--                                    <span style="color: red" v-text="errors[3]"></span>-->
                    </div>
                  </div>
                </div>
                <div class="submit-section">
                  <button
                    v-on:click="displaynumbers"
                    type="button"
                    class="btn btn-primary submit-btn btn_tasks"
                    @click="TaskStore"
                    data-dismiss="modal"
                  >
                    Créer
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <!-- Fichier projet !-->
      <div id="file_validation" class="modal custom-modal fade" role="dialog">
        <div
          class="modal-dialog modal-dialog-centered modal-lg"
          role="document"
        >
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Ajouter fichier de validation</h5>
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
              <form @submit.prevent="submit" @keydown="form.onKeydown($event)">
                <input hidden="hidden" v-model="form.id_projet" />
                <div class="row">
                  <div class="col-sm-12">
                    <div class="form-group">
                      <label>Fichier</label>
                      <input
                        class="form-control"
                        type="file"
                        name="file"
                        @change="handleFile"
                      />
                    </div>
                  </div>
                </div>
                <div class="submit-section">
                  <input
                    type="submit"
                    class="btn btn-primary submit-btn btn_tasks"
                    value="Ajouter"
                  />
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <div id="file_projet" class="modal custom-modal fade" role="dialog">
        <div
          class="modal-dialog modal-dialog-centered modal-lg"
          role="document"
        >
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Ajouter fichier au projet</h5>
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
              <form @submit.prevent="submit" @keydown="form.onKeydown($event)">
                <input hidden="hidden" v-model="form.id_projet" />
                <div class="row">
                  <div class="col-sm-12">
                    <div class="form-group">
                      <label>Fichier</label>
                      <input
                        class="form-control"
                        type="file"
                        name="files"
                        @change="handleFiles"
                      />
                    </div>
                  </div>
                </div>
                <div class="submit-section">
                  <input
                    type="submit"
                    class="btn btn-primary submit-btn btn_tasks"
                    value="Ajouter"
                  />
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <!-- Edit task !-->
      <div id="edit_tache" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Modifier la tâche</h5>
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
                  <div class="col-sm-12">
                    <div class="form-group">
                      <label>Nom de la tâche</label>
                      <input
                        class="form-control"
                        type="text"
                        name="nom_tache"
                        id="nom_tache"
                        v-model="tachestoedit.nom_tache"
                      />
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>Date de début</label>
                      <input
                        class="form-control"
                        type="date"
                        v-model="tachestoedit.date_debut_tache"
                      />
                      {{
                        moment(tachestoedit.date_debut_tache)
                          .lang("fr")
                          .format("L")
                      }}
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>Date de fin</label>
                      <input
                        class="form-control"
                        type="date"
                        id="date_fin_tache"
                        name="date_fin_tache"
                        v-model="tachestoedit.date_fin_tache"
                      />
                      {{
                        moment(tachestoedit.date_fin_tache)
                          .lang("fr")
                          .format("L")
                      }}
                    </div>
                  </div>
                </div>
                <div class="submit-section">
                  <button
                    type="button"
                    class="btn btn-primary submit-btn btn_edittask"
                    @click="editTask"
                    data-dismiss="modal"
                  >
                    Modifier
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <!-- Edit info !-->
      <div id="profile_info" class="modal custom-modal fade" role="dialog">
        <div
          class="modal-dialog modal-dialog-centered modal-lg"
          role="document"
        >
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Modifier</h5>
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
                <input hidden="hidden" v-model="projets.id_projet" />
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>Nom du projet</label>
                      <input
                        type="text"
                        class="form-control"
                        v-model="projets.nom_projet"
                      />
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>Description</label>
                      <textarea
                        rows="4"
                        class="form-control"
                        v-model="projets.description"
                      ></textarea>
                    </div>
                  </div>
                </div>
                <div class="submit-section">
                  <button
                    type="button"
                    class="btn btn-primary submit-btn"
                    @click="editDescription"
                    data-dismiss="modal"
                  >
                    Modifier
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <!-- Date info !-->
      <div id="date_info" class="modal custom-modal fade" role="dialog">
        <div
          class="modal-dialog modal-dialog-centered modal-md"
          role="document"
        >
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Modifier la date de fin du projet</h5>
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
                <input hidden="hidden" v-model="projets.id_projet" />
                <input hidden="hidden" v-model="projets.date_debut" />
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>Date de fin</label>
                      <input
                        type="date"
                        class="form-control"
                        v-model="projets.date_fin"
                      />
                      {{ moment(projets.date_fin).lang("fr").format("L") }}
                    </div>
                  </div>
                </div>
                <div class="submit-section">
                  <button
                    type="button"
                    class="btn btn-primary submit-btn"
                    @click="endDate"
                    data-dismiss="modal"
                  >
                    Modifier
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <!-- Progression !-->
      <div id="work_task" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Ajouter progression</h5>
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
                  <div class="col-sm-12">
                    <div class="form-group progression">
                      <label>Progression(%)</label>
                      <input
                        class="form-control"
                        type="number"
                        min="1"
                        max="100"
                        v-model="tachestoedit.progression"
                      />
                    </div>
                  </div>
                </div>
                <div class="submit-section create">
                  <button
                    type="button"
                    class="btn btn-primary submit-btn btn_progress"
                    @click="progressTask"
                  >
                    Ajouter
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <!-- Ajouter une personne à la tâche !-->
      <div id="add_user" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">
                Ajouter une ou plusieurs personne(s) à la tâche
              </h5>
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
                <input hidden="hidden" v-model="tachestoedit.id_tache" />
                <div class="input-group m-b-30">
                  <Multiselect
                    v-model="users_team"
                    :allow-empty="true"
                    mode="tags"
                    :custom-label="({ id, name }) => `${id} - [${name}]`"
                    valueProp="id"
                    placeholder="Selectionnez le(s) personne(s)"
                    label="name"
                    track-by="name"
                    :options="equipes"
                    :object="true"
                    :close-on-select="false"
                    :searchable="true"
                  >
                  </Multiselect>
                </div>
                <div class="submit-section">
                  <button
                    type="button"
                    class="btn btn-primary submit-btn btn_assign"
                    @click="AddPersonStore"
                    data-dismiss="modal"
                  >
                    Ajouter
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <!-- Supprimer une tâche !-->
      <div class="modal custom-modal fade" id="delete_task" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content">
            <div class="modal-body">
              <div class="form-header">
                <h3>Supprimer tâche</h3>
                <p>Vous êtes sûr de vouloir supprimer ?</p>
              </div>
              <div class="modal-btn delete-action">
                <div class="row">
                  <div class="col-6">
                    <a
                      href="javascript:void(0);"
                      class="btn btn-primary continue-btn"
                      @click="deleteTask"
                      data-dismiss="modal"
                      >Supprimer</a
                    >
                  </div>
                  <div class="col-6">
                    <a
                      href="javascript:void(0);"
                      data-dismiss="modal"
                      class="btn btn-primary cancel-btn"
                      >Annuler</a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Ajouter une personne au projet !-->
      <div id="assign_user" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Ajouter une personne au projet</h5>
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
              <div class="input-group m-b-30">
                <Multiselect
                  v-model="user_id"
                  :options="users"
                  :custom-label="({ id, name }) => `${id} - [${name}]`"
                  valueProp="id"
                  placeholder="Rechercher le collaborateur"
                  label="name"
                  track-by="name"
                  :searchable="true"
                >
                </Multiselect>
              </div>
              <div class="submit-section">
                <button
                  class="btn btn-primary submit-btn"
                  @click="storeMember"
                  data-dismiss="modal"
                >
                  Ajouter
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Marquer la tâche comme fini !-->
      <div class="modal custom-modal fade" id="validate_task" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content">
            <div class="modal-body">
              <div class="form-header">
                <h3>Marquer la tâche comme fini</h3>
                <p>
                  Vous êtes sûr de vouloir marquer
                  <strong>{{ tachestoedit.nom_tache }} </strong> comme fini?
                </p>
              </div>
              <div class="modal-btn delete-action">
                <div class="row">
                  <div class="col-6">
                    <a
                      href="javascript:void(0);"
                      class="btn btn-primary continue-btn"
                      @click="finishTask"
                      data-dismiss="modal"
                      >Marquer</a
                    >
                  </div>
                  <div class="col-6">
                    <a
                      href="javascript:void(0);"
                      data-dismiss="modal"
                      class="btn btn-primary cancel-btn"
                      >Annuler</a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Marquer la tâche comme en cours !-->
      <div class="modal custom-modal fade" id="cancel_task" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content">
            <div class="modal-body">
              <div class="form-header">
                <h3>Marquer la tâche comme en cours</h3>
                <p>
                  Vous êtes sûr de vouloir marquer la tache
                  <strong>{{ tachestoedit.nom_tache }} </strong> comme en cours?
                </p>
              </div>
              <div class="modal-btn delete-action">
                <div class="row">
                  <div class="col-6">
                    <a
                      href="javascript:void(0);"
                      class="btn btn-primary continue-btn"
                      @click="returnTask"
                      data-dismiss="modal"
                      >Marquer</a
                    >
                  </div>
                  <div class="col-6">
                    <a
                      href="javascript:void(0);"
                      data-dismiss="modal"
                      class="btn btn-primary cancel-btn"
                      >Annuler</a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Membres de la tâche !-->
      <div id="detail_task" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">
                Détails de la tâche {{ tachestoedit.nom_tache }}
              </h5>
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
              <div class="chat-window">
                <div class="chat-box">
                  <div class="chats">
                    <div class="chat-footer">
                      <span class="followers-title">Membres</span>
                      <a
                        class="avatar"
                        href="#"
                        data-toggle="tooltip"
                        title="Jeffery Lalor"
                      >
                        <img alt="" src="assets/img/profiles/avatar-16.jpg" />
                      </a>
                      <a
                        class="avatar"
                        href="#"
                        data-toggle="tooltip"
                        title="Richard Miles"
                      >
                        <img alt="" src="assets/img/profiles/avatar-09.jpg" />
                      </a>
                      <a
                        class="avatar"
                        href="#"
                        data-toggle="tooltip"
                        title="John Smith"
                      >
                        <img alt="" src="assets/img/profiles/avatar-10.jpg" />
                      </a>
                      <a
                        class="avatar"
                        href="#"
                        data-toggle="tooltip"
                        title="Mike Litorus"
                      >
                        <img alt="" src="assets/img/profiles/avatar-05.jpg" />
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Modifier chef de projet !-->
      <div id="edit_chef" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Modifier le chef du projet</h5>
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
              <div class="input-group m-b-30">
                <Multiselect
                  v-model="user_chef"
                  :options="users"
                  :custom-label="({ id, name }) => `${id} - [${name}]`"
                  valueProp="id"
                  placeholder="Rechercher le collaborateur"
                  label="name"
                  track-by="name"
                  :searchable="true"
                >
                </Multiselect>
              </div>
              <div class="submit-section">
                <button
                  class="btn btn-primary submit-btn"
                  @click="editChef"
                  data-dismiss="modal"
                >
                  Modifier
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Ajouter cette tâche à votre agenda !-->
      <div id="add_event" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Ajouter cette tâche à votre agenda</h5>
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
                <input hidden="hidden" v-model="tachestoedit.nom_tache" />
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label
                        >Date de début <span class="text-danger">*</span></label
                      >
                      <input
                        class="form-control"
                        type="datetime-local"
                        v-model="date_debut"
                      />
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label
                        >Date de fin <span class="text-danger">*</span></label
                      >
                      <input
                        class="form-control"
                        type="datetime-local"
                        v-model="date_fin"
                      />
                    </div>
                  </div>
                </div>
                <div class="submit-section">
                  <button
                    type="button"
                    class="btn btn-primary submit-btn"
                    @click="AddCalendarStore"
                    data-dismiss="modal"
                  >
                    Ajouter
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <BlockTask />
      <ViewPerson />
    </div>
  </div>
</template>

<script>
import Header from "../layouts/Header";
import Sidebar from "../layouts/Sidebar";
import BlockTask from "../Task/BlockTask";
import ViewPerson from "../Task/ViewPerson";
import axios from "axios";
import moment from "moment";
import { createToaster } from "@meforma/vue-toaster";
import Multiselect from "@vueform/multiselect";
import Form from "vform";

const toaster = createToaster({
  /* options */
});

export default {
  data() {
    return {
      form: Form.make({
        id_projet: "",
        file: null,
        files: null,
      }),
      projets: {},
      equipes: {},
      chefs: {},
      taches: {},
      projectoedit: "",
      tachestoedit: "",
      nom_tache: "",
      date_debut: "",
      date_fin: "",
      errors: {},
      filevalids: {},
      fileprojects: {},
      file: "",
      filename: "",
    };
  },
  mounted() {
     setInterval(() => {
      this.fetchTask();
     }, 2000);
    
  },
  created() {
    this.fetchTask();
    setInterval(this.getNow, 1000);
  },
  methods: {
    TaskStore() {
      let test = JSON.parse(JSON.stringify(this.users_team));
      let donnees = [];

      for (let i = 0; i < Object.keys(test).length; i++) {
        donnees.push(test[i]["id"]);
      }

      axios
        .post("/api/taches", {
          nom_tache: this.nom_tache,
          date_debut: this.date_debut,
          date_fin: this.date_fin,
          projet: this.projets.id_projet,
          users_team: donnees,
        })
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Tâche ajouté avec succès`, {
              position: "top-right",
            });
            this.taches = response.data;
            this.fetchTask();

            // this.nom_tache = '';
            // this.date_fin = '';
            // this.date_debut = '';
            // this.users_team = '';
          }
        })
        .catch((error) => {
          if (error.response.status === 422) {
            this.errors = error.response.data.errors;
            toaster.error(
              `Tâche non crée . Veuillez remplir les champs demandé`,
              {
                position: "top-right",
                duration: 4000,
              }
            );
          }
        });
    },
    editTask() {
      axios
        .patch("/api/taches/" + this.tachestoedit.id_tache, {
          nom_tache: this.tachestoedit.nom_tache,
          date_debut: this.tachestoedit.date_debut_tache,
          date_fin: this.tachestoedit.date_fin_tache,
        })
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Tâche modifié avec succès`, {
              position: "top-right",
            });
            this.taches = response.data;
            this.fetchTask();
          }
        })
        .catch((error) => {
          if (error.response.status === 422) {
            this.errors = error.response.data.errors;
            toaster.error(
              `Tâche non modifié . Veuillez remplir les champs demandé`,
              {
                position: "top-right",
                duration: 4000,
              }
            );
          }
        });
    },
    editDescription() {
      axios
        .patch(`/api/projets/description/${this.$route.params.id_projet}`, {
          nom_projet: this.projets.nom_projet,
          description: this.projets.description,
        })
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Projet modifié avec succès`, {
              position: "top-right",
            });
            this.taches = response.data;
            this.fetchTask();
          }
        })
        .catch((error) => {
          if (error.response.status === 422) {
            this.errors = error.response.data.errors;
            toaster.error(
              `Tâche non modifié . Veuillez remplir les champs demandé`,
              {
                position: "top-right",
                duration: 4000,
              }
            );
          }
        });
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
      const dateTime = date;
      this.timestamp = dateTime;
    },
    getProject() {
      axios
        .get(`/api/projets/edit/${this.$route.params.id_projet}`)
        // .get('/api/projets/edit/' + id_projet)
        .then((response) => {
          this.projectoedit = response.data;
        })
        // (this.projectoedit = response.data))
        // .then(response => console.log(response.data))
        .catch((error) => console.log(error));
    },
    getTaches(id_tache) {
      axios
        .get("/api/taches/edit/" + id_tache)
        .then((response) => (this.tachestoedit = response.data))
        .catch((error) => console.log(error));
    },
    fetchTask() {
      this.error = this.users = null;
      this.loading = true;
      this.moment = moment;
      var that = this;
      axios
        .all([
          axios.get(`/api/projets/edit/${this.$route.params.id_projet}`),
          axios.get(`/api/projets/equipe/${this.$route.params.id_projet}`),
          axios.get(`/api/projets/chef/${this.$route.params.id_projet}`),
          axios.get(`/api/projets/tasks/${this.$route.params.id_projet}`),
          axios.get(`/api/projets/encours/${this.$route.params.id_projet}`),
          axios.get(`/api/projets/completes/${this.$route.params.id_projet}`),
          axios.get(`/api/projets/progress/${this.$route.params.id_projet}`),
          axios.get("/api/users"),
          axios.get(`/api/projets/cache/${this.$route.params.id_projet}`),
          axios.get(
            `/api/projets/getfilevalidation/${this.$route.params.id_projet}`
          ),
          axios.get(
            `/api/projets/getfileproject/${this.$route.params.id_projet}`
          ),
        ])
        .then(
          axios.spread(function (
            projets,
            equipes,
            chefs,
            taches,
            encours,
            completes,
            progress,
            users,
            caches,
            filevalids,
            fileprojects
          ) {
            that.projets = projets.data;
            that.equipes = equipes.data;
            that.chefs = chefs.data;
            that.taches = taches.data;
            that.encours = encours.data;
            that.completes = completes.data;
            that.progress = progress.data;
            that.users = users.data;
            that.caches = caches.data;
            that.filevalids = filevalids.data;
            that.fileprojects = fileprojects.data;
            that.form.id_projet = projets.data.id_projet;
            // console.log(progress.data);
          })
        );
    },
    handleFile(event) {
      // We'll grab just the first file...
      // You can also do some client side validation here.
      const file = event.target.files[0];

      // Set the file object onto the form...
      this.form.file = file;
      // this.form.id_sinistre = file
      // php artisan make:migration create_item_order_table --create="item_order" file_sinistres
    },
    async submit() {
      const response = await this.form
        .post("/api/addfilevalidation", {})
        .then((res) => {
          if (res.status === 200) {
            toaster.success(`Fichier de validation ajouté avec succès`, {
              position: "top-right",
            });
          }
          // window.$("#showModal").modal("hide");
        });
    },
    handleFiles(event) {
      // We'll grab just the first file...
      // You can also do some client side validation here.
      const files = event.target.files[0];

      // Set the file object onto the form...
      this.form.files = files;
      // this.form.id_sinistre = file
      // php artisan make:migration create_item_order_table --create="item_order" file_sinistres
    },
    async submit() {
      const response = await this.form
      .post("/api/addfile", {})
      .then((res) => {
        if (res.status === 200) {
          toaster.success(`Fichier ajouté avec succès`, {
            position: "top-right",
          });
        }
      });
    },
    markTask(id_tache) {
      axios
        .patch("/api/taches/mark/" + id_tache, {
          id_projet: this.projets.id_projet,
        })
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Tâche marqué comme terminé`, {
              position: "top-right",
            });
            this.taches = response.data;
            this.fetchTask();
          }
        });
    },
    demarkTask(id_tache) {
      axios.patch("/api/taches/demark/" + id_tache).then((response) => {
        if (response.status === 200) {
          toaster.success(`Tâche marqué comme non terminé`, {
            position: "top-right",
          });
          this.taches = response.data;
          this.fetchTask();
        }
      });
    },
    progressTask() {
      axios
        .patch("/api/taches/progress/" + this.tachestoedit.id_tache, {
          progression: this.tachestoedit.progression,
        })
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Progression modifié avec sucess`, {
              position: "top-right",
            });
            this.taches = response.data;
            this.fetchTask();
          }
        })
        .catch((error) => console.log(error));
    },
    AddPersonStore() {
      // this.errors = []
      let test = JSON.parse(JSON.stringify(this.users_team));
      let donnees = [];

      for (let i = 0; i < Object.keys(test).length; i++) {
        donnees.push(test[i]["id"]);
      }
      axios
        .patch("/api/taches/assign/" + this.tachestoedit.id_tache, {
          projet: this.tachestoedit.id_tache,
          users_team: donnees,
        })
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Tâche crée avec succès`, {
              position: "top-right",
            });
            this.taches = response.data;
            this.fetchTask();
          }
        })
        .catch((error) => {
          if (error.response.status === 422) {
            this.errors = error.response.data.errors;
            toaster.error(
              `Tâche non crée . Veuillez remplir les champs demandé`,
              {
                position: "top-right",
                duration: 4000,
              }
            );
          }
        });
    },
    deleteTask() {
      axios
        .patch("/api/taches/supprime/" + this.tachestoedit.id_tache)
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Tâche supprimé avec succès`, {
              position: "top-right",
            });
            this.taches = response.data;
            this.fetchTask();
          }
        });
    },
    storeMember() {
      axios
        .patch("/api/projets/members/" + this.projectoedit.id_projet, {
          user_id: this.user_id,
        })
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Collaborateur ajouté avec succès`, {
              position: "top-right",
            });
            this.taches = response.data;
            this.fetchTask();
          }
        })
        .catch((error) => console.log(error));
    },
    finishTask() {
      axios
        .patch("/api/taches/finish/" + this.tachestoedit.id_tache)
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Tâche marqué comme finie`, {
              position: "top-right",
            });
            this.taches = response.data;
            this.fetchTask();
          }
        })
        .catch((error) => console.log(error));
    },
    returnTask() {
      axios
        .patch("/api/taches/return/" + this.tachestoedit.id_tache)
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Tâche marqué comme encours`, {
              position: "top-right",
            });
            this.taches = response.data;
            this.fetchTask();
          }
        })
        .catch((error) => console.log(error));
    },
    AddCalendarStore() {
      axios
        .post("/api/events", {
          tache: this.tachestoedit.nom_tache,
          start_time: this.date_debut,
          end_time: this.date_fin,
        })
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Tâche ajouté avec succès`, {
              position: "top-right",
            });
          }
        })
        .catch((error) => {
          if (error.response.status === 422) {
            this.errors = error.response.data.errors;
            toaster.error(
              `Tâche non ajouté . Veuillez remplir les champs demandé`,
              {
                position: "top-right",
                duration: 4000,
              }
            );
          }
        });
    },
    endDate() {
      axios
        .patch(`/api/projets/endate/${this.$route.params.id_projet}`, {
          date_debut: this.projets.date_debut,
          date_fin: this.projets.date_fin,
        })
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Date de fin modifié avec succès`, {
              position: "top-right",
            });
            this.taches = response.data;
            this.fetchTask();
          }
        })
        .catch((error) => {
          if (error.response.status === 422) {
            this.errors = error.response.data.errors;
            toaster.error(
              `Projet non ajouté . Veuillez remplir le champs demandé`,
              {
                position: "top-right",
                duration: 4000,
              }
            );
          }
        });
    },
    editChef() {
      axios
        .patch(`/api/projets/editchef/${this.$route.params.id_projet}`, {
          user_chef: this.user_chef,
        })
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Cgef de projet ajouté avec succès`, {
              position: "top-right",
            });
            this.taches = response.data;
            this.fetchTask();
          }
        })
        .catch((error) => console.log(error));
    },
  },
  name: "ViewProject",
  components: {
    ViewPerson,
    BlockTask,
    Sidebar,
    Header,
    Multiselect,
  },
};
</script>

<style src="@vueform/multiselect/themes/default.css"></style>
