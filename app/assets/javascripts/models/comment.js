//= require ./message

App.Comment = App.Message.extend({
  body: DS.attr('string'),
  message: DS.belongsTo('message', {
    polymorphic: true,
    inverse: 'comments'
  })
});
