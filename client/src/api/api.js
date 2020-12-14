import axios from 'axios'

const base = 'https://gces-individual-api.herokuapp.com/'

const API = axios.create({
  baseURL: base
})

export default API
