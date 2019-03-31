/**
 * @author: muhammadreyhanabizar
 * Created on 15 March 2019 10:28
 */

const index = (req, res, next) => {
    res.render('dashboard/index');
};

module.exports = {
    index
};