/**
 * @author: muhammadreyhanabizar
 * Created on 15 March 2019 10:27
 */

const express = require('express');
const router = express.Router();
const dashboardController = require('../controllers/dashboardController');

router.get('/', dashboardController.index);

module.exports = router;