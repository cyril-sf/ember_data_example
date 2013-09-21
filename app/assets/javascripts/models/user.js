App.User = DS.Model.extend({
  name: DS.attr('string'),
  messages: DS.hasMany('message', {polymorphic: true})
});
