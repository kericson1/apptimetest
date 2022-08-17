<template>
    <div id="detail_task" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered"
             role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Détails de la
                        tâche {{ tachestoedit.nom_tache }}</h5>
                    <button type="button" class="close"
                            data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="chat-window">
                        <div class="chat-box">
                            <div class="chats">
                                <div class="chat-footer">
                                    <span class="followers-title">Membres</span>
                                    <a class="avatar" href="#" data-toggle="tooltip" title="Jeffery Lalor">
                                        <img alt="" src="assets/img/profiles/avatar-16.jpg">
                                    </a>
                                    <a class="avatar" href="#" data-toggle="tooltip" title="Richard Miles">
                                        <img alt="" src="assets/img/profiles/avatar-09.jpg">
                                    </a>
                                    <a class="avatar" href="#" data-toggle="tooltip" title="John Smith">
                                        <img alt="" src="assets/img/profiles/avatar-10.jpg">
                                    </a>
                                    <a class="avatar" href="#" data-toggle="tooltip" title="Mike Litorus">
                                        <img alt="" src="assets/img/profiles/avatar-05.jpg">
                                    </a>
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
import moment from 'moment';
import axios from "axios";

export default {
    props: ['tachestoedit'],
    created(){
        this.moment = moment;
        // var myId = tachestoedit.id_tache;
        // axios
        //     .get('/api/taches/membres/' + myId)
        //     .then((response) => (console.log(response.data)))
        //     // .then((response) => (this.equipes = response.data))
        //     .catch((error) => console.log(error));
    },
    name: "DetailTask"
}
</script>

<style scoped>

</style>
