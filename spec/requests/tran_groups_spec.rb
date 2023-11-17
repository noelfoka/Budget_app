require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/tran_groups", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # TranGroup. As you add validations to TranGroup, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      TranGroup.create! valid_attributes
      get tran_groups_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      tran_group = TranGroup.create! valid_attributes
      get tran_group_url(tran_group)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_tran_group_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      tran_group = TranGroup.create! valid_attributes
      get edit_tran_group_url(tran_group)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new TranGroup" do
        expect {
          post tran_groups_url, params: { tran_group: valid_attributes }
        }.to change(TranGroup, :count).by(1)
      end

      it "redirects to the created tran_group" do
        post tran_groups_url, params: { tran_group: valid_attributes }
        expect(response).to redirect_to(tran_group_url(TranGroup.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new TranGroup" do
        expect {
          post tran_groups_url, params: { tran_group: invalid_attributes }
        }.to change(TranGroup, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post tran_groups_url, params: { tran_group: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested tran_group" do
        tran_group = TranGroup.create! valid_attributes
        patch tran_group_url(tran_group), params: { tran_group: new_attributes }
        tran_group.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the tran_group" do
        tran_group = TranGroup.create! valid_attributes
        patch tran_group_url(tran_group), params: { tran_group: new_attributes }
        tran_group.reload
        expect(response).to redirect_to(tran_group_url(tran_group))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        tran_group = TranGroup.create! valid_attributes
        patch tran_group_url(tran_group), params: { tran_group: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested tran_group" do
      tran_group = TranGroup.create! valid_attributes
      expect {
        delete tran_group_url(tran_group)
      }.to change(TranGroup, :count).by(-1)
    end

    it "redirects to the tran_groups list" do
      tran_group = TranGroup.create! valid_attributes
      delete tran_group_url(tran_group)
      expect(response).to redirect_to(tran_groups_url)
    end
  end
end
