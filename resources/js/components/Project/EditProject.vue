<template>
    <div id="edit_project" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Modification de projet</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Nom du projet</label>
                                    <input class="form-control" type="text" v-model="projectoedit.nom_projet">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Date de début</label>
                                    <input type="date" class="form-control"/>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Date de fin</label>
                                    <input type="date" class="form-control"/>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Modifier chef de projet</label>
                                    <input class="form-control" type="text">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Chef de projet</label>
                                    <div class="project-members">
                                        <a href="#" data-toggle="tooltip" title="Jeffery Lalor" class="avatar">
                                            <img src="assets/img/profiles/avatar-16.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Modifier équipe</label>
                                    <input class="form-control" type="text">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Membre de l'équipe</label>
                                    <div class="project-members">
                                        <a href="#" data-toggle="tooltip" title="John Doe" class="avatar">
                                            <img src="assets/img/profiles/avatar-16.jpg" alt="">
                                        </a>
                                        <a href="#" data-toggle="tooltip" title="Richard Miles" class="avatar">
                                            <img src="assets/img/profiles/avatar-09.jpg" alt="">
                                        </a>
                                        <a href="#" data-toggle="tooltip" title="John Smith" class="avatar">
                                            <img src="assets/img/profiles/avatar-10.jpg" alt="">
                                        </a>
                                        <a href="#" data-toggle="tooltip" title="Mike Litorus" class="avatar">
                                            <img src="assets/img/profiles/avatar-05.jpg" alt="">
                                        </a>
                                        <span class="all-team">+2</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Modifier sponsor</label>
                                    <input class="form-control" type="text">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Sponsor</label>
                                    <div class="project-members">
                                        <a href="#" data-toggle="tooltip" title="Jeffery Lalor" class="avatar">
                                            <img src="assets/img/profiles/avatar-16.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea rows="4" class="form-control"
                                      placeholder="Enter your message here">{{ projectoedit.nom_projet }}</textarea>
                        </div>
                        <div class="form-group">
                            <label>Fichier</label>
                            <input class="form-control" type="file">
                        </div>
                        <div class="submit-section">
                            <button class="btn btn-primary submit-btn">Modifier</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    props: ['projectoedit'],
    name: "EditProject"
}
</script>

<style scoped>

</style>
