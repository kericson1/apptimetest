<template>
    <div id="edit_user" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Modifier utilisateur</h5>
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Nom <span
                                        class="text-danger">*</span></label>
                                    <input class="form-control"
                                           name="name"
                                           id="name" type="text" v-model="tasktoedit.name">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Prénom<span
                                        class="text-danger">*</span></label>
                                    <input class="form-control"
                                           name="prenom"
                                           id="prenom" type="text" v-model="tasktoedit.prenom">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Email <span
                                        class="text-danger">*</span></label>
                                    <input class="form-control"
                                           name="email"
                                           id="email" type="email" v-model="tasktoedit.email">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Fonction <span
                                        class="text-danger">*</span></label>
                                    <input class="form-control"
                                           name="poste"
                                           id="poste" type="text" v-model="tasktoedit.poste">
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
                        </div>
                        <div class="submit-section">
                            <button class="btn btn-primary submit-btn btn_edit" @click="saveUser" data-dismiss="modal">
                                Modifier
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import Multiselect from "@vueform/multiselect";
export default {
    props: ['tasktoedit'],
     components: {
        Multiselect,
    },
     created: function () {
        var that = this
        axios.all([
            axios.get('api/grades'),
        ])
            .then(
                axios.spread(
                    function (grades) {
                        that.grades = grades.data;
                    }
                ))

    },
    methods: {
        saveUser() {
            axios.patch('/api/users/' + this.tasktoedit.id, {
                name: this.tasktoedit.name,
                prenom: this.tasktoedit.prenom,
                poste: this.tasktoedit.poste,
                email: this.tasktoedit.email,
                id_grade: this.grade_id
            })
                .then(response =>  this.$emit('task-updated', response))
                .catch(error => console.log(error));
        }
    },
    name: "EditUsers"
}
</script>

<style scoped>

</style>
