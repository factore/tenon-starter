if (module.hot) module.hot.accept();

import './stylesheets/tenon.scss';
import Tenon from 'tenon-base';
window.Tenon = Tenon;

$(() => window.Tenon.init());
