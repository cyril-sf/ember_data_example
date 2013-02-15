//= require ./message

App.Comment = App.Message.extend({
  body: DS.attr('string'),
  message: DS.belongsTo('App.Message', {
    polymorphic: true,
    inverse: 'comments'
  })
});
