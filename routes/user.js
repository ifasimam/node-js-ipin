/**
 * Route Index
 *
 * @author: muhammadreyhanabizar
 * Created on 14 March 2019 20:23
 */

const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController');

router.get('/list', userController.list);
router.get('/detailuser', userController.detailUser);
router.get('/list-datatable', userController.listDatatable);
router.post('/insert', userController.insert);

module.exports = router;
