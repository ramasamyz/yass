require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MonitorshipsController do

  # This should return the minimal set of attributes required to create a valid
  # Monitorship. As you add validations to Monitorship, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MonitorshipsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all monitorships as @monitorships" do
      monitorship = Monitorship.create! valid_attributes
      get :index, {}, valid_session
      assigns(:monitorships).should eq([monitorship])
    end
  end

  describe "GET show" do
    it "assigns the requested monitorship as @monitorship" do
      monitorship = Monitorship.create! valid_attributes
      get :show, {:id => monitorship.to_param}, valid_session
      assigns(:monitorship).should eq(monitorship)
    end
  end

  describe "GET new" do
    it "assigns a new monitorship as @monitorship" do
      get :new, {}, valid_session
      assigns(:monitorship).should be_a_new(Monitorship)
    end
  end

  describe "GET edit" do
    it "assigns the requested monitorship as @monitorship" do
      monitorship = Monitorship.create! valid_attributes
      get :edit, {:id => monitorship.to_param}, valid_session
      assigns(:monitorship).should eq(monitorship)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Monitorship" do
        expect {
          post :create, {:monitorship => valid_attributes}, valid_session
        }.to change(Monitorship, :count).by(1)
      end

      it "assigns a newly created monitorship as @monitorship" do
        post :create, {:monitorship => valid_attributes}, valid_session
        assigns(:monitorship).should be_a(Monitorship)
        assigns(:monitorship).should be_persisted
      end

      it "redirects to the created monitorship" do
        post :create, {:monitorship => valid_attributes}, valid_session
        response.should redirect_to(Monitorship.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved monitorship as @monitorship" do
        # Trigger the behavior that occurs when invalid params are submitted
        Monitorship.any_instance.stub(:save).and_return(false)
        post :create, {:monitorship => {}}, valid_session
        assigns(:monitorship).should be_a_new(Monitorship)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Monitorship.any_instance.stub(:save).and_return(false)
        post :create, {:monitorship => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested monitorship" do
        monitorship = Monitorship.create! valid_attributes
        # Assuming there are no other monitorships in the database, this
        # specifies that the Monitorship created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Monitorship.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => monitorship.to_param, :monitorship => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested monitorship as @monitorship" do
        monitorship = Monitorship.create! valid_attributes
        put :update, {:id => monitorship.to_param, :monitorship => valid_attributes}, valid_session
        assigns(:monitorship).should eq(monitorship)
      end

      it "redirects to the monitorship" do
        monitorship = Monitorship.create! valid_attributes
        put :update, {:id => monitorship.to_param, :monitorship => valid_attributes}, valid_session
        response.should redirect_to(monitorship)
      end
    end

    describe "with invalid params" do
      it "assigns the monitorship as @monitorship" do
        monitorship = Monitorship.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Monitorship.any_instance.stub(:save).and_return(false)
        put :update, {:id => monitorship.to_param, :monitorship => {}}, valid_session
        assigns(:monitorship).should eq(monitorship)
      end

      it "re-renders the 'edit' template" do
        monitorship = Monitorship.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Monitorship.any_instance.stub(:save).and_return(false)
        put :update, {:id => monitorship.to_param, :monitorship => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested monitorship" do
      monitorship = Monitorship.create! valid_attributes
      expect {
        delete :destroy, {:id => monitorship.to_param}, valid_session
      }.to change(Monitorship, :count).by(-1)
    end

    it "redirects to the monitorships list" do
      monitorship = Monitorship.create! valid_attributes
      delete :destroy, {:id => monitorship.to_param}, valid_session
      response.should redirect_to(monitorships_url)
    end
  end

end
