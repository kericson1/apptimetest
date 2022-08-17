<template>
  <div class="page-wrapper">
    <Header />

    <Sidebar />

    <div class="content container-fluid">
      <!-- Page Header -->
      <div class="page-header">
        <div class="row">
          <div class="col">
            <h3 class="page-title"></h3>
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="">Tableau de bord</a></li>
              <li class="breadcrumb-item active">Evaluer responsable</li>
            </ul>
          </div>
        </div>
      </div>
      <!-- /Page Header -->

      <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <div class="container">
                <form role="form" method="POST">
                  <input type="hidden" name="id_projet" value="" />
                  <div class="row setup-content" id="step-1" v-if="step == 1">
                    Etape 1
                    <div class="col-xs-12">
                      <div class="col-md-12">
                        <div class="table-responsive m-t-15">
                          <table class="table table-striped custom-table">
                            <thead>
                              <tr>
                                <th>A-Compétences managériales</th>
                                <th class="text-center">
                                  Amélioration absolument prioritaire
                                </th>
                                <th class="text-center">
                                  Point d'amélioration
                                </th>
                                <th class="text-center">
                                  Conforme au niveau attendu
                                </th>
                                <th class="text-center">
                                  Au-dessus du niveau attendu
                                </th>
                                <th class="text-center">Excellent</th>
                                <th class="text-center">Commentaire</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>
                                  Organisation claire du projet et des tâches au
                                  sein de l'équipe
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="organisation"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="organisation"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="organisation"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="organisation"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="organisation"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_org"
                                    id="comment_org"
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  Responsabilisation efficace des collaborateurs
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="respo"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="respo"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="respo"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="respo"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="respo"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_respo"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  Communication transparente et continue
                                  permettant un travail efficace (oral et écrit)
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="com"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="com"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="com"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="com"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="com"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_com"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  Fédération complète des membres de l'équipe
                                  autour des objectifs précis
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="fed"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="fed"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="fed"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="fed"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="fed"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_fed"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  Gestion équitable des situations
                                  (reconnaissance des mérites, traitement des
                                  dysfonctionnements)
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="gestion"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="gestion"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="gestion"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="gestion"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="gestion"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_gestion"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                        <button
                          class="
                            btn btn-primary
                            nextBtn
                            btn-lg
                            pull-right
                            premier
                          "
                          @click.prevent="next()"
                          type="button"
                        >
                          Suivant
                        </button>
                      </div>
                    </div>
                  </div>

                  <div class="row setup-content" id="step-2" v-if="step == 2">
                    Etape 2
                    <div class="col-xs-12">
                      <div class="col-md-12">
                        <div class="table-responsive m-t-15">
                          <table class="table table-striped custom-table">
                            <thead>
                              <tr>
                                <th>B-Compétences opérationnelles</th>
                                <th class="text-center">
                                  Amélioration absolument prioritaire
                                </th>
                                <th class="text-center">
                                  Point d'amélioration
                                </th>
                                <th class="text-center">
                                  Conforme au niveau attendu
                                </th>
                                <th class="text-center">
                                  Au-dessus du niveau attendu
                                </th>
                                <th class="text-center">Excellent</th>
                                <th class="text-center">Commentaire</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>
                                  Compréhension fine des enjeux et objectifs
                                  stratégiques du projets et de l'entreprise
                                  dans sa globalité et organisation efficace du
                                  travail en conséquence
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="comprehension"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="comprehension"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="comprehension"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="comprehension"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="comprehension"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_compr"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  Prise de décision claire, efficace et assumée
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="prise_decision"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="prise_decision"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="prise_decision"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="prise_decision"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="prise_decision"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_prise"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  Délégation efficace dans un soucis de
                                  responsabilisation
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="deleguation"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="deleguation"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="deleguation"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="deleguation"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="deleguation"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_deleg"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  Capacité d'anticipation/de gestion des
                                  difficultés
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="capacite"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="capacite"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="capacite"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="capacite"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="capacite"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_cap"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  Présence effective au sein de l'équipe
                                  (savoir-faire, support, formation, soutien,
                                  facilitateur, relais hiérarchique, etc…)
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="presence"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="presence"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="presence"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="presence"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="presence"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_pre"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                        <button
                          class="btn btn-default prevBtn btn-lg pull-left"
                          @click.prevent="prev()"
                          type="button"
                        >
                          Précédent
                        </button>
                        <button
                          class="
                            btn btn-primary
                            nextBtn
                            btn-lg
                            pull-right
                            deuxieme
                          "
                          @click.prevent="next()"
                          type="button"
                        >
                          Suivant
                        </button>
                      </div>
                    </div>
                  </div>

                  <div class="row setup-content" id="step-3" v-if="step == 3">
                    Etape 3
                    <div class="col-xs-12">
                      <div class="col-md-12">
                        <div class="table-responsive m-t-15">
                          <table class="table table-striped custom-table">
                            <thead>
                              <tr>
                                <th>C-Compétences opérationnelles</th>
                                <th class="text-center">
                                  Amélioration absolument prioritaire
                                </th>
                                <th class="text-center">
                                  Point d'amélioration
                                </th>
                                <th class="text-center">
                                  Conforme au niveau attendu
                                </th>
                                <th class="text-center">
                                  Au-dessus du niveau attendu
                                </th>
                                <th class="text-center">Excellent</th>
                                <th class="text-center">Commentaire</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>
                                  Disponibilité pour les équipes et
                                  accessibilité aisée
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="disponibilite"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="disponibilite"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="disponibilite"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="disponibilite"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="disponibilite"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_disp"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  Adhésion aux valeurs du cabinet (transmission,
                                  excellence)
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="adhesion"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="adhesion"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="adhesion"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="adhesion"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="adhesion"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_adh"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>Capacité d'empathie et d'anticipation</td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="capacite_emp"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="capacite_emp"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="capacite_emp"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="capacite_emp"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="capacite_emp"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_capemp"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                        <button
                          class="btn btn-default prevBtn btn-lg pull-left"
                          @click.prevent="prev()"
                          type="button"
                        >
                          Précédent
                        </button>
                        <button
                          class="
                            btn btn-primary
                            nextBtn
                            btn-lg
                            pull-right
                            troisieme
                          "
                          @click.prevent="next()"
                          type="button"
                        >
                          Suivant
                        </button>
                      </div>
                    </div>
                  </div>

                  <div class="row setup-content" id="step-4" v-if="step == 4">
                    Résumé
                    <div class="col-xs-12">
                      <div class="col-md-12">
                        <h3>Résumé</h3>
                        <div class="row">
                          <div class="col-md-12">
                            <div class="card">
                              <div class="card-body">
                                <div class="table-responsive">
                                  <table
                                    class="table table-striped table-hover"
                                  >
                                    <thead>
                                      <tr>
                                        <th></th>
                                        <th class="d-none d-sm-table-cell">
                                          Compétence
                                        </th>
                                        <th>Commentaire</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr>
                                        <td>
                                          Organisation claire du projet et des
                                          tâches au sein de l'équipe
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Responsabilisation efficace des
                                          collaborateurs
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Communication transparente et continue
                                          permettant un travail efficace (oral
                                          et écrit)
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Fédération complète des membres de
                                          l'équipe autour des objectifs précis
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Gestion équitable des situations
                                          (reconnaissance des mérites,
                                          traitement des dysfonctionnements)
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Prise de décision claire, efficace et
                                          assumée
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Compréhension fine des enjeux et
                                          objectifs stratégiques du projets et
                                          de l'entreprise dans sa globalité et
                                          organisation efficace du travail en
                                          conséquence
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Délégation efficace dans un soucis de
                                          responsabilisation
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Capacité d'anticipation/de gestion des
                                          difficultés
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Présence effective au sein de l'équipe
                                          (savoir-faire, support, formation,
                                          soutien, facilitateur, relais
                                          hiérarchique, etc…)
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Disponibilité pour les équipes et
                                          accessibilité aisée
                                        </td>
                                        <td class="d-none d-sm-table-cell">
                                          <span id="disponibilite"></span>
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Adhésion aux valeurs du cabinet
                                          (transmission, excellence)
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Capacité d'empathie et d'anticipation
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <input type="hidden" value="" name="responsable" />
                        <input type="hidden" name="project" value="" />
                        <button
                          class="btn btn-default prevBtn btn-lg pull-left"
                          @click.prevent="prev()"
                          type="button"
                        >
                          Précédent
                        </button>
                        <button
                          class="btn btn-success btn-lg pull-right quatrieme"
                          @click.prevent="submit()"
                          type="submit"
                        >
                          Envoyer!
                        </button>
                      </div>
                    </div>
                  </div>

                </form>
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
export default {
  name: "EvalueProject",
  components: {
    Sidebar,
    Header,
  },
  data() {
    return {
      step: 1,
    };
  },
  methods: {
    prev() {
      this.step--;
    },
    next() {
      this.step++;
    },
    submit() {
      alert("Form Is Submitted.");
    },
  },
};
</script>
 <style type="text/css">
        body {
            margin-top: 40px;
        }


        .stepwizard-step p {
            margin-top: 10px;
        }

        .stepwizard-row {
            display: table-row;
        }

        .stepwizard {
            display: table;
            width: 100%;
            position: relative;
        }

        .stepwizard-step button[disabled] {
            opacity: 1 !important;
            filter: alpha(opacity=100) !important;
        }

        .stepwizard-row:before {
            top: 14px;
            bottom: 0;
            position: absolute;
            content: " ";
            width: 100%;
            height: 1px;
            background-color: #ccc;
            z-order: 0;

        }

        .stepwizard-step {
            display: table-cell;
            text-align: center;
            position: relative;
        }

        .btn-circle {
            width: 30px;
            height: 30px;
            text-align: center;
            padding: 6px 0;
            font-size: 12px;
            line-height: 1.428571429;
            border-radius: 15px;
        }
    </style>