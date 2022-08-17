import {ref} from "vue";
import axios from "axios";
import router from "../router/dash/index";

export default function useUser(){

    const errors = ref('');
    const users = ref([]);
    const user = ref([]);

    const getUsers = async () => {
        let response = await axios.get('/api/users');
        users.value = response.data.data;
    };

    // const getUser = async (id) => {
    //     let response = await axios.get('/api/users/edit/' + id);
    //     user.value = response.data.data;
    // };

    const createUser = async (data) => {
         try {
             await axios.post('/api/users', data);
             // await router.push({name: 'users.index'});
         } catch (error) {
             const createUsersErrors = error.response.data.errors;

             for (const key in createUsersErrors )
             {
                 errors.value += createUsersErrors[key][0] + ' ';
             }
         }
    };

    const updateUser = async (tasktoedit) => {
         try {
             await axios.put('/api/users'+ tasktoedit.id);
             await router.push({name: 'ListUsers'});
         } catch (error) {
             const createUsersErrors = error.response.data.errors;

             for (const key in createUsersErrors )
             {
                 errors.value += createUsersErrors[key][0] + ' ';
             }
         }
    };


    return {
        users,
        errors,
        user,
        getUsers,
        createUser,
        updateUser
    }
}
