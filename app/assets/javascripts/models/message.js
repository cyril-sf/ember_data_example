App.Message = DS.Model.extend({
  user: DS.belongsTo('user'),
  comments: DS.hasMany('comment', {
    inverse: 'message'
  })
});
