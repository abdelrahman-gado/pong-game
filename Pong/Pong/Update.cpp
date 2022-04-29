#include "Engine.h"

void Engine::update()
{
    m_Ball.update();
    player1_Bat.update();
    player2_Bat.update();
    
    // when the bat of the right player (player 1) miss hit the ball
    if (m_Ball.getPosition().left < 0)
    {
        m_Ball.hitBottom();
        
        // plays the sound of the mis
        sound.setBuffer(miss_buffer);
        sound.play();
        
        player1_lives--;
        
        if (player1_lives < 0)
        {
            player1_lives = 3;
            player2_lives = 3;
        }
        
        
    }
    
    
    // when the bat of the left player (player 2) miss hit the ball
    if (m_Ball.getPosition().left - 10 > resolution.x)
    {
        m_Ball.hitBottom();
        
        // play the sound of the miss
        sound.setBuffer(miss_buffer);
        sound.play();
        
        player2_lives--;
        
        if (player2_lives < 0)
        {
            player2_lives = 3;
            player1_lives = 3;
        }
    }
    
    
    // if the ball hit one of the sides of the game (top side or bottom side) --- > rebound the ball
    if ((m_Ball.getPosition().top < 0) || (m_Ball.getPosition().top - 10 > resolution.y))
    {
        m_Ball.reboundFromSides();
    }
    
    // if the ball hit the bat of player 1 (the player on the right),
        //it will rebound from bat and the sound will play
    if (m_Ball.getPosition().intersects(player1_Bat.getPosition()))
    {
        m_Ball.reboundFromBat();
        sound.setBuffer(hit_buffer);
        sound.play();
    }
    
    // if the ball hit the bat of player 2 (the player on the left),
        // it will rebound from bat and the sound will play
    if (m_Ball.getPosition().intersects(player2_Bat.getPosition()))
    {
        m_Ball.reboundFromBat();
        sound.setBuffer(hit_buffer);
        sound.play();
    }
    
    // if the bat of player 1 (player on the right) tries to go out of the screen,
        // keep it at the screen (to the negative values of the y)
    if (player1_Bat.getPosition().top <= 0)
    {
        player1_Bat.keepBatUp();
    }
    
    // if the bat of player 1 (player on the right) tries to go out of the screen,
    // keep it at the screen (to the max resolution of screen)
    if ((player1_Bat.getPosition().top + player1_Bat.getPosition().height) >= resolution.y)
    {
        player1_Bat.keepBatDown(resolution.y);
    }
    
    // if the bat of player 2 (player on the right) tries to go out of the screen,
        // keep it at the screen (to the negative values of the y)
     if (player2_Bat.getPosition().top <= 0)
    {
        player2_Bat.keepBatUp();
    }
    
    // if the bat of player 2 (player on the left) tries to go out of the screen,
    // keep it at the screen (to the max resolution of screen)
    if ((player2_Bat.getPosition().top + player2_Bat.getPosition().height) >= resolution.y)
    {
        player2_Bat.keepBatDown(resolution.y);
    }
    
    // update the text on the screen that show the players lives
    std::string text = std::to_string(player1_lives) + "   " + std::to_string(player2_lives);
    m_LivesText.setString(text);
    
    
    
    
}