if (module.hot) module.hot.accept();

import './stylesheets/tenon.scss';
require('tenon');

$(() => window.Tenon.init());
