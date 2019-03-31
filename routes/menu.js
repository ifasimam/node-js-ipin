/**
 * Route Index
 *
 * @author: muhammadreyhanabizar
 * Created on 14 March 2019 20:23
 */

const express = require('express');
const router = express.Router();
const menuController = require('../controllers/menuController');

router.get('/list', menuController.list);

module.exports = router;
