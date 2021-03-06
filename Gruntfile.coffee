module.exports = (grunt) ->
    grunt.initConfig
        clean:
            build: ['test/*.coffee']
            test: ['test/*.js', 'test/out/*.ini']

        coffee:
            options:
                bare: true

            build:
                expand: true
                cwd: 'src'
                src: ['**/*.coffee']
                dest: 'lib'
                ext: '.js'

            test:
                expand: true
                cwd: 'test'
                src: ['**/*.coffee']
                dest: 'test'
                ext: '.js'

        jasmine_node:
            match: '.',
            matchall: false,
            extensions: 'js',
            specNameMatcher: 'spec',
            projectRoot: ".",
            requirejs: false,
            forceExit: true,
            jUnit:
                report: false,
                savePath : "./build/reports/jasmine/",
                useDotNotation: true,
                consolidate: true

    grunt.loadNpmTasks('grunt-contrib-coffee')
    grunt.loadNpmTasks('grunt-contrib-clean')
    grunt.loadNpmTasks('grunt-jasmine-node')

    grunt.registerTask('prepare-test', () ->
#        fs.mkdirSync 'test/out'
    )

    grunt.registerTask('default', ['clean:build', 'coffee:build'])
    grunt.registerTask('test', ['clean:test', 'coffee:build', 'coffee:test', 'prepare-test', 'jasmine_node'])
