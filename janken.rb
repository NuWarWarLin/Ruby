$hands = {
  1 => 'Rock',
  2 => 'Paper',
  3 => 'Scissors'
}
# get player's choice
class Player
  def get_gesture_name(hash, key)
    player_hand = hash[key]
    player_hand
  end
  def hand
    loop do
      puts 'Enter a number.'
      puts '1: Rock, 2: Paper, 3: Scissors'
      input_hand = gets.to_i
      if [1, 2, 3].include? input_hand
        $player_hand = get_gesture_name($hands, input_hand)
        break;
      else
        puts 'Enter the number again.'
      end
    end
  end
end
# get computer's choice
class Enemy
  def hand
    $enemy_hand = $hands[rand(1..3)]
  end
end
# Janken Decision
class Janken
  def pon(player_hand, enemy_hand)
    puts "You chose #{player_hand} and Computer chose  #{enemy_hand}."
  end
  def check_winner(player_hand, enemy_hand)
    if player_hand == 'Rock' && enemy_hand == 'Scissors'
      message = 'You Win'
    elsif player_hand == 'Paper' && enemy_hand == 'Rock'
      message = 'You Win'
    elsif player_hand == 'Scissors' && enemy_hand == 'Paper'
      message = 'You Win'
    elsif player_hand == enemy_hand
      message = 'Tie'
    else
      message = 'You Lose'
    end
    puts message
  end
end
loop do
  player = Player.new
  player.hand
  enemy = Enemy.new
  enemy.hand
  janken = Janken.new
  janken.pon($player_hand, $enemy_hand)
  janken.check_winner($player_hand, $enemy_hand)
  puts 'Wants to play again, press any key. If you want to quit, press y'
  $dicision = gets.chomp
  $decision
  break if $dicision == 'y'
end