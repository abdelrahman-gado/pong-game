#include "Engine.h"

void Engine::draw()
{
    // clear the screen -- make the background blue
    m_Window.clear(sf::Color (24, 111, 209)); 
    
    m_Window.draw(m_Ball.getShape());
    m_Window.draw(player1_Bat.getShape());
    m_Window.draw(player2_Bat.getShape());
    m_Window.draw(m_LivesText);
    
    m_Window.display();
    
}