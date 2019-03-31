/**
 * Route Index
 *
 * @author: muhammadreyhanabizar
 * Created on 14 March 2019 20:23
 */

const express = require('express');
const router = express.Router();
const roleController = require('../controllers/roleController');

router.get('/list', roleController.list);

module.exports = router;
