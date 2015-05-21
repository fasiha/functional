require('shelljs/global')

ls('*.m').forEach(function(f) {
    cat(f).replace(/function [^\n]*(\n%[^\n]*)*/, function(sub){
        return sub+'\nimport functional.*; % Added by node for package support.\r';
    }).to(f);
});
