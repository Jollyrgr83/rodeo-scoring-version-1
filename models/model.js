var orm = require("../config/orm.js");

var model = {
    getAllFromOneTable: (tableName, cb) => {
        orm.selectAllFromOneTable(tableName, res => cb(res));
    },
    getAllCompetitorsByYear: (year, cb) => {
        orm.selectAllCompetitorsByYear(year, res => cb(res));
    },
    getOneCompetitorByID: (competitor_id, cb) => {
        orm.selectOneCompetitorByID(competitor_id, res => cb(res));
    },
    getTeamBooleanByTierID: (tier_id, cb) => {
        orm.selectTeamBooleanByTierID(tier_id, res => cb(res));
    },
    getAllTiersByYearID: (year_id, cb) => {
        orm.selectAllTiersByYearID(year_id, res => cb(res));
    },
    getCompetitorScores: (compID, yearID, cb) => {
        orm.selectScoresByCompetitor(compID, yearID, res => cb(res));
    },
    getScoreReconciliation: (year_id, cb) => {
        orm.selectAllScoreReconciliation(year_id, res => cb(res));
    },
    addCategory: (body, cb) => {
        orm.insertOneCategory(body, res => cb(res));
    },
    addEvent: (body, cb) => {
        orm.insertOneEvent(body, res => cb(res));
    },
    addTier: (body, cb) => {
        orm.insertOneTier(body, res => cb(res));
    },
    addCompetitor: (body, cb) => {
        orm.insertOneCompetitor(body, res => cb(res));
    },
    addScore: (body, cb) => {
        orm.insertOneScore(body, res => cb(res));
    },
    updateCategory: (body, cb) => {
        orm.updateOneCategory(body, res => cb(res));
    },
    updateCompetitor: (body, cb) => {
        orm.updateOneCompetitor(body, res => cb(res));
    },
    updateCompetitorScores: (arr, cb) => {
        orm.updateScoresByCompetitor(arr, res => cb(res));
    },
    deleteCategory: (body, cb) => {
        orm.deleteOneCategory(body, res => cb(res));
    },
    deleteEvent: (event_id, tier_id, year_id, cb) => {
        orm.deleteOneEvent(event_id, tier_id, year_id, res => cb(res));
    },
    deleteTier: (body, cb) => {
        orm.deleteOneTier(body, res => cb(res));
    },
    deleteCompetitor: (body, cb) => {
        orm.deleteOneCompetitor(body, res => cb(res));
    }
};

module.exports = model;