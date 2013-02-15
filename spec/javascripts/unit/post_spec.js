//= require spec_helper
//= require models/post
//= require models/comment

describe("Models.App.Post", function() {
  beforeEach(function(done) {
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

  describe("comments", function() {
    it("can receive a comment", function() {
      var post = App.Post.createRecord( { title: 'WWHBD' } ),
          comment = App.Comment.createRecord( { body: "" } );

      post.get('comments').pushObject(comment);

      assert.equal(post.get('comments.length'), 1);
    });

    it("can load a preloaded comment", function() {
      defaultStore.load(App.Comment, { id: 1, body: "" } );
      defaultStore.load(App.Post, { id: 2, title: 'WWHBD', comment_ids: [1] } );
      var post = defaultStore.find(App.Post, 2);

      expect( post.get('comments.length') ).to.equal(1);
    });
  });
});
