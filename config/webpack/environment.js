const { environment } = require('@rails/webpacker')
const vue =  require('./loaders/vue')

const fileLoader = environment.loaders.get('file')

environment.loaders.append('vue', vue)

module.exports = environment
