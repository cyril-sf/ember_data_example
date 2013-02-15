//= require spec_helper
//= require models/post
//= require models/comment

describe("Models.App.Comment", function() {
  beforeEach(function(done) {
    DS.RESTAdapter.configure('App.Post', {
      alias: 'post'
    });
    adapter = DS.RESTAdapter.create();

    defaultStore = DS.Store.create({
      adapter: adapter
    });

    done();
  });
  afterEach(function() {
    adapter.destroy();
    defaultStore.destroy();
  });

  describe("message", function() {
    it("can receive a post", function() {
      var post = App.Post.createRecord( { title: 'WWHBD' } ),
          comment = App.Comment.createRecord( { body: "" } );

      comment.set('message', post);
      expect( post.get('comments.length') ).to.equal(1);
    });

    it("can be preloaded", function() {
      defaultStore.load(App.Post, { id: 2, title: 'WWHBD' } );
      defaultStore.load(App.Comment, {
        id: 1,
        body: "",
        message_id: 2,
        message_type: 'post'
      });
      var comment = defaultStore.find(App.Comment, 1),
          post = defaultStore.find(App.Post, 2);

      expect( comment.get('message') ).to.equal( post );
    });

    it("can be removed", function() {
      var post = App.Post.createRecord( { title: 'WWHBD' } ),
          comment = App.Comment.createRecord( { body: "" } );

      post.get('comments').pushObject(comment);
      expect( post.get('comments.length') ).to.equal(1);
      expect( comment.get('message') ).to.equal( post );

      comment.set('message', null);
      assert.equal(post.get('comments.length'), 0);
    });
  });
});
