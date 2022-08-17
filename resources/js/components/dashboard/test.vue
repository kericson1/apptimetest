<template>
  <div class="main-wrapper">
    <beautiful-chat
      :participants="participants"
      :titleImageUrl="titleImageUrl"
      :onMessageWasSent="onMessageWasSent"
      :messageList="messageList"
      :newMessagesCount="newMessagesCount"
      :isOpen="isChatOpen"
      :close="closeChat"
      :icons="icons"
      :open="openChat"
      :showEmoji="true"
      :showFile="true"
      :showEdition="true"
      :showDeletion="true"
      :deletionConfirmation="true"
      :showTypingIndicator="showTypingIndicator"
      :showLauncher="true"
      :showCloseButton="true"
      :colors="colors"
      :alwaysScrollToBottom="alwaysScrollToBottom"
      :disableUserListToggle="false"
      :messageStyling="messageStyling"
      @onType="handleOnType"
      @edit="editMessage"
    />
  </div>
</template>

<script>
export default {
  name: "Statistiques",
  //   components:  { Sidebar, Header, Pie },
  data() {
    return {
      participants: [
        {
          id: 'user1',
          name: 'Matteo',
          imageUrl: 'https://avatars3.githubusercontent.com/u/1915989?s=230&v=4'
        },
        {
          id: 'user2',
          name: 'Support',
          imageUrl: 'https://avatars3.githubusercontent.com/u/37018832?s=200&v=4'
        }
      ], // la liste de tous les participants à la conversation. `name` est le nom de l'utilisateur, `id` est utilisé pour établir l'auteur d'un message, `imageUrl` est censé être l'avatar de l'utilisateur.
      titleImageUrl: 'https://a.slack-edge.com/66f9/img/avatars-teams/ava_0001-34.png',
      messageList: [
          { type: 'text', author: `me`, data: { text: `Say yes!` } },
          { type: 'text', author: `user1`, data: { text: `Bonjour Papa!` } },
          { type: 'text', author: `user2`, data: { text: `No.` } }
      ], // la liste des messages à afficher, peut être paginée et ajustée dynamiquement
      newMessagesCount: 0,
      isChatOpen: false, // pour déterminer si la fenêtre de chat doit être ouverte ou fermée
      showTypingIndicator: '', // lorsqu'il est défini sur une valeur correspondant au participant.id, il affiche l'indicateur de saisie pour l'utilisateur spécifique.
      colors: {
        header: {
          bg: '#4e8cff',
          text: '#ffffff'
        },
        launcher: {
          bg: '#4e8cff'
        },
        messageList: {
          bg: '#ffffff'
        },
        sentMessage: {
          bg: '#4e8cff',
          text: '#ffffff'
        },
        receivedMessage: {
          bg: '#eaeaea',
          text: '#222222'
        },
        userInput: {
          bg: '#f4f7f9',
          text: '#565867'
        }
      }, // spécifie le schéma de couleurs pour le composant
      alwaysScrollToBottom: false, // lorsqu'elle est définie sur true, fait toujours défiler le chat vers le bas lorsque de nouveaux événements surviennent (nouveau message, utilisateur commence à taper...)
      messageStyling: true // enables *bold* /emph/ _underline_ and such (more info at github.com/mattezza/msgdown)
    }
  },
  methods: {
    sendMessage (text) {
      if (text.length > 0) {
        this.newMessagesCount = this.isChatOpen ? this.newMessagesCount : this.newMessagesCount + 1
        this.onMessageWasSent({ author: 'support', type: 'text', data: { text } })
      }
    },
    onMessageWasSent (message) {
      // appelé lorsque l'utilisateur envoie un message
      this.messageList = [ ...this.messageList, message ]
    },
    openChat () {
      // appelé lorsque l'utilisateur clique sur le bouton fab pour ouvrir le chat
      this.isChatOpen = true
      this.newMessagesCount = 0
    },
    closeChat () {
      //  appelé lorsque l'utilisateur clique sur le bouton pour fermer le chat
      this.isChatOpen = false
    },
    handleScrollToTop () {
      // appelé lorsque l'utilisateur fait défiler la liste de messages vers le haut
      // tirer parti de la pagination pour charger une autre page de messages
    },
    handleOnType () {
      console.log('Emit typing event')
    },
    editMessage(message){
      const m = this.messageList.find(m=>m.id === message.id);
      m.isEdited = true;
      m.data.text = message.data.text;
    }
  }
};
</script>

<style scoped>
</style>
