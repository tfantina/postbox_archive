class Api::LettersController < ApplicationController
  def index
    render json: {
             letters: [{ name: 'some-thing', guid: '0415674d-a0e8-47-blah' }]
           }.to_json
  end
end
