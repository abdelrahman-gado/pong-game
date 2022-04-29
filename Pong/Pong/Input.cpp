#include "Engine.h"

void Engine::input()
{
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::Escape))
    {
        m_Window.close();
    }
    
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up))
    {
        player2_Bat.moveUp();
    }
    
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down))
    {
        player2_Bat.moveDown();
    }
    
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::W))
    {
        player1_Bat.moveUp();
    }
    
    if(sf::Keyboard::isKeyPressed(sf::Keyboard::S))
    {
        player1_Bat.moveDown();
    }
    
}