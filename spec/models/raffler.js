// Generated by CoffeeScript 1.6.3
(function() {
  describe("Raffler Model", function() {
    it("should exist", function() {
      return expect(Raffler.Models).toBeDefined();
    });
    return describe("Attributes", function() {
      var bob;
      bob = Raffler.Models.Entry;
      return it("should have default attributes", function() {
        return expect(name).toBeDefined();
      });
    });
  });

  describe("Raffler Collection", function() {
    var entries;
    entries = Raffler.Collections;
    return it("should exist", function() {
      return expect(Raffler.Collections).toBeDefined();
    });
  });

}).call(this);
