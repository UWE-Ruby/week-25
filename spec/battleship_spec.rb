require_relative 'spec_helper'

describe Battleship do

  subject { Battleship.new }

  let(:expected_messages) do
%{frank's tugboat has been HIT!
Marking hit [1, 1]
Sorry brandon, you can't play. The game has already started
Sorry brandon, you can't place a ship. The game has already started
MISS!
frank's tugboat has been HIT!
Marking hit [2, 1]
YOU HAVE SUNK frank's tugboat!
PLAYER frank has been defeated!
GAME IS OVER! Start a new game!}.split("\n")
  end

  it "should generate the correct output" do

    # The following is a great way to test that the application is working as a
    # whole for this singular instance. It acts as a good canary test as you
    # would go about changing the existing code.

    # Reference: https://www.relishapp.com/rspec/rspec-mocks/v/2-10/docs/message-expectations
    expected_messages.each do |expected_message|
      subject.should_receive(:puts).with(expected_message).ordered
    end

    subject.add_player 'frank'
    subject.add_player 'ivan'
    subject.place_ship 'frank', :tugboat, :horizontal, 1, 1
    subject.place_ship 'ivan', :carrier, :vertical, 1, 1

    subject.shoot 'frank', 1, 1
    subject.add_player 'brandon'
    subject.place_ship 'brandon', :destroyer, :horizonal, 1, 3
    subject.shoot 'frank', 1, 1
    subject.shoot 'frank', 2, 1
    subject.shoot 'frank', 2, 1
  end

end