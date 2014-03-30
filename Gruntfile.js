module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    sass: {
      dist: {
        files: [{
          expand: true,
          cwd: 'assets',
          src: ['*.sass'],
          dest: 'build/assets',
          ext: '.css'
        }]
      }
    },

    coffee: {
      options: {
        bare: true
      },
      glob_to_multiple: {
        expand: true,
        cwd: '.',
        src: ['**/*.coffee'],
        dest: 'build',
        ext: '.js'
      }
    },

    watch: {
      all: {
        files: ['**/*.coffee', '**/*.sass'],
        tasks: ['default']
      }
    },

  });

  // Load the tasks
  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-watch');

  // Default task(s).
  grunt.registerTask('default', ['coffee', 'sass']);

};