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

describe CanvasesController do

  # This should return the minimal set of attributes required to create a valid
  # Canvas. As you add validations to Canvas, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CanvasesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all canvases as @canvases" do
      canvas = Canvas.create! valid_attributes
      get :index, {}, valid_session
      assigns(:canvases).should eq([canvas])
    end
  end

  describe "GET show" do
    it "assigns the requested canvas as @canvas" do
      canvas = Canvas.create! valid_attributes
      get :show, {:id => canvas.to_param}, valid_session
      assigns(:canvas).should eq(canvas)
    end
  end

  describe "GET new" do
    it "assigns a new canvas as @canvas" do
      get :new, {}, valid_session
      assigns(:canvas).should be_a_new(Canvas)
    end
  end

  describe "GET edit" do
    it "assigns the requested canvas as @canvas" do
      canvas = Canvas.create! valid_attributes
      get :edit, {:id => canvas.to_param}, valid_session
      assigns(:canvas).should eq(canvas)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Canvas" do
        expect {
          post :create, {:canvas => valid_attributes}, valid_session
        }.to change(Canvas, :count).by(1)
      end

      it "assigns a newly created canvas as @canvas" do
        post :create, {:canvas => valid_attributes}, valid_session
        assigns(:canvas).should be_a(Canvas)
        assigns(:canvas).should be_persisted
      end

      it "redirects to the created canvas" do
        post :create, {:canvas => valid_attributes}, valid_session
        response.should redirect_to(Canvas.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved canvas as @canvas" do
        # Trigger the behavior that occurs when invalid params are submitted
        Canvas.any_instance.stub(:save).and_return(false)
        post :create, {:canvas => {}}, valid_session
        assigns(:canvas).should be_a_new(Canvas)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Canvas.any_instance.stub(:save).and_return(false)
        post :create, {:canvas => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested canvas" do
        canvas = Canvas.create! valid_attributes
        # Assuming there are no other canvases in the database, this
        # specifies that the Canvas created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Canvas.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => canvas.to_param, :canvas => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested canvas as @canvas" do
        canvas = Canvas.create! valid_attributes
        put :update, {:id => canvas.to_param, :canvas => valid_attributes}, valid_session
        assigns(:canvas).should eq(canvas)
      end

      it "redirects to the canvas" do
        canvas = Canvas.create! valid_attributes
        put :update, {:id => canvas.to_param, :canvas => valid_attributes}, valid_session
        response.should redirect_to(canvas)
      end
    end

    describe "with invalid params" do
      it "assigns the canvas as @canvas" do
        canvas = Canvas.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Canvas.any_instance.stub(:save).and_return(false)
        put :update, {:id => canvas.to_param, :canvas => {}}, valid_session
        assigns(:canvas).should eq(canvas)
      end

      it "re-renders the 'edit' template" do
        canvas = Canvas.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Canvas.any_instance.stub(:save).and_return(false)
        put :update, {:id => canvas.to_param, :canvas => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested canvas" do
      canvas = Canvas.create! valid_attributes
      expect {
        delete :destroy, {:id => canvas.to_param}, valid_session
      }.to change(Canvas, :count).by(-1)
    end

    it "redirects to the canvases list" do
      canvas = Canvas.create! valid_attributes
      delete :destroy, {:id => canvas.to_param}, valid_session
      response.should redirect_to(canvases_url)
    end
  end

end
