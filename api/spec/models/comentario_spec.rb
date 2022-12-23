require 'rails_helper'

RSpec.describe Comentario, type: :model do
  let( :comentario ){ Comentario.new }

  describe "Validar atributos" do

    it "Validar se a mensagem não está presente" do

      comentario.like       = 1
      comentario.deslike    = 0
  
      expect(comentario).not_to be_valid

    end

    it "Validar tamanho mínimo da mensagem" do

      comentario.mensagem   = "a"
      comentario.like       = 1
      comentario.deslike    = 0
  
      expect(comentario).not_to be_valid

    end
  
    it "Validar se a mensagem está presente" do

      comentario.mensagem   = "Teste"
      comentario.like       = 1
      comentario.deslike    = 0
  
      expect(comentario).to be_valid

    end

    it "Validar se o like não está presente" do

      comentario.mensagem   = "Teste"
      comentario.deslike    = 0
  
      expect(comentario).not_to be_valid

    end

    it "Validar se o like está presente" do

      comentario.mensagem   = "Teste"
      comentario.like       = 1
      comentario.deslike    = 0
  
      expect(comentario).to be_valid

    end

    it "Validar se o like não está presente" do

      comentario.mensagem   = "Teste"
      comentario.like       = 0
  
      expect(comentario).not_to be_valid

    end

    it "Validar se o like está presente" do

      comentario.mensagem   = "Teste"
      comentario.like       = 1
      comentario.deslike    = 0
  
      expect(comentario).to be_valid

    end

    it "Validar se o like não é númerico" do

      comentario.mensagem   = "Teste"
      comentario.like       = "a"
      comentario.deslike    = 0
  
      expect(comentario).not_to be_valid

    end

    it "Validar se o like é númerico" do

      comentario.mensagem   = "Teste"
      comentario.like       = 1
      comentario.deslike    = 0
  
      expect(comentario).to be_valid

    end

    it "Validar se o like é númerico, mas não inteiro" do

      comentario.mensagem   = "Teste"
      comentario.like       = 1.2
      comentario.deslike    = 0
  
      expect(comentario).not_to be_valid

    end

    it "Validar se o like é númerico e inteiro" do

      comentario.mensagem   = "Teste"
      comentario.like       = 1
      comentario.deslike    = 0
  
      expect(comentario).to be_valid

    end

    it "Validar se o deslike não é númerico" do

      comentario.mensagem   = "Teste"
      comentario.like       = 1
      comentario.deslike    = "a"
  
      expect(comentario).not_to be_valid

    end

    it "Validar se o deslike é númerico" do

      comentario.mensagem   = "Teste"
      comentario.like       = 1
      comentario.deslike    = 0
  
      expect(comentario).to be_valid

    end

    it "Validar se o deslike é númerico, mas não inteiro" do

      comentario.mensagem   = "Teste"
      comentario.like       = 1
      comentario.deslike    = 1.2
  
      expect(comentario).not_to be_valid

    end

    it "Validar se o deslike é númerico e inteiro" do

      comentario.mensagem   = "Teste"
      comentario.like       = 1
      comentario.deslike    = 0
  
      expect(comentario).to be_valid

    end

  end

end
