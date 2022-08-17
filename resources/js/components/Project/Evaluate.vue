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
              <li class="breadcrumb-item">
                <a href="{{ url('/home') }}">Tableau de bord</a>
              </li>
              <li class="breadcrumb-item active">S'évaluer</li>
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
                  <div class="row setup-content" id="step-1">
                    <div class="col-xs-12">
                      <div class="col-md-12">
                        <div class="table-responsive m-t-15">
                          <table class="table table-striped custom-table">
                            <thead>
                              <tr>
                                <th>A-Compétences générales</th>
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
                                <td>Sens du partage de l'information</td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="sens"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="sens"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="sens"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="sens"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="sens"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_sens"
                                    id="comment_sens"
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  Implication dans les projets et le cabinet en
                                  général
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="implication"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="implication"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="implication"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="implication"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="implication"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_implication"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>Respect des deadlines</td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="respect"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="respect"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="respect"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="respect"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="respect"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_respect"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>Agir dans l'intérêt de l'entreprise</td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="agir"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="agir"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="agir"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="agir"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="agir"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_agir"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  Ecoute et prise en compte du besoin client et
                                  de la qualité de services à fournir
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="ecoute"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="ecoute"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="ecoute"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="ecoute"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="ecoute"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_ecoute"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  Formation continue, curiosité professionnelle
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="formation"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="formation"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="formation"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="formation"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="formation"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_formation"
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
                            cinquieme
                          "
                          @click.prevent="next()"
                          type="button"
                        >
                          Suivant
                        </button>
                      </div>
                    </div>
                  </div>

                  <div class="row setup-content" id="step-2">
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
                                <td>Travail rendu de bonne qualité</td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="travail"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="travail"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="travail"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="travail"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="travail"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_travail"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  Quantité de travail produite efficacement
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="quantite"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="quantite"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="quantite"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="quantite"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="quantite"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_quantite"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  Autonomie dans l'interprétation des directives
                                  et l'organisation du travail
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="autonomie"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="autonomie"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="autonomie"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="autonomie"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="autonomie"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_autonomie"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  Capacité de prise d'initiative/de gestion des
                                  difficultés
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="difficulte"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="difficulte"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="difficulte"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="difficulte"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="difficulte"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_difficulte"
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
                                    name="sein"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="sein"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="sein"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="sein"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="sein"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_sein"
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
                            sixieme
                          "
                          type="button"
                        >
                          Suivant
                        </button>
                      </div>
                    </div>
                  </div>

                  <div class="row setup-content" id="step-3">
                    <div class="col-xs-12">
                      <div class="col-md-12">
                        <div class="table-responsive m-t-15">
                          <table class="table table-striped custom-table">
                            <thead>
                              <tr>
                                <th>C-Gestion humaine</th>
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
                                <td>Capacité à travailler en équipe</td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="travailler"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="travailler"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="travailler"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="travailler"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="travailler"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_travailler"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>Pugnacité pour atteindre les objectifs</td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="pugnacite"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="pugnacite"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="pugnacite"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="pugnacite"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="pugnacite"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_pugnacite"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>Capacité à mobiliser et convaincre</td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="convaincre"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="convaincre"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="convaincre"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="convaincre"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="convaincre"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_convaincre"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>Capacité d'écoute, de retranscription</td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="retranscri"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="retranscri"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="retranscri"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="retranscri"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="retranscri"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_retranscri"
                                    id=""
                                    cols="30"
                                    rows="3"
                                  ></textarea>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  Aptitude à remonter les informations pour le
                                  bénéfice du projet
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="aptitude"
                                    value="Amélioration absolument prioritaire"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="aptitude"
                                    value="Point d'amélioration"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="aptitude"
                                    value="Conforme au niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="aptitude"
                                    value="Au-dessus du niveau attendu"
                                  />
                                </td>
                                <td class="text-center">
                                  <input
                                    type="radio"
                                    name="aptitude"
                                    value="Excellent"
                                  />
                                </td>
                                <td class="text-center">
                                  <textarea
                                    name="comment_aptitude"
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
                            septieme
                          "
                          type="button"
                        >
                          Suivant
                        </button>
                      </div>
                    </div>
                  </div>

                  <div class="row setup-content" id="step-4">
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
                                        <td>Sens du partage d'information</td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Implication dans les projets et le
                                          cabinet en général
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>Respect des deadlines</td>
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
                                          Agir dans l'intérêt de l'entreprise
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Ecoute et prise en compte du besoin
                                          client et de la qualité de services à
                                          fournir
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Formation continue, curiosité
                                          professionnelle
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>Travail rendu de bonne qualité</td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Quantité de travail produite
                                          efficacement
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Autonomie dans l'interprétation des
                                          directives et l'organisation du
                                          travail
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Capacité de prise d'initiative/de
                                          gestion des difficultés
                                        </td>
                                        <td class="d-none d-sm-table-cell">
                                          <span id="disponibilite"></span>
                                        </td>
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
                                        <td>Capacité à travailler en équipe</td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Pugnacité pour atteindre les objectifs
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Capacité à mobiliser et convaincre
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Capacité d'écoute, de retranscription
                                        </td>
                                        <td class="d-none d-sm-table-cell"></td>
                                        <td class="d-none d-sm-table-cell"></td>
                                      </tr>
                                      <tr>
                                        <td>
                                          Aptitude à remonter les informations
                                          pour le bénéfice du projet
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
                        <input
                          type="hidden"
                          name="project"
                          value="{{ $projets['nom_projet'] }}"
                        />
                        <button
                          class="btn btn-default prevBtn btn-lg pull-left"
                          type="button"
                        >
                          Précédent
                        </button>
                        <button
                          class="btn btn-success btn-lg pull-right"
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
  name: "Evaluate",
  components: {
    Sidebar,
    Header,
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
  },
};
</script>
 <style type="text/css">
        body {
            margin-top: 40px;
        }

        /*
        https://www.thesoftwareguy.in/creating-responsive-multi-step-form-bootstrap-jquery/


        */
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