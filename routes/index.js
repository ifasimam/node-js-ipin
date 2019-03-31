/**
 * Route Index
 *
 * @author: muhammadreyhanabizar
 * Created on 14 March 2019 20:23
 */

const express = require('express');
const router = express.Router();
const indexController = require('../controllers/indexController');

router.get('/', indexController.index);

module.exports = router;
