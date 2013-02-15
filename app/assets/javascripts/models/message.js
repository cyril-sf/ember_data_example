App.Message = DS.Model.extend({
  user: DS.belongsTo('App.User'),
  comments: DS.hasMany('App.Comment', {
    inverse: 'message'
  })
});
