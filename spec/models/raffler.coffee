describe "Raffler Model", ->
 
  it "should exist", ->
    expect(Raffler.Models).toBeDefined()

  describe "Attributes", ->
     
    bob = Raffler.Models.Entry
 
    it "should have default attributes", ->
      expect(name).toBeDefined()
      
describe "Raffler Collection", ->

  entries = Raffler.Collections
 
  it "should exist", ->
    expect(Raffler.Collections).toBeDefined()