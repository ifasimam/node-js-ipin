/**
 * @author: muhammadreyhanabizar
 * Created on 14 March 2019 21:28
 */


const express = require('express');
const router = express.Router();
const authController = require('../controllers/authController');

router.get('/login', authController.login);
router.post('/login', authController.authenticate);

module.exports = router;
