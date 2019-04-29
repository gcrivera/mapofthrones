/**
 * API Routes Module
 */

const Router = require('koa-router')
const database = require('./database')
const cache = require('./cache')
const joi = require('joi')
const validate = require('koa-joi-validate')
const router = new Router()

// Check cache before continuing to any endpoint handlers
router.use(cache.checkResponseCache)

// Insert response into cache once handlers have finished
router.use(cache.addResponseToCache)

// Check that id param is valid number
const idValidator = validate({
  params: { id: joi.number().min(0).max(1000).required() }
})

// Check that query param is valid location type
const typeValidator = validate({
  params: { type: joi.string().valid(['castle', 'city', 'town', 'ruin', 'landmark', 'region']).required() }
})

router.get('/episodes', async ctx => {
  const result = await database.getEpisodes()
  ctx.body = result || ctx.throw(404)
})

router.get('/episodes/:season/:num', async ctx => {
  const seasonNum = ctx.params.season
  const episodeNum = ctx.params.num
  if (seasonNum == 7 && episodeNum > 7) {
    ctx.throw(404);
  }
  const result = await database.getEpisode(seasonNum, episodeNum)
  ctx.body = result || ctx.throw(404)
})

router.get('/locations/:location/:season/:episode', async ctx => {
  const location = ctx.params.location
  const seasonNum = ctx.params.season
  const episodeNum = ctx.params.episode
  if (seasonNum == 7 && episodeNum > 7) {
    ctx.throw(404);
  }
  const result = await database.getLocation(location, seasonNum, episodeNum)
  ctx.body = result || ctx.throw(404)
})

router.get('/characters/:character/:season/:episode', async ctx => {
  const character = ctx.params.character
  const seasonNum = ctx.params.season
  const episodeNum = ctx.params.episode
  if (seasonNum == 7 && episodeNum > 7) {
    ctx.throw(404);
  }
  const result = await database.getCharacterPage(character, seasonNum, episodeNum)
  ctx.body = result || ctx.throw(404)
})

module.exports = router
