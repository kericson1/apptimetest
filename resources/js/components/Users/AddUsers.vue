<template>
    <div id="add_user" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ajouter utilisateur</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="mt-2 mb-6 text-red-600" v-if="errors !== ''">
                        {{ errors }}
                    </div>
                    <form>
                        <div class="row">
                            <div class="col-sm-12" style="text-align: center;">
                                <label>Selectionnez civilité</label>
                            </div>
                            <div class="col-sm-12" style="text-align: center;">
                                <input type="radio" id="homme" value="M." v-model="civilite">
                                <label for="homme">M.</label>
                                <input type="radio" id="femme" value="Mme" v-model="civilite">
                                <label for="femme">Mme</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Nom <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" v-model="name">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Prénom<span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" v-model="prenom">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Email <span class="text-danger">*</span></label>
                                    <input class="form-control" type="email" v-model="email">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label> Fonction<span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" v-model="poste">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Rôle</label>
                                    <Multiselect
                                        v-model="role_id"
                                        :options="roles"
                                        :custom-label="({ id_role, nom_role }) => `${id_role} - [${nom_role}]`"
                                        valueProp="id_role"
                                        placeholder="Choisir un rôle"
                                        label="nom_role"
                                        track-by="nom_role"
                                        :searchable="true">
                                    </Multiselect>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Grade</label>
                                    <Multiselect
                                        v-model="grade_id"
                                        :options="grades"
                                        :custom-label="({ id_grade, nom_grade }) => `${id_grade} - [${nom_grade}]`"
                                        valueProp="id_grade"
                                        placeholder="Choisir un grade"
                                        label="nom_grade"
                                        track-by="nom_grade"
                                        :searchable="true">
                                    </Multiselect>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <label class="d-block">Ce collaborateur est il responsable?</label>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input respooui" type="radio" name="respo"
                                           value="OUI">
                                    <label class="form-check-label" for="gender_male">Oui</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input responon" type="radio" name="respo"
                                           value="NON">
                                    <label class="form-check-label" for="gender_female">Non</label>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <label class="d-block">Ce collaborateur est il membre d'un service?</label>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input collabooui" type="radio" name="collabo"
                                           id="gender_male"
                                           value="OUI">
                                    <label class="form-check-label" for="gender_male">Oui</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input collabonon" type="radio" name="collabo"
                                           id="gender_female"
                                           value="NON">
                                    <label class="form-check-label" for="gender_female">Non</label>
                                </div>
                            </div>
                            <div class="col-sm-6 justificatif" style="display: none;float: left">
                                <div class="form-group">
                                    <label>Selectionnez le(s) département(s) du responsable</label>
                                    <Multiselect
                                        v-model="service_id"
                                        :allow-empty="true"
                                        mode="tags"
                                        :custom-label="({ id_service, nom_service }) => `${id_service} - [${nom_service}]`"
                                        valueProp="id_service"
                                        placeholder="Selectionnez le ou les pôles du responsable"
                                        label="nom_service"
                                        track-by="nom_service"
                                        :options="services"
                                        :object="true"
                                        :close-on-select="false"
                                        :searchable="true">
                                    </Multiselect>
                                </div>
                            </div>
                            <div class="col-sm-6 affiche" style="display: none">
                                <div class="form-group">
                                    <label>Selectionnez le(s) département(s) du membre</label>
                                    <Multiselect
                                        v-model="services_id"
                                        :allow-empty="true"
                                        mode="tags"
                                        :custom-label="({ id_service, nom_service }) => `${id_service} - [${nom_service}]`"
                                        valueProp="id_service"
                                        placeholder="Selectionnez le ou les pôles du membre"
                                        label="nom_service"
                                        track-by="nom_service"
                                        :options="services"
                                        :object="true"
                                        :close-on-select="false"
                                        :searchable="true">
                                    </Multiselect>
                                </div>
                            </div>
                        </div>
                        <div class="submit-section">
                            <button type="button" class="btn btn-primary submit-btn btn_add" @click="storeUser" data-dismiss="modal">Ajouter
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import {createToaster} from "@meforma/vue-toaster";
import Multiselect from "@vueform/multiselect";
import axios from "axios";

const toaster = createToaster({ /* options */});
export default {
    components: {
        Multiselect,
    },
    data() {
        return {
            civilite: '',
            prenom: '',
            name: '',
            email: '',
            poste: '',
            services: '',
            service_id: [],
            services_id: [],
            users: {},
            grades: '',
            grade_id: '',
            role_id: '',
            nom_role: '',
            droits: [],
            roles: {}
        }

    },
    created: function () {
        var that = this
        axios.all([
            axios.get('api/users'),
            axios.get('api/grades'),
            axios.get('api/services'),
            axios.get('api/roles')
        ])
            .then(
                axios.spread(
                    function (users, grades, services, roles) {
                        that.users = users.data;
                        that.grades = grades.data;
                        that.services = services.data;
                        that.roles = roles.data;
                        // console.log(grades.data)
                        // console.log(services.data)
                    }
                ))

    },
    methods: {
        storeUser() {

            let test = JSON.parse(JSON.stringify(this.service_id))
            let donnee = []

            for (let i = 0; i < Object.keys(test).length; i++) {
                donnee.push(test[i]['id_service'])
            }

            let tests = JSON.parse(JSON.stringify(this.services_id))
            let donnees = []

            for (let i = 0; i < Object.keys(tests).length; i++) {
                donnees.push(tests[i]['id_service'])
            }

            axios.post('/api/users', {
                civilite: this.civilite,
                name: this.name,
                prenom: this.prenom,
                email: this.email,
                poste: this.poste,
                nom_role: this.nom_role,
                grade_id: this.grade_id,
                role_id: this.role_id,
                user_service: donnees,
                respo_service: donnee,
                droits: this.droits
            })
                .then(response => {
                    if (response.status === 200) {
                        toaster.success(`Collaborateur ajouté avec succès`, {
                            position: "top-right",
                        });
                        this.users = response.data
                        this.fetchData()
                    }

                })
                .catch(error => console.log(error));
        }
    },
    name: "AddUsers"
}
</script>

<style src="@vueform/multiselect/themes/default.css"></style>
